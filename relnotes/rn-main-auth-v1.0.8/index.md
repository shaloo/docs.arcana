# Arcana Auth: Release Notes

**Release Date: September 20, 2023**

Version: **1.0.12**

The Arcana Auth SDK product consists of the following components:

- Arcana Auth SDK

  - Web Apps
    - [`auth`](https://www.npmjs.com/package/@arcana/auth)
    - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)
    - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)
    - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)
  - Mobile Apps
    - [`arcana_auth_flutter`](https://pub.dev/packages/arcana_auth_flutter)
    - [`auth-react-native`](https://www.npmjs.com/package/@arcana/auth-react-native)

- [Arcana Developer Dashboard](https://dashboard.arcana.network/)

- [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

## What has changed?

This is a minor release with enhancements and bug fixes only.

### Enhancements

**Arcana JWT Token**

The Arcana Auth SDK now returns an [Arcana JWT Token](../../concepts/an-jwt-token/) to the app after successful user login.

**Compact Login UI**

Developers can choose to select a more compact built-in login UI modal that displays all the available, configured login mechanisms for the user to choose from. Set `compact: true` as the `connectOptions` while creating a new `AuthProvider` as shown in the code snippet below:

```
import { AuthProvider, CHAIN } from '@arcana/auth'

interface ChainConfig {
  chainId: CHAIN
  rpcUrl?: string
}

const auth = new AuthProvider(`${clientId}`, {
  position: 'left',        // default - right
  theme: 'light',          // default - dark
  alwaysVisible: false,    // default - true
  setWindowProvider: true, // default - false
  connectOptions: {
    compact: true // default - false
  },
  chainConfig: {
    chainId: CHAIN.POLYGON_MAINNET,
    rpcUrl: '',
  },
})

await auth.init()

```

Compact Login UI

For more details, see [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams).

### Bug Fixes

**Email Validation**

The email entered by the user in the built-in login UI modal is now validated before initiating a user log in.

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

SeeArcana Auth SDK Quick Start Guides.

Check out the [sample dApp integration examples](https://github.com/arcana-network/auth-examples) for various dApp types, wallet connectors and frameworks.

## Upgrade to the Latest Arcana Auth SDK

______________________________________________________________________

If you have integrated the app with the Arcana Auth SDK v1.0.11 package you can choose to either continue to use it with the latest Arcana Auth SDK release.

Please note, in case are using an older version of the Arcana Auth SDK prior to v1.0.11 then refer to the appropriate [Migration Guides](../../migration/archives/) and upgrade to the latest version.

## Previous Releases

See the [release notes archive](../archives/) for details.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
