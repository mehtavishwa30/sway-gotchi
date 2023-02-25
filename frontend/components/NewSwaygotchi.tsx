import { useState } from "react";
import { ContractAbi } from "../contracts";
import { Button, Spinner, BoxCentered } from "@fuel-ui/react";
import { Dispatch, SetStateAction } from "react";

interface NewSwaygotchiProps {
    contract: ContractAbi | null;
    setUpdateNum: Dispatch<SetStateAction<number>>;
    updateNum: number;
}

export default function NewSwaygotchi({ contract, setUpdateNum, updateNum }: NewSwaygotchiProps){
    const [status, setStatus] = useState<'error' | 'loading' | 'none'>('none');
    async function handleNewSwaygotchi(){
        if (contract !== null) {
            try {
                setStatus('loading')
                await contract.functions.new_swaygotchi()
                .txParams({ variableOutputs: 1 })
                .call();
                setStatus('none')
                setUpdateNum(updateNum + 1)
            } catch(err){
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
    {status === 'loading' && <BoxCentered><Spinner /></BoxCentered>}
    {status === 'error' && <div>Something went wrong, try again</div>}
    {status === 'none' &&
        <Button onPress={handleNewSwaygotchi}>Make A New Swaygotchi</Button>
    }
    </>
)
}