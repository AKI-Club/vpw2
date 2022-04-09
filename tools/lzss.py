# begin Zoinkity's code from generic.py; class originally named "Asmic"
class LZSS:
    @staticmethod
    def encode(data, ring=4096, threshold=2, idx=4078, fill=b' ', byteorder='little'):
        """
        A fairly straight port of Haruhiko Okumura's LZSS compressor from C.
        Nothing really clever, and not very pythonic.  (I'm not that good at this honestly.)
        idx is typically ring - limit, though some variations start at the beginning instead.
        Limit is computed as 16bits - #bits to express ring, plus the threshold.  For that reason, rings should always be powers of two.
        A fill value of 0 is adequate for 'binary' files.  LZSS was originally developed for text, based on the LZ76 string complexity algorithm.
        """
        output = bytearray()
        if not data: return output

        from itertools import repeat
        from array import array

        # Limit is max encodable length + threshold.
        limit = 1<<(16 - int.bit_length(ring-1))
        limit+= threshold

        # Initialize the ring buffer with a common fill value.
        if isinstance(fill, (bytes, bytearray)):
            fill = fill[0]
        rng = bytearray(repeat(fill, ring + limit))
        matchlen, matchpos, nil = 0, 0, ring
        # Initialize the trees.
        lson= array('i', repeat(0, ring + 1))
        rson= array('i', repeat(0, ring + 1))
        rson.extend(repeat(nil, 256))
        dad = array('i', repeat(nil, ring + 1))

        def InsertNode(v):
            """Inserts string into trees and returns
            longest match position and length as a tuple.
            If match length equals the limit, it replaces the old node.
            By embedding this function it can use the trees and ring globally."""
            cmp, ml, mp = 1, 0, matchpos
            key = rng[v:]
            pos = ring + 1 + key[0]
            rson[v] = nil
            lson[v] = nil
            while True:
                if cmp>=0:
                    if rson[pos] != nil:
                        pos = rson[pos]
                    else:
                        rson[pos] = v
                        dad[v] = pos
                        return (ml, mp)
                else:
                    if lson[pos] != nil:
                        pos = lson[pos]
                    else:
                        lson[pos] = v
                        dad[v] = pos
                        return (ml, mp)
                for i in range(1, limit+1):
                    cmp = key[i] - rng[pos + i]
                    if cmp:
                        break
                if i > ml:
                    mp, ml = pos, i
                    if ml >= limit: break
            dad[v] = dad[pos]
            lson[v]=lson[pos]
            rson[v]=rson[pos]
            dad[lson[pos]] = v
            dad[rson[pos]] = v
            if rson[dad[pos]] == pos:
                rson[dad[pos]] = v
            else:
                lson[dad[pos]] = v
            dad[pos] = nil
            return (ml, mp)

        def DeleteNode(pos):
            if dad[pos] == nil: return
            # If it's in the tree, delete it.
            q = lson[pos]
            if lson[pos] == nil:
                q = rson[pos]
            elif rson[pos] != nil:
                if rson[q] != nil:
                    while True:
                        q = rson[q]
                        if rson[q] == nil: break
                    rson[dad[q]] = lson[q]
                    dad[lson[q]] = dad[q]
                    lson[q] = lson[pos]
                    dad[lson[pos]] = q
                rson[q] = rson[pos]
                dad[rson[pos]] = q
            dad[q] = dad[pos]
            if rson[dad[pos]] == pos:
                rson[dad[pos]] = q
            else:
                lson[dad[pos]] = q
            dad[pos] = nil

        # Unset flags on copies; send when less than 256.
        mask = 0xFF00
        codebuf = bytearray()
        s = 0
        # Read limit bytes into the ring at idx.
        p = min(limit, len(data)-1)
        rng[idx:idx+p] = data[0:p]
        cur = p
        for i in range(1, limit+1):
            matchlen, matchpos = InsertNode(idx - i)
        matchlen, matchpos = InsertNode(idx)
        # Now you're initialized, so do the rest of the file.
        while True:
            mask>>=1
            matchlen = min(matchlen, p)
            if matchlen <= threshold:
                matchlen = 1
                codebuf.append(rng[idx])
            else:
                mask ^= 128
                ml = (matchlen - threshold - 1)
                maskr = 8 - int.bit_length(ring - 1)
                maskl = 8 - int.bit_length(limit - threshold - 1)
                a = ml&0xFF
                b = matchpos&0xFF
                if maskl>0:
                    a|= (matchpos>>maskl) & (0xFF00>>maskl)
                elif maskr>0:
                    b|= (matchpos>>maskr) & (0xFF00>>maskr)
                if byteorder == 'little':
                    codebuf.extend((b,a))
                else:
                    codebuf.extend((a,b))
            # Flush when the mask is full.
            if mask < 256:
                output.append(mask)
                output.extend(codebuf)
                codebuf = bytearray()
                mask = 0xFF00
            prevmatchlen = matchlen
            j = min(prevmatchlen, len(data)-cur)
            for i in range(j):
                DeleteNode(s)
                rng[s] = data[cur]
                if s < (limit - 1):
                    rng[s + ring] = data[cur]
                cur+=1
                # Correct the ring position via modulo ring
                s+=1
                s&= ring-1
                idx+=1
                idx&= ring-1
                matchlen, matchpos = InsertNode(idx)
            # Flush the rest of the buffer if necessary.
            for i in range(j, prevmatchlen):
                DeleteNode(s)
                s+=1
                s&= ring-1
                idx+=1
                idx&= ring-1
                p-=1
                if p:
                    matchlen, matchpos = InsertNode(idx)
            # Loop until source empty.
            if not p:
                break
        # Flush remaining output; mask the lead bit off the mask.
        if codebuf:
            ## mask &= ~(1<<mask.bit_length()-1)   # bottom to top bitorder.
            l = mask.bit_length() - 8
            mask &= 0xFF
            output.append(mask>>l)
            output.extend(codebuf)
        return output

    @staticmethod
    def decode(data, dec_s=None):
    	# default filesize is 3-bytes, skipping first which is compression indicator
    	# 0x0	1	00 if compressed
    	# 0x1	3	filesize, big-endian
        if not dec_s:
            dec_s = int.from_bytes(data[1:4], byteorder='big')
            d = iter(data[4:])
        else:
            d = iter(data)

        output = bytearray()
        cmd = 0
        while len(output)<dec_s:
            cmd>>=1
            if cmd<2:
                cmd = next(d)|0x100
            if cmd&1:
                output.append(next(d))
            else:
                p = next(d)
                l = next(d)
                p|= ((l<<4)&0xF00)
                l&=0xF
                p+=0x12
                p&=0xFFF
                # funky correction here
                c= len(output)&0xFFF
                p-=c
                if p>=0:
                    p-=0x1000
                p+=len(output)
                # loopus
                for i in range(l+3):
                    v = 0 if p<0 else output[p]
                    output.append(v)
                    p+=1
        return bytes(output)

# end Zoinkity's code from generic.py

def main():
    import argparse

    parser = argparse.ArgumentParser(description="Encode and Decode LZSS data from AKI Corporation's N64 wrestling games.")
    commandGroup = parser.add_mutually_exclusive_group()
    commandGroup.add_argument("-d", "--decode", nargs='?', type=argparse.FileType('rb'), help="decode a file")
    commandGroup.add_argument("-e", "--encode", nargs='?', type=argparse.FileType('rb'), help="encode a file")
    parser.add_argument('outfile', nargs='?', type=str, help="Output filename")
    args = parser.parse_args()

    if(args.decode):
        decoded = LZSS.decode(args.decode.read())
        out = open(args.outfile, "wb")
        out.write(decoded)
        out.close()
        print("Wrote decoded file to "+args.outfile)

    elif(args.encode):
        data = args.encode.read()
        org = len(data).to_bytes(4, 'big')
        encoded = b''.join((org, LZSS.encode(data, fill=0)))
        out = open(args.outfile, "wb")
        out.write(encoded)
        out.close()
        print("Wrote encoded file to "+args.outfile)
    else:
        parser.print_help()

if __name__ == '__main__':
     main()
