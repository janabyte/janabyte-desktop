#include "config.h"

int main() {
    if (!config_load_configurations("config/club_config.cfg")) {
        fprintf(stderr, "Failed to load configurations.\n");
        return 1;
    }

    return 0;
}

