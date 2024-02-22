---
alias: unity-quick-start
title: 'Quick Start: Unity Apps'
description: 'Get Started quickly with Unity gaming apps using these step-by-step instructions. Register the Unity app, obtain a ClientID, and then integrate the app with the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
---

# Quick Start: Unity Apps

{% include "./text-snippets/warn_early_preview_rel.md" %}

The latest {{config.extra.arcana.gaming_sdk_name}} version is: {{config.extra.arcana.latest_auth_unity_sdk_version}}. 

Integrate Web3 gaming app that uses the Unity framework with the {{config.extra.arcana.gaming_sdk_name}} to onboard users and allow authenticated users to access the Arcana wallet instantly to sign blockchain transactions.


<img class="an-screenshots" src="/img/an_auth_usage_overview_light.png#only-light" alt="Auth Usage Overview"/>
<img class="an-screenshots" src="/img/an_auth_usage_overview_dark.png#only-dark" alt="Auth Usage Overview"/>

## Register & Configure

Begin by [[configure-auth|registering and configuring]] the {{config.extra.arcana.gaming_sdk_name}} usage via the {{config.extra.arcana.dashboard_name}}. Note the unique value, **{{config.extra.arcana.app_address}}**, assigned to the app. It will required later during integration.

See [[index-configure-auth|how to configure user onboarding and gasless transaction settings {{config.extra.arcana.gaming_sdk_name}}]].

## Integrate Unity App

Follow these steps to integrate the Unity app with the {{config.extra.arcana.gaming_sdk_name}}:

### Step 1: Set up Project Assets

- **Arcana Auth Gaming SDK Code Folder:** In the Unity project, copy the code from the [Arcana Auth Gaming SDK repo](https://github.com/arcana-network/auth-unity/tree/main/Assets/ArcanaSDK) and copy them at the location `/Assets/ArcanaSDK`.
- **Dependency Library:** Copy the library dependencies. The `/Assets/Libs/Newtonsoft.Json.dll` library handles JSON processing. It's under the MIT license and free for commercial use.
- **Vuplex WebView:** Purchase Vuplex WebView separately from [https://developer.vuplex.com/webview/overview](https://developer.vuplex.com/webview/overview) and incorporate it into your project at the `/Assets/Vuplex` path.

### Step 2: Configure `ArcanaSDK` object

- Add the `/Assets/ArcanaSDK/Prefab/ArcanaSDK` prefab to your scene.
- Set up the required parameters ({{config.extra.arcana.app_address}} and environment) in the `ArcanaSDK` object in the inspector.

### Step 3: Use Arcana Auth APIs

- First, call `LoginWithSocial` to onboard the user. Choose one of the [[state-of-the-arcana-auth#user-onboarding-options|supported user onboarding options]] such as Google, Steam, etc. 
- Next, call `Request` or `RequestAsync` to make Web3 Wallet operation requests. These methods are similar; choose the one that suits your needs best.

After integrating the Unity app with the {{config.extra.arcana.gaming_sdk_name}} and adding the required code to onboard users via the configured social logins, you are ready to deploy the gaming app. 

## Deploy App

An app integrated with the {{config.extra.arcana.gaming_sdk_name}} can be deployed for use only **after** the developer has completed these steps:

* Register and configure the app via the {{config.extra.arcana.dashboard_name}} 
* Integrate the app with the {{config.extra.arcana.gaming_sdk_name}} 
* Add code to onboard users and call Web3 wallet operations that require signing the blockchain transactions

Developers can deploy one instance of the app (say, under active development) on the {{config.extra.arcana.company_name}} Testnet while simultaneously deploying a stable version of their app (say, one validated on Testnet and ready for users) on the {{config.extra.arcana.company_name}} Mainnet. See [[deploy-app|how to deploy your app on the {{config.extra.arcana.company_name}} Testnet / Mainnet]] for details.

!!! caution "Testnet/Mainnet Configuration Settings"

      By default, when an app is registered, a 'Testnet' configuration profile gets automatically associated with the app, and a unique **{{config.extra.arcana.app_address}}** is assigned to this 'Testnet' profile. 
      
      To deploy the app on the {{config.extra.arcana.company_name}} Mainnet, you need to create a corresponding 'Mainnet' configuration profile and update the {{config.extra.arcana.gaming_sdk_name}} integration code to use the **new {{config.extra.arcana.app_address}}** assigned to the app's 'Mainnet' configuration profile. 

!!! tip "Testnet > Mainnet"

      If you have deployed a Unity app on Arcana Testnet and are looking to migrate it on the Mainnet, see [[migrate-app-testnet-mainnet|Testnet > Mainnet Migration Guide]].

That is all!

The Unity app is now ready to onboard users via 'Google'. Once the user logs in, the {{config.extra.arcana.wallet_name}} will be instantly accessible for Web3 wallet operations through the UI. Developers can also add code in the Unity app and call wallet functions programmatically via `Request` or `RequestAsync` methods. When a blockchain transaction is triggered programmatically from the app or via user action, a transaction notification is displayed in the Unity app context along with the transaction details. The user can review the transaction details and choose to accept or reject it.


## See also

* [User Authentication]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md)
* [[index-video-tutorials|Video Tutorials]]
* [Sample Unity App Integration](https://github.com/arcana-network/auth-examples)
