# Release Notes Arcana Auth (Mainnet)

**Version: v1.0.2**

**Release Date: February 21, 2023**

This release of the Arcana Auth SDK consists of the following components:

- [Arcana Auth SDK v1.0.2](https://www.npmjs.com/package/@arcana/auth/v/1.0.2)
- Arcana Developer Dashboard
- Arcana wallet UI

## New Product Features

______________________________________________________________________

### Fiat On-ramp Providers

Arcana wallet supports fiat on-ramping that allows wallet users to buy cryptocurrency (native and ERC20 tokens) from any of the supported providers:

- [Transak](https://transak.com/)

### App Address -> Client ID

Each registered Web3 app is associated with a unique Arcana identifier. Earlier, it was referred to as **App Address**. Now it is referred to as **Client ID** in the documentation and on the Arcana Developer Dashboard screen.

The format of the **Client ID** has also changed but it does not impact Arcana Auth SDK usage. Developers can continue to use the existing **App Address** with the new Arcana Auth SDK. If the app is integrated using the following Arcana Auth SDK versions, there is **no need to re-register the app**:

- v1.0.1
- v1.0.0

If the app is using an older version of the Arcana Auth SDK, refer to the migration guide and upgrade to the latest version.

### Minimized Wallet Widget Update

The circular widget displayed when a wallet was minimized by clicking the 'x' icon on the top right of the wallet in its maximized state has changed. In the current release, the minimized wallet state is displayed in the form of a smaller widget.

| Minimized Wallet Widget v1.0.1 | Minimized Wallet Widget v1.0.2 | | --- | --- | | | |

### Arcana Auth SDK package additions: Wagmi & RainbowKit support

Typical React/Next.js apps integrate with the Arcana Auth SDK by installing the `auth` and `auth-react` npm packages and instantiating the `AuthProvider` and `ProviderAuth` before using them in the app. See [how to integrate a React app](../../auth/integrate/react-nextjs/) for details.

The React/Next.js apps that use [Wagmi](https://wagmi.sh/) can be integrated with the Arcana Auth SDK by installing the `auth-wagmi` package and instantiating the `ArcanaConnector` wrapper component. For details, see [how to integrate a React app that uses Wagmi](../../auth/integrate/wagmi/) guide.

Similarly, for React apps using the [RainbowKit framework](https://www.rainbowkit.com/), see [how to integrate a React app that uses RainbowKit](../../auth/integrate/rainbow/) guide.

Using `auth-wagmi`

Earlier, to integrate the Arcana Auth SDK with a Web3 app that uses [`wagmi`](https://wagmi.sh/) or [RainbowKit](https://www.rainbowkit.com/) wallet connectors, developers were required to directly install the [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi) package and create the `ArcanaConnector`. This has changed for auth-wagmi v0.0.5 onward. Developers are now required to **also** install the [`auth`](https://www.npmjs.com/package/@arcana/auth) package along with the [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi) package.

## Bug Fixes

______________________________________________________________________

**Securing Local/Session store partition**

In the previous release, the embedded wallet UI displayed for an authenticated user in the context of an application was also accessible in a different app's context, if the same tab was used to browse a different app.

Once a user authenticates and logs in to an app, say **app A**, using a browser and then before logging out of **app A**, then types a new app URL in the same browser tab for accessing **app B**, the user was able to access the wallet associated with **app A** in the context of **app B** without explicit sign-in into **app B**.

This issue is fixed in the current release. The user will have to log in to the new app before they can access the wallet UI.

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides for details.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

## Migrate to v1.0.2

______________________________________________________________________

Are you using an older version of the Arcana Auth SDK? Use the [Migration Guides](../../migration/archives/) and upgrade to the latest version.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), or contact [Arcana Support](../../support/).
