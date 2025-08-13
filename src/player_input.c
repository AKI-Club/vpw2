#include "player_input.h"

// You will need to include the Player struct definition here or include its header
// For example:
// #include "player.h"

typedef struct Player {
    int some_flag;       // offset 0
    int position;        // offset 4
    int velocity;        // offset 8
    int mass;            // offset 12
    // add other fields as needed
} Player;

// External functions assumed to be defined elsewhere in the project
int read_controller(Player* player);
void update_input_buffer(int controller_data);
int compute_gravity_force(int mass);
void apply_velocity(Player* player, int gravity);

// === Your converted functions ===

void func_8001A2B0(int arg) {
    process_player_input((Player*)arg);
}

void process_player_input(Player* player) {
    get_input_state(player);

    if (player->some_flag != 0) {
        update_player_state(player);
    }
}

void get_input_state(Player* player) {
    int controller_data = read_controller(player);
    update_input_buffer(controller_data);
}

void update_player_state(Player* player) {
    calculate_new_position(player);
    apply_physics(player);
}

void calculate_new_position(Player* player) {
    int velocity = get_current_velocity(player);
    update_position(player, velocity);
}

void apply_physics(Player* player) {
    int gravity = calculate_gravity(player);
    apply_velocity(player, gravity);
}

int get_current_velocity(Player* player) {
    return fetch_velocity_data(player);
}

void update_position(Player* player, int velocity) {
    player->position += velocity;
}

int fetch_velocity_data(Player* player) {
    return player->velocity;
}

int calculate_gravity(Player* player) {
    int mass = get_player_mass(player);
    return compute_gravity_force(mass);
}

int get_player_mass(Player* player) {
    return player->mass;
}
