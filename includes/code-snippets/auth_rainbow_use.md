=== "`auth-wagmi` version < v2.0.0"

    ```js title="pages/App.js" hl_lines="4-5 7-8"
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
=== "`auth-wagmi` version > v2.0.0"

    ```js title="pages/App.js" hl_lines="4-5 7-8"
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