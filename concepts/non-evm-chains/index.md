# Non-EVM Chains

Arcana Auth SDK supports EVM-compatible and non-EVM chains. Pre-configured blockchain networks are available. Users log into Web3 apps and can immediately use the Arcana wallet to sign transactions on the active chain.

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

## Web3 Wallet Operations

The [Web3 wallet operations and JSON/RPC functions](../../auth/web3-ops/evm/) supported by the `AuthProvider` obtained via the Arcana Auth SDK may vary for non-EVM chains.

### Solana

- `signMessage`
- `signTransaction`
- `signAllTransactions`
- `signAndSendTransaction`

### MultiversX

- `mvx_signMessage`
- `mvx_signTransaction`
- `mvx_signTransactions`
- `getAccounts`
- `getPublicKey`

### Near

- `getAccounts`
- `near_signMessage`
- `near_signAndSendTransaction`

Adding Non-EVM chains

When a non-EVM chain is selected for an app, developers and users **cannot add** other chain types (EVM or different non-EVM chains) in Arcana wallet. This is due to the lack of a uniform standard for wallet addresses across non-EVM chains, which means switching chain types may alter the wallet address.

## Keyspace User Experience

Developers can customize wallet experiences by selecting the keyspace type in Arcana Developer Dashboard.

With app-specific keys, users get unique keys for each app, no matter the chain type.

With global keys, users have the same wallet address across apps on EVM-compatible chains.

For non-EVM chains, global keys result in different wallet addresses due to different cryptographic algorithms. EVM chains use the secp256k1 curve, Solana uses the [ED 25519 curve](https://en.wikipedia.org/wiki/EdDSA#Ed25519) , and MultiversX uses BLS multi-signatures. Therefore, users will see different wallet addresses if an app uses an EVM chain and another uses a non-EVM chain or different non-EVM chains.
