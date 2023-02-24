library data_structures;

use core::ops::Eq;

pub enum State {
    Playing: (),
    Ended: (),
}

impl Eq for State {
    fn eq(self, other: Self) -> bool {
        match (self, other) {
            (State::Playing, State::Playing) => true,
            (State::Ended, State::Ended) => true,
            _ => false,
        }
    }
}

pub struct Swaygotchi {
    // name: str[10],
    // color: Colors,
    age: u64,
    time_born: u64,
    // gender: Gender,
    // character: Characters,
    // stage: Stages,
}

impl Swaygotchi {
    pub fn grow_up(ref mut self) {
        self.age +=1
    }
}

pub enum Colors {
    blue: (),
    green: (),
    pink: (),
}

pub enum Gender {
    female: (),
    male: (),
    nb: (),
}

pub enum Characters {
    milktchi: (),
    wawatchi: (),
    weeptchi: (),
    awamokotchi: (),
    paintotchi: (),
    ninjanyatchi: (),
    charatchi: (),
    murachakitchi: (),
    sebiretchi: (),
    himetchi: (),
    orenetchi: (),
    shimagurutchi: (),
    neliatchi: (),
    chamametchi: (),
    lovelitchi: (),
    kuromametchi: (),
    gozarutchi: (),
    coffretchi: (),
    kikitchi: (),
    violetchi: (),
    mimitchi: (),
    ginjirotchi: (),
    mametchi: (),
    kuchipatchi: (),
    memetchi: (),
    momotchi: (),
}

pub enum Stages {
    egg: (),
    baby: (),
    child: (),
    teen: (),
    adult: (),
    professional: (),
}

pub struct Stats {
    happiness: u64,
    hunger: u64,
    intelligence: u64,
    energy: u64,
    health: u64,
    cleanliness: u64,
}

pub struct Room {
    room_type: Rooms,
    items: Items,
    furniture: Furniture,
    decor: Decor,
}

pub enum Rooms {
    nursery: (),
    playground: (),
    classroom: (),
    kitchen: (),
    bedroom: (),
    studio: (),
}

pub struct Food {
    food_type: FoodTypes,
    food_option: FoodOptions,
}

pub enum FoodTypes {
    milk: (),
    cookies: (),
    fruits: (),
    veggies: (),
}

pub enum FoodOptions {
    fridge: (),
    restaurant: (),
    cook: (),
}

pub enum Items {
    clock: (),
    plushie: (),
    pillow: (),
}

pub enum Accessories {
    curtains: (),
    mirror: (),
}

pub enum Furniture {
    chair: (),
    bed: (),
    nightstand: (),
    closet: (),
}

pub enum Decor {
    painting: (),
    vase: (),
    figurine: (),
}