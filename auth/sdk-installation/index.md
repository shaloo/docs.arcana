# Install Arcana Auth SDK

Arcana Auth SDK supports various [app types](../../web3-stack/apps/). You may be required to install one or more Arcana Auth SDK packages depending upon the app type.

For example, Vue apps, HTML/CSS/JS apps only require installation of the `auth` package. For other app types, you may need to install app-type-specific packages along with the companion `auth` package. See table for more details:

Arcana Auth SDK Flavors

In some cases, you need to install and integrate the app with the `auth` package in addition to the app-specific package listed below.

| SDK Name | Web3 Application Type | Package Name | Requires companion SDK | | --- | --- | --- | --- | | Arcana Auth SDK | For enabling user onboarding in web apps: Vanilla HTML/CSS/JS Apps, Vue Apps | [`auth`](https://www.npmjs.com/package/@arcana/auth) | None | | Arcana Auth React SDK | React Apps | [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react) | [`auth`](https://www.npmjs.com/package/@arcana/auth) | | Arcana Auth Wagmi SDK | Apps using wallet connectors such as Wagmi, RainbowKit, WalletConnect | [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi) | [`auth`](https://www.npmjs.com/package/@arcana/auth) | | Arcana Auth Web3 React SDK | Apps using Web3-React wallet connector | [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react) | [`auth`](https://www.npmjs.com/package/@arcana/auth) | | Arcana Auth Flutter SDK | Mobile apps built using Flutter | `arcana_auth_flutter` | None | | Arcana Auth React-Native SDK | Mobile apps built using React Native | `auth-react-native` | None | | Arcana Auth-Core SDK | Auth SDK for user onboarding features usage only and ability to assign keys to authenticated users, with no embedded wallet feature | `auth-core` | None | | Arcana Auth Unity SDK | Gaming apps built using Unity | `arcana-auth-sdk` | None |

## Arcana Auth SDK

### HTML/CSS/JS, Vue Apps

```
npm install --save @arcana/auth

```

```
yarn add @arcana/auth

```

### React/Next.js Apps

```
npm install --save @arcana/auth @arcana/auth-react

```

```
yarn add @arcana/auth  @arcana/auth-react

```

### Wagmi/RainbowKit/WalletConnect Apps

**Wagmi 2.0**

```
npm install --save @arcana/auth-wagmi@3.0.0 @arcana/auth@1.0.12

```

**Wagmi 1.0**

```
npm install --save @arcana/auth-wagmi@2.0.0 @arcana/auth

```

**Wagmi 2.0**

```
yarn add @arcana/auth-wagmi@3.0.0 @arcana/auth@1.0.12

```

**Wagmi 1.0**

```
yarn add @arcana/auth-wagmi@2.0.0 @arcana/auth

```

### Web3-React Apps

```
npm install --save @arcana/auth-web3-react @arcana/auth

```

```
yarn add @arcana/auth-web3-react @arcana/auth

```

### Unity Framework

Download the Arcana Auth Unity SDK package: [https://npm-registry.arcana.network/](https://npm-registry.arcana.network/-/web/detail/arcana-auth-sdk). Unzip the contents and copy them to the **Assets** folder of the Unity Project.

Unity Settings

Developers must update the Unity Project settings in addition to installing the Arcana Auth Unity SDK. This is required to enable SDK usage in Unity Apps. See [Unity Setup](../../quick-start/unity-quick-start/#1-unity-setup-auth-install).

## Mobile SDKs

### Flutter Apps

pubspec.yaml

```
dependencies:
  flutter:       # Required for every Flutter project
    sdk: flutter # Required for every Flutter project
  flutter_localizations: # Required to enable localization
    sdk: flutter         # Required to enable localization
  arcana_auth_flutter: ^0.0.6 

```

### React-Native Apps

```
npm i @arcana/auth-react-native
(cd ios && pod install)

```
