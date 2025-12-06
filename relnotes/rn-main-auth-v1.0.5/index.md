# Arcana Auth: Release Notes

**Release Date: June 12, 2023**

The latest release of the Arcana Auth SDK consists of the following components:

- Arcana Auth SDK

  - [`auth`](https://www.npmjs.com/package/@arcana/auth)
  - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)
  - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)
  - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)

- [Arcana Developer Dashboard](https://dashboard.arcana.network/)

- [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

## New Product Features

______________________________________________________________________

### Auth for Mobile Apps

The Arcana Auth SDK now allows mobile apps built using Flutter and React-Native frameworks to onboard users through the Arcana Auth SDK and sign blockchain transactions.

Flutter app developers must install the `arcana_auth_flutter` package and refer to the [Arcana Auth Quick Start Guide for Flutter Apps](../../quick-start/flutter-quick-start/) to integrate Web3 Flutter apps with the Arcana Auth SDK.

React-Native app developers must install the `auth-react-native` package and refer to the [Arcana Auth Quick Start Guide for React-Native Apps](../../quick-start/react-native-quick-start/) to integrate Web3 React-Native apps with the Arcana Auth SDK.

### White-labeled Auth

The new white-labeled auth feature allows Web3 app developers to configure the Arcana Auth SDK and disable the built-in Arcana wallet UI. Developers can replace it with a custom wallet UI and build necessary interfaces to call the Web3 wallet operations themselves along with notification UI for requesting user approval for signing a blockchain transaction. See [how to plug in a custom wallet UI](../../auth/custom-wallet-ui/) and use the white-labeled auth feature.

### Steam OAuth Support

Web3 applications that integrate with the Arcana Auth SDK can now onboard users via [Steam OAuth](https://partner.steamgames.com/doc/webapi_overview/oauth). See [how to configure Steam as an onboarding option](../../setup/config-social/steam-oauth/) section for more details. After configuring one or more authentication providers through the Arcana Developer Dashboard, applications can onboard users with a single line of code using `loginWithSocial` call. Developers can use the built-in plug-and-play login UI feature of the Arcana Auth SDK or use a custom login UI and allow users to onboard the app using Steam. Select the app type for instructions on how to onboard users with Steam.

### Firebase Auth Support

Besides Cognito custom authentication, the Arcana Auth SDK now also allows apps to onboard users via Firebase. To enable Firebase, developers must:

- [Configure Firebase settings](../../setup/config-idm/firebase-auth/) in the Arcana Developer Dashboard
- [Install and integrate the app](../../auth/integrate/vanilla-html-css-js/) with the Arcana Auth SDK
- Make sure that the app is also integrated with the Firebase SDKs and that the required Firebase services are configured.
- Use a custom login UI to initiate Firebase login and listen for user authentication success event from Firebase.
- Pass on the Firebase token to the Arcana Auth SDK user onboarding function - `loginWithBearer` and allow authenticated users to sign blockchain transactions.

Refer to the [Firebase auth integration example](https://github.com/arcana-network/auth-examples) for details.

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

## Upgrade to the Latest Arcana Auth SDK

______________________________________________________________________

If you have integrated the app with the Arcana Auth SDK v1.0.11 package you can choose to either continue to use it with the latest Arcana Auth SDK release.

To enable Steam or Firebase authentication, you must upgrade to the v1.0.5 or later. To upgrade. follow the [migration guide](../../migration/main-auth-v1.0.5-migration/).

Please note, in case are using an older version of the Arcana Auth SDK prior to v1.0.11 then refer to the appropriate [Migration Guides](../../migration/archives/) and upgrade to the latest version.

## Previous Releases

See the [release notes archive](../archives/) for details.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
