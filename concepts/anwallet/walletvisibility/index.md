# Wallet Visibility

Web3 app developers can control Arcana wallet visibility by setting the `alwaysVisible` flag when instantiating the `AuthProvider` during app integration with the Arcana Auth SDK.

By default, `alwaysVisible` is set to `true` and the wallet is displayed immediately after a user logs into the app that is integrated with the Arcana Auth SDK. As the wallet is always visible in the context of the app, an authenticated user has full access to all the Web3 wallet operations supported by the Arcana wallet.

Wallet In-app Visibility: Enabled

If `alwaysVisible` is set to `false`, then the Arcana wallet UI does not show up on the application window immediately after a user logs in. The Arcana wallet UI is displayed only when a blockchain transaction is triggered that requires the user's approval or if the app issues the `showWallet()` method.

Wallet In-app Visibility: Disabled

AuthProvider: `appMode` and `alwaysVisible` flags

Developers can control the wallet UI mode and when the wallet UI is displayed in the app context through the following customizations:

1. **UI Mode**: Choose between the Arcana wallet UI or a custom wallet UI. Set this in the dashboard's Wallet UI Mode when creating and registering a new app. There is also an [`appMode` flag](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) in the `AuthProvider` which can override this setting in the dashboard. If 'Custom UI' is selected via the dashboard then the `appMode` flag in `AuthProvider` is ignored.
1. **Always Visible**: Decide if the wallet is always visible in the app or only during a blockchain transaction. The [`alwaysVisible` flag](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) can be set to false (default is true) when creating a new `AuthProvider`. If using the Arcana wallet UI, this flag controls visibility. By default, the UI is always visible as a minimized widget. When set to `false`, the UI only appears during a blockchain transaction or when the developer calls the [`showWallet()`](https://authsdk-ref-guide.netlify.app/classes/authprovider#showWallet) method of the `AuthProvider`. The `alwaysVisible` flag is ignored if a custom UI is selected in the dashboard's Wallet UI Mode.
