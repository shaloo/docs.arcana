# Get Started: Flutter Apps

Integrate 'Flutter' apps with Arcana Auth Flutter SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

## Prerequisites

- App must be [registered](../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../setup/config-auth/) such as [social login](../../concepts/social-login/), [wallet user experience](../../concepts/anwallet/), etc.

Flutter Version

We support Flutter [v3.15.0](https://flutter-ko.dev/development/tools/sdk/releases) or higher

## 2. Install

The Arcana Auth Flutter SDK is a [Flutter plugin](https://docs.flutter.dev/packages-and-plugins/developing-packages). It is available for download at 'Pub.dev' as the [`arcana_auth_flutter`](https://pub.dev/packages/arcana_auth_flutter) package.

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

## 2. Integrate

```
import 'package:arcana_sdk/arcana_sdk.dart';

final auth = AuthProvider(clientId:"xar_xxxx_...");
auth.init(context: context);

```

### Onboard Users

```
auth.loginWithSocial("google").then((_) => {
// On login Success
}).catchError(...);

```

### Sign Transactions

The `AuthProvider` supports the JSON-RPC requests for the following Web3 operations in Flutter apps:

```
auth.request(method: "...", params: [...]).then(() => ...);

```

```
auth.sendTransaction({ to: "", value: "" }).then((hash) => ...);

```

**That's all!**

The 'Flutter' app is ready to onboard users and allow them to sign blockchain transactions.

## 4. Advanced Usage

Flutter SDK Usage

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

```
auth.showWallet();

```

```
auth.hideWallet();

```

**Check Wallet Visibility**

```
var isVisible = auth.isVisible();

```

**Clear Cache**

```
auth.clearCache();

```

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See also

**'Flutter'** integration example: See `sample-auth-flutter` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth Flutter SDK Quick Links

- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-flutter/releases)
- [Download SDK](https://pub.dev/packages/arcana_auth_flutter)

[Try Demo App](https://demo.arcana.network)
