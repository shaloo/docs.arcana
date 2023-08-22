---
alias: auth-core-quick-start
title: 'Auth-Core Quick Start'
description: 'Get Started quickly with using the Auth-Core SDK and enable social login in Web3 apps. Understand the difference between Auth-Core and Auth SDK features, usage model the security and privacy implications when integrating an app with the Auth-Core SDK. Follow these step-by-step instructions to register the app, obtain a ClientID and then integrate the app with the Arcana Auth-Core SDK.'
arcana:
  root_rel_path: ..
---

# Quick Start: Auth-Core

Use this guide to integrate apps with the {{config.extra.arcana.auth_core_sdk_name}} for using app-specific custom UI for user login as well as custom UI (or **no UI at all**) for Web3 wallet operations.

!!! note 

      With the {{config.extra.arcana.auth_core_sdk_name}}, developers get a stripped-down version of the {{config.extra.arcana.product_name}} product. It **does not provide any built-in {{config.extra.arcana.product_name}} login UI**. There is **no {{config.extra.arcana.wallet_name}} functionality for Web3 operations**. 
      
      When using the {{config.extra.arcana.auth_core_sdk_name}}, only app-specific keys are allowed. The 'Global Keys' option is **not available**. 
      
      There is **no enhanced wallet security  (MFA)** or key recovery when the user switches devices.

Follow these steps to begin using the {{config.extra.arcana.product_name}} product:

1. Use the {{config.extra.arcana.dashboard_name}} and register the app; obtain a unique **{{config.extra.arcana.app_address}}**.
2. Set up [social providers]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md#supported-authentication-mechanisms) that will be enabled for onboarding app users.
3. Install the SDK and integrate the app with the {{config.extra.arcana.sdk_name}}. Use the {{config.extra.arcana.app_address}} to create a new `AuthProvider` and use either the built-in plug-and-play login UI or custom UI to [[index-onboard-users|onboard users]].
4. Allow authenticated users to instantly access the [[index-arcana-wallet| {{config.extra.arcana.wallet_name}}]].
5. Add code in the app for programmatically accessing Web3 wallet operations supported by the {{config.extra.arcana.wallet_name}}.

<img class="an-screenshots" src="/img/an_auth_usage_overview_light.png#only-light" alt="uth Usage Overview"/>
<img class="an-screenshots" src="/img/an_auth_usage_overview_dark.png#only-dark" alt="Auth Usage Overview"/>


## Register & Configure

[[configure-auth|Register and configure]] the app using the {{config.extra.arcana.dashboard_name}}. As part of the app registration, a unique value, **{{config.extra.arcana.app_address}}**, is assigned to each app. This is required for integrating the app with the {{config.extra.arcana.auth_core_sdk_name}}.

After registering the app, developers can configure the Auth usage settings specific to the app using the {{config.extra.arcana.dashboard_name}}. For e.g.,

* Fine-tune or edit the list of default blockchains that are accessible to the app users. 
* Set up [[index-configure-auth|one or more user onboarding options]] such as social login or password-less.

!!! info "User Onboarding Options"
        
      If the app is registered but none of the supported authentication providers are enabled and configured for user onboarding, then by default, only the passwordless login option is available.

## Install SDK

After registering the app and configuring Auth usage for the app using the {{config.extra.arcana.dashboard_name}}, developers can install the `{{config.extra.arcana.auth_core_sdk_pkg_name}}` package using one of these options:

### npm

```sh
npm install --save @arcana/auth-core
```

### yarn

```sh
yarn add @arcana/auth-core
```

### CDN

```html
<script src="https://cdn.jsdelivr.net/npm/@arcana/auth-core"></script>
```

```html
<script src="https://unpkg.com/@arcana/auth-core"></script>
```

## Integrate App

After installing the `{{config.extra.arcana.auth_core_sdk_pkg_name}}` package, add code in the app to create and initialize the `AuthProvider`:

```js
const { AuthProvider, SocialLoginType } = window.arcana.auth_core;
// or
import { AuthProvider, SocialLoginType } from '@arcana/auth-core';
```

The {{config.extra.arcana.auth_core_sdk_name}} offers two kinds of flows:

* Pop-up UI
* Redirect UI

