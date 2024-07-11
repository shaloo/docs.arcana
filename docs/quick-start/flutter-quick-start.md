---
alias: flutter-quick-start
title: 'Get Started: Flutter Apps'
description: 'Integrate Arcana Auth in Flutter-based mobile apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'Flutter'"
  app_example_submodule: "`sample-auth-flutter`"
---

# Get Started: Flutter Apps

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.flutter_sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

!!! an-note "Flutter Version"

      We support Flutter [v3.15.0](https://flutter-ko.dev/development/tools/sdk/releases) or higher

## 2. Install

The {{config.extra.arcana.flutter_sdk_name}} is a [Flutter plugin](https://docs.flutter.dev/packages-and-plugins/developing-packages). It is available for download at 'Pub.dev' as the [`{{config.extra.arcana.mobile_flutter_sdk_pkg_name}}`](https://pub.dev/packages/arcana_auth_flutter) package. 

Add the following line to the dependencies section in your app's `pubspec.yaml` file:

{% include "./code-snippets/auth_flutter_install.md" %}

## 2. Integrate

```javascript
import 'package:arcana_sdk/arcana_sdk.dart';

final auth = AuthProvider(clientId:"xar_xxxx_...");
auth.init(context: context);
```

### Onboard Users

```js
auth.loginWithSocial("google").then((_) => {
// On login Success
}).catchError(...);
```

### Sign Transactions

The `AuthProvider` supports the JSON-RPC requests for the following Web3 operations in Flutter apps:

=== "EIP-1193 Request"

    ```js
    auth.request(method: "...", params: [...]).then(() => ...);
    ```

=== "SendTransaction"

    ```js
    auth.sendTransaction({ to: "", value: "" }).then((hash) => ...);
    ```

{% include "./text-snippets/quick-start-deploy.md" %}

## 4. Advanced Usage

{% include "./text-snippets/adv_flutter_usage.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/flutter_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/auth_sdk_demo.md" %}

