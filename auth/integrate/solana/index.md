# Integrate Solana App

Integrate 'Solana' apps with [Arcana Auth SDK](../../../concepts/authsdk/) and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-Solana/) the 'Solana' app and configure Arcana Auth SDK SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

## Steps

Select your 'Solana' app type and follow the integration instructions. Solana apps will require to initialize and use **Solana Provider** in addition to the `AuthProvider`.

## 1. Install

Depending upon the [app type](../../../web3-stack/apps/), you may need to [install one or more Arcana Auth SDK SDK flavors](../../sdk-installation/) and the integration steps may vary.

### 2. Integrate App

Select your 'Solana' app type and follow the integration instructions.

[HTML/CSS/JS App](../vanilla-html-css-js/) [React/Next.js App](../react-nextjs/) [Wagmi App](../wagmi/) [WalletConnect App](../walletconnect/) [RainbowKit App](../rainbow/) [Web3-React App](../web3-react/) [Unity App](../unity/)

[Flutter Apps](../../mobile/flutter-get-started/) [React-Native Apps](../../mobile/react-native-get-started/)

[Custom Auth](../../custom-auth/)

## 3. Initialize Solana Provider

Solana apps can use the `auth.provider` to make standard JSON RPC calls in the context of an authenticated user.

```
const provider = auth.provider;

```

Use the Solana provider for issuing Solana Web3 wallet operations in the context of an authenticated user.

```
const solanaP = auth.solana;

```

## What's Next?

Add code to [onboard users](../../onboard/solana/). Use `AuthProvider`, the standard EIP-1193 Web3 provider to call support JSON/RPC functions and Web3 wallet operations. [Learn more...](../../web3-ops/solana/)

## See also

**'Solana'** integration example: See `sample-auth-solana` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [Solana FAQ](../../../faq/faq-solana/)

[Try Demo App](https://demo.arcana.network)
