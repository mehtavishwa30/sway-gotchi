import { useState, useEffect, useMemo } from 'react';
import { useIsConnected } from "./hooks/useIsConnected";
import { useFuel } from "./hooks/useFuel";
import { WalletLocked } from "fuels";
import { ContractAbi__factory } from "./contracts"
import logo from './logo.svg';
import './App.css';
import { Heading, Button, Link } from "@fuel-ui/react";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
