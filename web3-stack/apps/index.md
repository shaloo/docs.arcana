# Supported App Types

Web3 apps built using these app frameworks and wallet connectors can integrate with Arcana Auth SDK to support [social login](../../concepts/social-login/) and the in-app Arcana wallet.

- Web

  - Vanilla HTML/CSS/JS
  - Vue
  - React/Next.js

- Mobile

  - Flutter
  - React-Native

- Gaming

  - Unity

- Wagmi

- RainbowKit

- WalletConnect

- Web3-React

Arcana Auth SDK Flavors

In some cases, you need to install and integrate the app with the `auth` package in addition to the app-specific package listed below.

| SDK Name | Web3 Application Type | Package Name | Requires companion SDK | | --- | --- | --- | --- | | Arcana Auth SDK | For enabling user onboarding in web apps: Vanilla HTML/CSS/JS Apps, Vue Apps | [`auth`](https://www.npmjs.com/package/@arcana/auth) | None | | Arcana Auth React SDK | React Apps | [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react) | [`auth`](https://www.npmjs.com/package/@arcana/auth) | | Arcana Auth Wagmi SDK | Apps using wallet connectors such as Wagmi, RainbowKit, WalletConnect | [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi) | [`auth`](https://www.npmjs.com/package/@arcana/auth) | | Arcana Auth Web3 React SDK | Apps using Web3-React wallet connector | [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react) | [`auth`](https://www.npmjs.com/package/@arcana/auth) | | Arcana Auth Flutter SDK | Mobile apps built using Flutter | `arcana_auth_flutter` | None | | Arcana Auth React-Native SDK | Mobile apps built using React Native | `auth-react-native` | None | | Arcana Auth-Core SDK | Auth SDK for user onboarding features usage only and ability to assign keys to authenticated users, with no embedded wallet feature | `auth-core` | None | | Arcana Auth Unity SDK | Gaming apps built using Unity | `arcana-auth-sdk` | None |
