# Get Started: Flutter Apps

'Flutter' Web3 apps can onboard users via social login by integrating with the Arcana Auth Flutter SDK!

## Prerequisites

- Flutter [v3.15.0](https://flutter-ko.dev/development/tools/sdk/releases) or higher

## 1. Register & Configure

- App must be [registered](../../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../../setup/config-auth/) such as [social login](../../../concepts/social-login/), [wallet user experience](../../../concepts/anwallet/), etc.

## 2. Install SDK

The Arcana Auth Flutter SDK is available at 'Pub.dev' as a [Flutter plugin](https://docs.flutter.dev/packages-and-plugins/developing-packages) package called [`arcana_auth_flutter`](https://pub.dev/packages/arcana_auth_flutter).

Add the following line to the dependencies section in your app's `pubspec.yaml` file:

pubspec.yaml

```
dependencies:
  flutter:       # Required for every Flutter project
    sdk: flutter # Required for every Flutter project
  flutter_localizations: # Required to enable localization
    sdk: flutter         # Required to enable localization
  arcana_auth_flutter: ^0.0.6 

```

Use latest Arcana Auth Flutter SDK

Use latest Arcana Auth Flutter SDK release **v0.0.6** available at [pub.dev](https://pub.dev/packages/arcana_auth_flutter).

## 3. Integrate

Once installed, integrate the app with the Arcana Auth Flutter SDK. Create an `AuthProvider` instance and specify the unique **client ID** assigned to the registered app.

```
import 'package:arcana_sdk/arcana_sdk.dart';

final auth = AuthProvider(clientId:"xar_xxxx_...");
auth.init(context: context);

```

Next, add code to onboard users and allow authenticated users to sign blockchain transactions using Arcana wallet.

### Onboard Users

Add code to onboard users through one of the configured social login providers or via OTP login option.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

**Social Login**

```
auth.loginWithSocial("google").then((_) => {
// On login Success
}).catchError(...);

```

**OTP Login**

```
auth.loginWithOTP("${email_id}").then((_) => {
// On login Success
}).catchError(...);

```

**Logout**

Call the logout method in response to a user's choice to log out. The built-in Arcana wallet UI has a **Logout** option in the user profile tab.

```
auth.logout().then((_) => {
// On logout
});

```

**Get User Address**

```
auth.getAccount().then((account) => ...);

```

**Get User Details**

```
auth.getUserInfo().then((UserInfo info) => ...);

```

**Show/Hide Wallet UI**

Developers can choose to show or hide the wallet as per the app requirements.

```
auth.showWallet();

```

```
auth.hideWallet();

```

**Check Wallet Visibility**

To determine in the Flutter app if the Arcana wallet is visible in the app's context, get the visibility status:

```
var isVisible = auth.isVisible();

```

**Clear Cache**

Flutter apps can use `clearCache` to clear the Webview cache:

```
auth.clearCache();

```

### Sign Transactions

The `AuthProvider` supports the JSON-RPC requests for the following Web3 operations:

```
auth.request(method: "...", params: [...]).then(() => ...);

```

```
auth.sendTransaction({ to: "", value: "" }).then((hash) => ...);

```

## 4. Deploy

**That's all!**

The 'Flutter' app is ready to onboard users and allow them to sign blockchain transactions.

## See also

- **'Flutter'** integration example: See `sample-auth-flutter` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth Flutter SDK Quick Links

- [Release notes](../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-flutter/releases)
- [Download SDK](https://pub.dev/packages/arcana_auth_flutter)
