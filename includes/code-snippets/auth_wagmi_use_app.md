=== "Wagmi 2.0"

    ```js hl_lines="21-25"
    //
    // For apps using Wagmi versions v2.a.b and auth-wagmi v3.x.y
    //
    import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
    import { Buffer } from 'buffer'
    import React from 'react'
    import ReactDOM from 'react-dom/client'
    import { WagmiProvider } from 'wagmi'

    import App from './App.tsx'
    import { config } from './wagmi.ts'

    import './index.css'

    globalThis.Buffer = Buffer

    const queryClient = new QueryClient()

    ReactDOM.createRoot(document.getElementById('root')!).render(
      <React.StrictMode>
        <WagmiProvider config={config}>
          <QueryClientProvider client={queryClient}>
            <App />
          </QueryClientProvider>
        </WagmiProvider>
      </React.StrictMode>,
    )
    ```

=== "Wagmi 1.0"

    ```js hl_lines="6 8"
    //
    // For apps using Wagmi versions v1.a.b and auth-wagmi v2.x.y
    //
    function App({ Component, pageProps }: AppProps) {
      return (
        <WagmiConfig config={wagmiEntity}>
          <Component {...pageProps} />
        </WagmiConfig>
      );
    }
    ```