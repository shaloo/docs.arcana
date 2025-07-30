# UI Modes

The [Arcana wallet](../) can be customized by Web3 app developers through the Arcana Developer Dashboard. When registering the app via the dashboard, developers must choose one of the wallet UI modes:

- Built-in Arcana wallet UI (default)
- Custom wallet UI.

To use a custom wallet UI, developers should select the UI mode as 'Custom UI' during app creation on the Arcana Developer Dashboard. This choice is final and cannot be changed later.

AuthProvider: `appMode` and `alwaysVisible` flags

Developers can control the wallet UI mode and when the wallet UI is displayed in the app context through the following customizations:

1. **UI Mode**: Choose between the Arcana wallet UI or a custom wallet UI. Set this in the dashboard's Wallet UI Mode when creating and registering a new app. There is also an [`appMode` flag](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) in the `AuthProvider` which can override this setting in the dashboard. If 'Custom UI' is selected via the dashboard then the `appMode` flag in `AuthProvider` is ignored.
1. **Always Visible**: Decide if the wallet is always visible in the app or only during a blockchain transaction. The [`alwaysVisible` flag](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) can be set to false (default is true) when creating a new `AuthProvider`. If using the Arcana wallet UI, this flag controls visibility. By default, the UI is always visible as a minimized widget. When set to `false`, the UI only appears during a blockchain transaction or when the developer calls the [`showWallet()`](https://authsdk-ref-guide.netlify.app/classes/authprovider#showWallet) method of the `AuthProvider`. The `alwaysVisible` flag is ignored if a custom UI is selected in the dashboard's Wallet UI Mode.
