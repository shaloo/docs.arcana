# Plug-and-Play Login UI

Use the built-in, [plug-and-play login UI modal](../../../../concepts/plug-and-play-auth/) to quickly onboard users in a 'Vanilla HTML/CSS/JS' app integrated with the Arcana Auth Wagmi SDK.

Custom Login UI

You can onboard users through a [custom login UI](../../../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../custom-ui/) and onboard users in a 'Vanilla HTML/CSS/JS' app.

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the app that uses `wagmi` and configure the SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'Vanilla HTML/CSS/JS'.
- [Integrate](../../../integrate/wagmi/) 'Vanilla HTML/CSS/JS' app, create and initialize the `AuthProvider`.

## Steps

### 1. `connect`

Use the `connect()` function to bring up the plug-and-play pop-up modal in the app context and display the available options for user onboarding. Only those options are displayed that were earlier configured by the developer using the Arcana Developer Dashboard. The passwordless login option is enabled by default.

```
await auth.connect();

```

Plug-and-Play Login UI

Compact Mode

While creating the `AuthProvider`, use `connectoOptions` to optionally choose the [compact mode](../../../../concepts/plug-and-play-auth/#compact-modal) for the plug-and-play login UI.

```
connectOptions: {
      compact: true // default - false
},

```

Login UI Options

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use..

No plug-and-play support for Firebase authentication.

The [plug and play feature](../../../../concepts/plug-and-play-auth/) of the Arcana Auth SDK does not support social login via Firebase. Developers must build a custom login UI and add code to onboard users. For details, see [onboarding users via Firebase and custom login UI](../custom-ui/build-idm/firebase-login/)

No plug-and-play support for Telegram authentication.

The [plug and play feature](../../../../concepts/plug-and-play-auth/) of the Arcana Auth SDK does not support social login via Telegram. Developers must build a custom login UI and add code to onboard users. For details, see \[\[{{ no such element: dict object['telegram_custom_ui_tag'] }}|onboarding users via Telegram and custom login UI\]\].

## What's Next?

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../../web3-ops/evm/) in the authenticated user's context.

## See also

**'Vanilla HTML/CSS/JS'** integration example: See `sample-auth-html-css-js` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../../auth-error-msg/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

[Try Demo App](https://demo.arcana.network)
