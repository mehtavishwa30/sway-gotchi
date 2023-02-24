library errors;

pub enum GameStateError {
    GameHasEnded: (),
    GameHasNotEnded: (),
}

pub enum InvalidError {
    NotEnoughCoins: u64,
    NotEnoughFood: u64,
    IncorrectAssetId: ContractId,
}