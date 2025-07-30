# MultiversX App: Onboard Users

Learn how to onboard users through the configured [social login](../../../concepts/social-login/) providers in a 'MultiversX' app.

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-mvx/) the 'MultiversX' app and configure SDK usage [settings for social login](../../../setup/) providers, [manage MultiversX chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).
- Install the [required SDK packages](../../sdk-installation/) for 'MultiversX'.
- [Integrate](../../integrate/mvx/) 'MultiversX' app and obtain an `AuthProvider` for blockchain transactions.

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

MultiversX Shard Selection

MultiversX uses [adaptive state sharding](https://docs.multiversx.com/technology/adaptive-state-sharding/) for horizontal scaling. Shards allow it to process far more transactions through parallelization, improving transaction throughput and efficiency.

Choose your shard once when registering a MultiversX app on the Arcana Developer Dashboard. It cannot be changed later.

By default, Arcana uses 'Shard 0' to deploy all app contracts and allocate wallet addresses for users. The benefit is that when addresses from the same shard interact with contracts on the same shard, latencies are much lower than in cross-shard interactions.

## Onboard Users

User Onboarding Considerations

1. **Log in Options:** What options are offered by the app to the onboard users via social login? *Configure the required [social login providers](../../../setup/config-auth/) via the dashboard.*
1. **Built-in or Custom Login UI:** Does the Web3 app have a custom login UI or do they need to use the built-in, [plug-and-play login UI](../../../concepts/plug-and-play-auth/) modal offered by the Arcana Auth SDK? *Choose the appropriate onboarding functions of the `AuthProvider`.*
1. **Session Management:** Does the authenticated user stay logged in if they accidentally close the browser tab? If yes, what is the acceptable Web3 app security window for the session? After how long should the session expire and a user re-login is necessitated for security? *Configure the [session management settings](../../../setup/config-dApp-with-db/#login-session-management) via the dashboard.*
1. **Reconnect:** Does the Web3 app allow users to stay connected or require re-authentication after a certain time has elapsed? *Use `isConnected`, `canReconnect` and `reconnect` functions of the `AuthProvider`.*

[Wagmi Apps](../wagmi/wagmi-pnp-ui/) [RainbowKit Apps](../rainbow/rainbow-pnp-ui/) [WalletConnect Apps](../walletconnect/walletconnect-pnp-ui/) [Web3-React Apps](../web3-react/web3-react-pnp-ui/) [React/Next.js Apps](../react-nextjs/use-plug-play-auth/) [Vanilla HTML/CSS/JS App](../vanilla/use-plug-play-auth/) [Vue App](../vue/use-plug-play-auth/) [Flutter Apps](../../mobile/flutter-get-started/) [React-Native Apps](../../mobile/react-native-get-started/)

[Wagmi Apps](../wagmi/wagmi-custom-ui/) [RainbowKit Apps](../rainbow/rainbow-custom-ui/) [WalletConnect Apps](../walletconnect/walletconnect-custom-ui/) [Web3-React Apps](../web3-react/web3-react-custom-ui/) [React/Next.js Apps](../react-nextjs/custom-ui/) [Vanilla HTML/CSS/JS App](../vanilla/custom-ui/) [Vue App](../vue/custom-ui/) [Flutter Apps](../../mobile/flutter-get-started/) [React-Native Apps](../../mobile/react-native-get-started/)

## Advanced

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

Global vs. App Specific Keys

Apps using app-specific keys must use a custom login UI that allows users to input the OTP. In this case, the `isCompleteRequired` boolean returns `true` after initiating login with OTP.

Apps using global keys are not required to use a custom login UI. A built-in login UI is automatically displayed for the user for OTP. Users must enter the OTP received via email in this UI.

MFA Enabled / Disabled

During passwordless login via OTP, apps configured for MFA and those using overlays must hide it to enable OTP input. Use the `isMFARequired` callback in the `loginWithOTPComplete` method to hide the overlay.

Reconnect Users

Use `canReconnect` and `reconnect` methods of `AuthProvider` within a 30-min window of the user-logout action. Allow users to automatically reconnect to the app without re-authentication.

See [`canReconnect`](https://authsdk-ref-guide.netlify.app/classes/authprovider#canReconnect) and [`reconnect`](https://authsdk-ref-guide.netlify.app/classes/authprovider#reconnect) for details.

Apps Using Custom Auth

Web3 apps that use custom user authentication solutions and require authenticated users to sign blockchain transactions can also integrate with the Arcana Auth SDK. These apps can skip the social onboarding feature and use `loginWithCustomProvider` function of the `AuthProvider` to assign keys securely. [Learn more...](../../custom-auth/)

## What's Next?

Use the EIP-1193 provider offered by the SDK to call JSON/RPC functions and other [supported Web3 wallet operations on MultiversX](../../web3-ops/mvx/) in the authenticated user's context.

## See Also

**'MultiversX'** integration example: See `sample-auth-mvx` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [MultiversX FAQ](../../../faq/faq-mvx/)

[Try Demo App](https://demo.arcana.network)
