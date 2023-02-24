library interface;

dep data_structures;

use data_structures::*;

abi sway_gotchi {
    // choose your pet, initialise the swaygotchi egg
    #[storage(read, write)]
    fn new_swaygotchi(age: u64);

    // hatch the swaygotchi egg
    #[storage(read, write)]
    fn hatch(age: u64);

    // check status to see how the swaygotchi is doing
    /* #[storage(read, write)]
    fn check_status();

    // feed the swaygotchi when it's hungry [fridge, restaurant, cook]
    #[storage(read, write)]
    fn feed(hunger: u64, food_type: FoodTypes, food_option: FoodOptions) -> u64;

    // give the swagotchi a bath when it poops 💩
    #[storage(read, write)]
    fn bathe(cleanliness: u64) -> u64;

    // play with the swaygotchi to boost its happiness
    #[storage(read, write)]
    fn play(happiness: u64) -> u64;

    // discipline the swaygotchi to make it more receptive
    #[storage(read, write)]
    fn discipline(intelligence: u64) -> u64;

    // medicate the swaygotchi to protect it against viruses
    #[storage(read ,write)]
    fn medicate(health: u64) -> u64;

    // turn off the lights to put the swaygotchi to sleep
    #[storage(read, write)]
    fn sleep(light: bool, energy: u64) -> bool;

    // age the swaygotchi [egg > baby > child > teen > adult > professional]
    #[storage(read, write)]
    fn grow_up();

    // decorate the swaygotchi's room
    #[storage(read, write)]
    fn decorate(); */
}