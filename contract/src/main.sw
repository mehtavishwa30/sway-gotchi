contract;

dep data_structures;
dep errors;
dep events;
dep interface;
dep utils;

storage {
    pet: StorageMap<Identity, Swaygotchi> = StorageMap {},
}

impl sway_gotchi for Contract {
    #[storage(read, write)]
    fn new_swaygotchi(age: u64) {
        // get the message sender
        let sender = msg_sender().unwrap();

        // make sure the player doesn't already exist
        require(storage.pet.get(sender).is_none(), " You've already chosen a pet");

        // create a new player struct
        let new_swaygotchi = Swaygotchi {
            age: 0,
        };

        // add the pet to storage
        storage.pet.insert(sender, new_swaygotchi);
        // each pet gets some coins to start
        mint_to(1_000_000_000, sender);
    }

    #[storage(read, write)]
    fn hatch(age: u64) {
        let sender = msg_sender().unwrap();
        let mut egg = storage.pet.get(sender).unwrap();
        let current_time = timestamp();
        let birth_time = food.time_born.unwrap();

        let hours = 0;
        let hatch_time = birth_time + hours;

        require(current_time >= hatch_time, "Egg is not ready to hatch");

        // increase age by 1yr
        let new_age = pet.age + 1;

        // overwrite storage with the updated pet age
        storage.pet.insert(msg_sender().unwrap(), egg);
    }
}
