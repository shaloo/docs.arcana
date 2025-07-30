# Overview

Arcana wallet is an in-app, non-custodial wallet embedded in Web3 apps that use Arcana Auth SDK. No browser extension is needed. Authenticated users get instant, secure access to the wallet for blockchain transactions. Keys are generated locally via the asynchronous distributed key generation system, ensuring full control over key privacy without complex cryptography.

## Wallet Features

- Check account balance
- Sign (Approve/Reject) blockchain transactions
- Speed up transactions
- Add, modify, switch blockchain networks
- Deploy smart contracts
- Manage token assets (native and custom)
  - Check account balance
  - List token assets
  - Add custom tokens (ERC-20)
  - Send and receive tokens
  - Buy/Sell crypto
- Manage NFTs
  - List NFT assets
  - View NFT details
  - Send NFTs (ERC-721, ERC-1155)
  - Add NFTs
  - Modify (edit, delete) NFT metadata
- View account transaction activity (NFT, Token send transactions, contracts deployment, etc.)
- View pending transactions in the activity tab
- Use the standard Ethereum 1193 provider interface to call [JSON/RPC functions](https://ethereum.github.io/execution-apis/api-documentation/) and supported Web3 wallet operations for the network
- Export private key
- Enable [enhanced security via MFA](../../user-guides/mfa/mfa-ug/)
- Logout

**Not Supported**

The Arcana wallet does not allow an app user to import any blockchain account created using a third-party wallet provider.

## Wallet Customization

Arcana wallet offers great flexibility and customization options as per the app requirements.

- **UX:** Developers can manage the users' blockchain signing experience by [customizing branding, theme](../../setup/config-dApp-with-db/#settings-overview), [wallet positioning](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) in the app, selecting the default active chain, [modifying pre-configured networks](../../user-guides/wallet-ui/use-wallet-ui/#addselect-a-network), and using [visibility](walletvisibility/) options.
- **Custom Wallet UI:** Replace the built-in, default wallet UI with a [custom wallet UI](../custom-wallet-ui/).

## Supported Chains

Arcana wallet comes pre-configured with a subset of the [supported blockchain networks](../../web3-stack/chains/). This pre-configured list can be updated with other supported networks [programmatically](../../auth/web3-ops/evm/#add-network) or via the [wallet UI](../../user-guides/wallet-ui/use-wallet-ui/).

[Learn more...](../../user-guides/wallet-ui/)
