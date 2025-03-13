=== "`main.tsx`"

    ```tsx
    const queryClient = new QueryClient()

    function App() {
    return (
        <WagmiProvider config={config}>
        <QueryClientProvider client={queryClient}>
            <CAProvider>
            <App />
            </CAProvider>
        </QueryClientProvider>
        </WagmiProvider>
    )
    }
    ```

=== "App.tsx"

    ```tsx

    // Use Arcana hooks with the same name instead of Wagmi hooks
    // import { useSendTransaction, 
    //          useSendTransactionAsync, 
    //          useWriteContract, 
    //          useWriteContractAsync 
    // } from 'wagmi'
    import { useSendTransaction, 
             useSendTransactionAsync,
             useWriteContract,
             useWriteContractAsync,
             useUnifiedBalance,
             useBalanceModal
    } from '@arcana/ca-wagmi'
    import { parseEther } from 'viem'

    function App() {
    const { sendTransaction } = useSendTransaction();

    return (
        <button
        onClick={() =>
            sendTransaction({
            to: '0xd2135CfB216b74109775236E36d4b433F1DF507B',
            value: parseEther('0.01'),
            })
        }
        >
        Send transaction
        </button>

    )}
    ```