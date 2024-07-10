=== "Wagmi 2.0"

    ```js hl_lines="4-5 7-8"
    // Pass wagmi client configured with ArcanaRainbowKitConnector to the RainbowKit Context Provider
    export default function App({ Component, pageProps }) {
      return (
        <WagmiConfig config={wagmiEntity}>
          <RainbowKitProvider chains={chains}>
            <Component {...pageProps} />
          </RainbowKitProvider>
        </WagmiConfig>
      );
    }
    ```
    
=== "Wagmi 1.0"

    ```js hl_lines="4-5 7-8"
    // Pass wagmi client configured with ArcanaRainbowKitConnector to the RainbowKit Context Provider
    export default function App({ Component, pageProps }) {
      return (
        <WagmiConfig client={wagmiEntity}>
          <RainbowKitProvider chains={chains}>
            <Component {...pageProps} />
          </RainbowKitProvider>
        </WagmiConfig>
      );
    }
    ```