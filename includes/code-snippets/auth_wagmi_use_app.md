=== "`auth-wagmi` version < v2.0.0"

    ```js title="app.tsx" hl_lines="3 5"

    function App({ Component, pageProps }: AppProps) {
      return (
        <WagmiConfig client={wagmiEntity}>
          <Component {...pageProps} />
        </WagmiConfig>
      );
    }
    ```

=== "`auth-wagmi` version > v2.0.0"

    ```js title="app.tsx" hl_lines="3 5"

    function App({ Component, pageProps }: AppProps) {
      return (
        <WagmiConfig config={wagmiEntity}>
          <Component {...pageProps} />
        </WagmiConfig>
      );
    }
    ```