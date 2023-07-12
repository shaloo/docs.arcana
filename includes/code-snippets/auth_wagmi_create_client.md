```js title="app.tsx" hl_lines="5-6 11-15 17-26 36-41"
import { WagmiConfig, configureChains, createClient, Chain } from "wagmi";
import { goerli, mainnet, polygon, polygonMumbai } from "wagmi/chains";
import { InjectedConnector } from "wagmi/connectors/injected";
import { publicProvider } from "wagmi/providers/public";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { newAuthProvider } from "../utils/newArcanaAuth";

import "../styles/globals.css";
import type { AppProps } from "next/app";

const { chains, provider, webSocketProvider } = configureChains(
  [mainnet, goerli, polygon, polygonMumbai],
  [publicProvider()],
  { targetQuorum: 1 }
);

const connectors = [
  new ArcanaConnector({
    chains,
    options: {
      auth: newAuthProvider(),
      login: {
        provider: "google",
      },
    },
  }),
  new InjectedConnector({
    chains,
    options: {
      name: "Browser Wallet",
      shimDisconnect: true,
    },
  }),
];

const wagmiClient = createClient({
  autoConnect: true,
  connectors,
  provider,
  webSocketProvider,
});
...
```
