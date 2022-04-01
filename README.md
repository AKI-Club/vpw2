# Virtual Pro-Wrestling 2
This is a decompilation project for AKI Corporation's *Virtual Pro-Wrestling 2*
(バーチャル・プロレス2 〜王道継承〜), a Nintendo 64 wrestling game.

Like most other N64 decomp projects, this is very much a work in progress.

Also like other N64 decomp projects, you will need a ROM of the game to extract
the necessary assets, as they are not included in this repository.

## Table of Contents ##

 1. [Introduction](#introduction)
 2. [Requirements](#requirements)
 3. [Setup](#setup)
 4. [Building](#building)
 5. [Further Steps](#further-steps)
 6. Some other stuff

## Introduction ##

Some crazy person spends over a decade or two of his life trying to hack a video game.

This repository has two main purposes:
 1. Document game information for any interested hackers.
 2. Serve as a base for future hacks requiring non-trivial changes.

## Requirements ##

- a Linux environment (native, virtual machine, WSL2 on Windows 10)
- GNU `make` (and probably the other stuff from `build-essential` if your distro has that)
- `binutils-mips-linux-gnu`
- an **unmodified** Virtual Pro-Wrestling 2 ROM in **Z64 format**, legally obtained

While [`qemu-irix`](https://github.com/n64decomp/qemu-irix/releases) was previously
listed here, it is currently not used. It may or may not be used in the future.

This has only been tested on Linux using a VM, and WSL2 on Windows 10.

An unmodified VPW2 ROM in Z64 format should have the SHA-1 hash `82dd25a044689eab57ab362fe10c0da6388c217a`.

If you need help verifying your ROM, use the [VPW2 ROM ID](https://github.com/AKI-Club/vpw2romid)
program.

## Setup ##

Place an unmodified copy of your existing ROM inside the root of this repository
with the name `baserom.z64`.

Extract the binaries from the game ROM using the following command:
```./extract_baserom.sh```

By default, it will use `baserom.z64` as the ROM to extract from, but you can
also pass it a filename:
```./extract_baserom.sh ./vpw2.z64```

## Building ##

Run `make` in the main directory.

## Further Steps ##

todo: the next steps (a.k.a. ~~draw~~ disassemble the rest of the fucking ~~owl~~ game)

## Some other stuff ##

also todo: things I'm forgetting
