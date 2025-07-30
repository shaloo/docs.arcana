# Integrate Near App

Integrate 'Near' apps with [Arcana Auth SDK](../../../concepts/authsdk/) and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-near/) the 'Near' app and configure Arcana Auth SDK SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

## 1. Install

Depending upon the [app type](../../../web3-stack/apps/), you may need to [install one or more Arcana Auth SDK SDK flavors](../../sdk-installation/) and the integration steps may vary.

## 2. Integrate App

Select your 'Near' app type and follow the integration instructions.

[HTML/CSS/JS App](../vanilla-html-css-js/) [React/Next.js App](../react-nextjs/) [Wagmi App](../wagmi/) [WalletConnect App](../walletconnect/) [RainbowKit App](../rainbow/) [Web3-React App](../web3-react/) [Unity App](../unity/)

[Flutter Apps](../../mobile/flutter-get-started/) [React-Native Apps](../../mobile/react-native-get-started/)

[Custom Auth](../../custom-auth/)

## What's Next?

Add code to [onboard users](../../onboard/near/). Use `AuthProvider`, the standard EIP-1193 Web3 provider to call support JSON/RPC functions and Web3 wallet operations. [Learn more...](../../web3-ops/near/)

## See also

**'Near'** integration example: See `sample-auth-near` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [Near FAQ](../../../faq/faq-near/)

[Try Demo App](https://demo.arcana.network)
