=== "Wagmi 2.0.0"

    ```js  hl_lines="4 5 10-12 16 19 21"
    import { http, createConfig } from 'wagmi'
    import { mainnet, sepolia } from 'wagmi/chains'
    import { coinbaseWallet, injected, walletConnect } from 'wagmi/connectors'
    import { AuthProvider } from '@arcana/auth';
    import { ArcanaConnector } from "@arcana/auth-wagmi"

    let auth: AuthProvider | null;

    if (!auth) {
      auth = new AuthProvider(
        "xar_dev_c2fb7be163754e57d384e24257ea2c8d2a5dd31a"
      );
    }

    export const connector = () => {
      return new ArcanaConnector({auth,})
    };

    export const config = createConfig({
      chains: [mainnet, sepolia],
      connectors: [
        injected(),
        coinbaseWallet({ appName: 'Create Wagmi' }),
        walletConnect({ projectId: import.meta.env.VITE_WC_PROJECT_ID }),
        connector(),
      ],
      transports: {
        [mainnet.id]: http(),
        [sepolia.id]: http(),
      },
    })

    declare module 'wagmi' {
      interface Register {
        config: typeof config
      }
    }
    ```
=== "Wagmi 1.0.0"

    ```js hl_lines="6 8 19-24 34"
    // Note:  
    // This sample code is for 
    // wagmi versions 1.x.y and auth-wagmi 2.a.b
    import { configureChains, createConfig, WagmiConfig } from "wagmi";
    import { publicProvider } from "wagmi/providers/public";
    import { ArcanaConnector } from "@arcana/auth-wagmi";
    import { polygon, polygonAmoy } from "wagmi/chains";
    import { newAuthProvider } from "./utils/newArcanaAuth";
    import { useAccount, useConnect, useDisconnect, useBalance } from 'wagmi'
    import "../styles/globals.css";

    const { chains, provider, webSocketProvider } = configureChains(
      [mainnet, polygon, polygonAmoy],
      [publicProvider()],
      { targetQuorum: 1 }
    );

    export const connector = (chains: Chain[]) => {
      return new ArcanaConnector({
        chains,
        options: {
          auth: newAuthProvider(),
          login: {
            provider: "google",
          },
        },
      });
    };

    const { chains, publicClient } = configureChains(
      [polygon, polygonAmoy],
      [publicProvider()]
    );

    export const wagmiEntity = createConfig({
      autoConnect: true,
      connectors: [connector(chains)],
      publicClient,
    });
    ...
    ```