The `AuthProvider` can be initialized for a UI flow that uses a pop-up modal within the current app context or redirects to a different app page after login. For more details, see [[auth-core-usage-guide#flow-modes|here]].

```js
const clientId = "xar_test_d24f70cd300823953dfa2a7f5b7c7c113356b1ad"; // obtained after app registration via dashboard
const auth = await AuthProvider.init({
   appId: clientId, /* obtained after registering the app with the Arcana Developer Dashboard */
   flow: 'redirect', /* can be 'popup' or 'redirect' */
   redirectUri:''    /* can be ignored for redirect flow if same as login page */
});
```

### Onboard Users

Before adding code in the app for using the {{config.extra.arcana.auth_core_sdk_name}} user onboarding functions, make sure you have configured those properly as instructed [[index-configure-auth| here]]. More than one user onboarding mechanism can be enabled in the app:

* Social Login
* Passwordless

#### Social Login

```js
await auth.loginWithSocial(SocialLoginType.google);
```

#### Passwordless

```js
const result = await auth.loginWithOtp(`${emailAddress}`, PasswordlessOptions);
```

##### PasswordlessOptions:

- `{ withUI: true }` - the user is redirected to `email-sent` or `error` page
- `{ withUI: false }` - the Social / Passwordless login API returns  a `json` response back with no redirection
- defaults to `{ withUI: true }`

Refer to the sample code for using Arcana Auth-Core SDK [here](https://github.com/arcana-network/auth-examples) for details on how to add a pop-up UI user onboarding flow or a redirect flow in the app.

### Sign Transactions

Once the user has successfully onboarded the app, add code to perform Web3 operations such as signing messages, send transactions and more.

The `AuthProvider` is a standard Ethereum EIP-1193 provider and can be used by the apps integrating with the {{config.extra.arcana.auth_core_sdk_name}} to allow authenticated users to sign blockchain transactions.

```js
import { AuthProvider, SocialLoginType } from '@arcana/auth-core';
import { ethers } from 'ethers'

const auth = await AuthProvider.init({
   appId: `${clientId}`, /* obtained after registering the app with the Arcana Developer Dashboard */
   flow: 'redirect', /* can be 'popup' or 'redirect' */
   redirectUri:'SPECIFY_URI'    /* can be ignored for redirect flow if same as login page */
});

...

const login = async () => {
const arcanaProvider = await auth.loginWithSocial(SocialLoginType.google);
if (auth.isLoggedIn()) {
    const info = await auth.getUser();
}
};

...

googleLoginBtn.addEventListener('click', () => {
  login('google');
});
  ¯
...

try {

  const provider = new ethers.providers.Web3Provider(arcanaProvider)
  await provider.getBlockNumber() //Or perform any other Web3 operation such as sign message, send transaction
    // 14983200
} catch (e) {
    // log error
}
...

```

## Deploy App

An app integrated with the {{config.extra.arcana.auth_core_sdk_name}} can be deployed for use only **after** the developer has completed these steps:

* Register and configure the app via the {{config.extra.arcana.dashboard_name}} 
* Integrate the app with the {{config.extra.arcana.sdk_name}} 
* Add code to onboard users 
* Add code to allow authenticated users to sign the blockchain transactions

Developers can choose to deploy one instance of the app (say, under active development) on the {{config.extra.arcana.company_name}} Testnet while simultaneously deploying a stable version of their app (say, one validated on Testnet and ready for users) on the {{config.extra.arcana.company_name}} Mainnet.

By default, when an app is registered, a 'Testnet' configuration profile is associated with the app, and a unique **{{config.extra.arcana.app_address}}** is assigned to this 'Testnet' profile. To deploy your app on the {{config.extra.arcana.company_name}} Mainnet, you need to create a corresponding 'Mainnet' configuration profile and update the {{config.extra.arcana.sdk_name}} integration code to use the **new {{config.extra.arcana.app_address}}** assigned to the app's 'Mainnet' configuration profile. For details on how to deploy your app on the {{config.extra.arcana.company_name}} Testnet / Mainnet, see [[deploy-app|App Deployment Guide]].

That's all!!! :tada:

You have successfully installed the  {{config.extra.arcana.auth_core_sdk_name}} and integrated the Web3 app to onboard users and enable them to sign blockchain transactions easily.

## See Also

* [[auth-core-usage-guide|{{config.extra.arcana.auth_core_sdk_name}} Usage Guide]]
* {{config.extra.arcana.auth_core_sdk_name}} API Reference Guide
