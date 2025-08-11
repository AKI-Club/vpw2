#ifndef PLAYER_INPUT_H
#define PLAYER_INPUT_H

// Forward declaration of Player struct
typedef struct Player Player;

// Function prototypes
void func_8001A2B0(int arg);
void process_player_input(Player* player);
void get_input_state(Player* player);
void update_player_state(Player* player);
void calculate_new_position(Player* player);
void apply_physics(Player* player);
int get_current_velocity(Player* player);
void update_position(Player* player, int velocity);
int fetch_velocity_data(Player* player);
int calculate_gravity(Player* player);
int get_player_mass(Player* player);

#endif // PLAYER_INPUT_H
