import { useState, useEffect } from "react";
import { ContractAbi } from "../contracts";
import { AddressInput, IdentityInput } from "../contracts/ContractAbi";
import { Button, Spinner, BoxCentered } from "@fuel-ui/react";
import { Dispatch, SetStateAction } from "react";

interface HatchProps {
    contract: ContractAbi | null;
    setUpdateNum: Dispatch<SetStateAction<number>>;
    updateNum: number;
}

export default function Hatch({ contract, setUpdateNum, updateNum }: HatchProps) {

    const [status, setStatus] = useState<'error' | 'loading' | 'none'>('none');
    const [canHatch, setCanHatch] = useState<boolean>();

    useEffect(() => {
        async function getCanHatch() {
        }

        getCanHatch();
    }, [contract, updateNum])

    async function handleHatch() {
        if (contract !== null) {
            try {
                setStatus('loading')
                await contract.functions.hatch().call();
                setUpdateNum(updateNum + 1);
                setStatus('none')
            } catch (err) {
                console.log("Error:", err)
                setStatus('error')
            }
        } else {
            console.log("ERROR: contract missing");
            setStatus('error')
        }
    }

    return (
        <>
            {canHatch &&
                <>
                    {status === 'loading' && <BoxCentered><Spinner /></BoxCentered>}
                    {status === 'error' && <div>Something went wrong, try again</div>}
                    {status === 'none' && <Button onPress={handleLe}>Level Up</Button>}
                </>
            }
        </>
    )
}