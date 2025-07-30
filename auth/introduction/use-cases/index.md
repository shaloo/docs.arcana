# Arcana Auth Use Cases

The Arcana Auth SDK allows developers to supercharge their Web3 apps with plug-and-play user authentication. Also, authenticated app users can instantly access the in-app, self-custodial Arcana wallet to securely sign blockchain transactions without having to install any browser extension or manage keys.

Web3 developers can integrate apps with the Arcana Auth SDK to:

- Authenticate and onboard users with social login
- Automatically enable in-app wallet for authenticated users to sign blockchain transactions
- Monitor app usage

## User Authentication

- **Plug-and-Play Auth**: Onboard users with a single line of code. Call `connect` method to bring up plug-and-play login UI that displays the configured Web2 social login providers, IAM providers and passwordless login options.
- **Build-your-own-Auth-UI**: Create your own login UX and call `loginWithSocial` method to enable authentication via popular Web2 social login providers, `loginWithBearer` for IAM providers. Use `loginWithLink` (deprecated), `loginWithOTPStart`, and `loginWithOTPComplete` methods for onboarding users via the passwordless option.
- **Customize Onboarding**: Choose which providers/login options are visible to the user at the time of logging into the Web3 application.

## Sign Blockchain Transactions

- **Accessible & Secure Wallet**: Enable *authenticated app users* to sign blockchain transactions without having to learn the Web3 nuances or expose them to tedious key management hoops. At the same time, provide a secure wallet that works only in the context of an app for an authenticated user.

- **Customize Wallet Usage Experience**: Control the Arcana wallet visibility by choosing whether it should be always visible in the context of a Web3 application or whether it shows up only when a blockchain transaction is triggered.

- **Wallet Branding**: Allows Web3 application developers to customize the Arcana wallet theme.

- **No Browser Extension Deployment**: Arcana Auth SDK allows quick wallet onboarding for users without any prior need to generate Web3 keys or install any wallet or browser extension to onboard Web3 apps.

- **Web3 Wallet Operations**: Enable typical wallet functions in the application for authenticated users:

  - Sign blockchain transactions
  - Send Transaction
  - Send/Receive native, custom tokens
  - Send/Receive NFTs
  - Browse NFTs, view NFT details
  - Add [supported networks](../../../web3-stack/chains/)
  - Switch networks
  - Monitor transaction activity
  - JSON-RPC method support
  - Buy crypto via fiat/on-ramp providers

## Monitor App Usage

- **Register Apps**: Developers can register and configure the Arcana Auth SDK usage and wallet user experience by using the Arcana Developer Dashboard as per their app requirements.
- **Monitor App Usage**: Developers can manage and monitor application usage in terms of **Monthly Active Users (MAU)**. They can also configure how apps are deployed on the Arcana Testnet and Mainnet. Billing is done only for Arcana Mainnet usage. Usage across all apps deployed on Mainnet can be tracked by the developers.

## Secure with MFA

Gaming, DeFi and other Web3 apps that deal with user's crypto assets, NFTs can further secure user data by utilizing the [MFA feature](../../../concepts/mfa/). A user can set up various recovery methods for their wallet to enhance security. Whenever they try to log in from a new device they will have to provide one of the two in order to login. The Arcana Auth SDK works across devices and browsers.
