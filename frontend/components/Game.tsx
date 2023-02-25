import { useState, useEffect } from "react";
import NewSwaygotchi from "./NewSwaygotchi";
import { ContractAbi } from "../contracts";
import { AddressInput, IdentityInput, PlayerOutput } from "../contracts/ContractAbi";
import { Spinner, BoxCentered } from "@fuel-ui/react";

interface GameProps {
    contract: ContractAbi | null;
}

export default function Game({ contract }: GameProps) {

    useEffect(() => {
        async function getPlayer() {

        }

        getPlayer();
    }, [contract, updateNum])

return (
    <div>
        {status === 'loading' && <BoxCentered><Spinner /></BoxCentered>}
        {status === 'error' && <div>Something went wrong, try again</div>}
        {status === 'none' &&
            <div>
                {player === null ? <NewPlayer updateNum={updateNum} setUpdateNum={setUpdateNum} contract={contract} />
                    :
                    <Player updateNum={updateNum} setUpdateNum={setUpdateNum} contract={contract} player={player} />
                }
            </div>}
    </div>
)
}