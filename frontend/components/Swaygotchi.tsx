import { useState } from 'react';
import { ContractAbi } from "../contracts";
import { PlayerOutput } from "../contracts/ContractAbi";
import Hatch from "./Hatch";
import { Flex, Box } from "@fuel-ui/react";
import { Dispatch, SetStateAction } from "react";
import { Agent } from 'http';

interface SwaygotchiProps {
    contract: ContractAbi | null;
    player: PlayerOutput
    setUpdateNum: Dispatch<SetStateAction<number>>;
    updateNum: number;
}

export default function Swaygotchi({ contract, player, setUpdateNum, updateNum }: SwaygotchiProps) {

    let valSold = parseFloat(player.total_value_sold.format().toLocaleString());

    return (
        <div className="game-container">
            <div className="player-container">
                <img src="pixel-bunny.png" className="bunny" alt="bunny" />
            </div>
            <div className="-container">
                <Hatch updateNum={updateNum} setUpdateNum={setUpdateNum} contract={contract}/>
            </div>
        </div>
    )
}