# Integrate MultiversX App

Integrate 'MultiversX' apps with [Arcana Auth SDK](../../../concepts/authsdk/) and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-mvx/) the 'MultiversX' app and configure the Arcana Auth SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

MultiversX Shard Selection

MultiversX uses [adaptive state sharding](https://docs.multiversx.com/technology/adaptive-state-sharding/) for horizontal scaling. Shards allow it to process far more transactions through parallelization, improving transaction throughput and efficiency.

Choose your shard once when registering a MultiversX app on the Arcana Developer Dashboard. It cannot be changed later.

By default, Arcana uses 'Shard 0' to deploy all app contracts and allocate wallet addresses for users. The benefit is that when addresses from the same shard interact with contracts on the same shard, latencies are much lower than in cross-shard interactions.

## 1. Install

Depending upon the [app type](../../../web3-stack/apps/), you may need to [install one or more Arcana Auth SDK flavors](../../sdk-installation/) and the integration steps may vary.

## 2. Integrate App

Select your 'MultiversX' app type and follow the integration instructions.

[HTML/CSS/JS App](../vanilla-html-css-js/) [React/Next.js App](../react-nextjs/) [Wagmi App](../wagmi/) [WalletConnect App](../walletconnect/) [RainbowKit App](../rainbow/) [Web3-React App](../web3-react/) [Unity App](../unity/)

[Flutter Apps](../../mobile/flutter-get-started/) [React-Native Apps](../../mobile/react-native-get-started/)

[Custom Auth](../../custom-auth/)

## What's Next?

Add code to [onboard users](../../onboard/mvx/). Use `AuthProvider`, the standard EIP-1193 Web3 provider to call support JSON/RPC functions and Web3 wallet operations. [Learn more...](../../web3-ops/mvx/)

## See also

**'MultiversX'** integration example: See `sample-auth-multiversx` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [MultiversX FAQ](../../../faq/faq-mvx/)

[Try Demo App](https://demo.arcana.network)
