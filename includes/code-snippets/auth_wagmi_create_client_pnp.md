=== "Wagmi 2.0"

    ```js hl_lines="8 9 11 13-17 19 27"
    //
    // For apps using Wagmi versions v2.a.b and auth-wagmi v3.x.y
    //
 
    import { http, createConfig } from 'wagmi'
    import { mainnet, sepolia } from 'wagmi/chains'
    import { coinbaseWallet, injected, walletConnect } from 'wagmi/connectors'
    import { AuthProvider } from '@arcana/auth'
    import { ArcanaConnector } from "@arcana/auth-wagmi"

    let auth: AuthProvider | null;

    if (!auth) {
      auth = new AuthProvider(
        "Your-app-Client-ID"
      );
    }

    const connector = new ArcanaConnector({ auth });

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
    ...
    ```

=== "Wagmi 1.0"

    ```js hl_lines="10 11 13 15-19 27 28 31 42"
    //   
    // For apps using Wagmi versions v1.x.y and auth-wagmi v2.a.b
    //

    import { configureChains, createConfig, WagmiConfig } from "wagmi";
    import { publicProvider } from "wagmi/providers/public";
    import { polygon, polygonAmoy } from "wagmi/chains";
    import { useAccount, useConnect, useDisconnect, useBalance } from 'wagmi'
    import "../styles/globals.css";
    import { AuthProvider } from '@arcana/auth'
    import { ArcanaConnector } from "@arcana/auth-wagmi"

    let auth: AuthProvider | null;

    if (!auth) {
      auth = new AuthProvider(
        "Your-app-Client-ID"
      );
    }

    const { chains, provider, webSocketProvider } = configureChains(
      [mainnet, polygon, polygonAmoy],
      [publicProvider()],
      { targetQuorum: 1 }
    );

    export const connector = (chains: Chain[]) => {
      return new ArcanaConnector({
        chains,
        options: {
          auth: auth,
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