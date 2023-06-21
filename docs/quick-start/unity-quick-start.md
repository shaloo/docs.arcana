---
alias: unity-quick-start
title: 'Quick Start: Unity Gaming Apps'
description: 'Get Started quickly with Unity gaming apps using these step-by-step instructions. Register the Unity app, obtain a ClientID and then integrate the app with the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
---

# Quick Start: Unity Gaming Apps

{% include "./text-snippets/warn_early_preview_rel.md" %}

Use this guide to integrate Web3 apps with the [[concept-authsdk| {{config.extra.arcana.gaming_sdk_name}}]] and quickly build the following features:

* Onboard users easily by configuring one or more [authentication mechanisms]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md#supported-authentication-mechanisms)
* Enable {{config.extra.arcana.wallet_name}} and allow authenticated users to sign blockchain transactions, manage crypto assets, and [more]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md).

## Overview

Follow these steps to register, configure, integrate, and use the {{config.extra.arcana.gaming_sdk_name}} features such as onboarding users and allowing them to sign blockchain transactions in Web3 apps:

1. Use the {{config.extra.arcana.dashboard_name}} and register the app; obtain a unique **{{config.extra.arcana.app_address}}**.
2. Set up social providers that will be enabled for onboarding app users.
3. Install the {{config.extra.arcana.gaming_sdk_name}} and integrate the app to onboard users either via the built-in plug-and-play login UI or custom UI.
4. Allow authenticated users to instantly access the {{config.extra.arcana.wallet_name}}.
5. Add code in the app for programmatically accessing Web3 wallet operations supported by the {{config.extra.arcana.wallet_name}}.

## Register & Configure

First, follow the instructions to [[configure-auth|register and con
figure]] the app using the {{config.extra.arcana.dashboard_name}}. As part of the app registration, a unique value, **{{config.extra.arcana.app_address}}**, is assigned to each app. This is required for integrating the app with the {{config.extra.arcana.gaming_sdk_name}}.

During app configuration, developers can enable one or more options to onboard app users.

!!! info "User Onboarding Options"

      Web3 app developers can [[index-configure-auth|configure one or more authentication providers]] to let app users choose one of the available options and log in.
        
      If the app is registered but none of the supported authentication providers are enabled and configured for user onboarding, then by default, only the [[build-password-less-auth|passwordless login]] can be used to onboard app users.

## Integrate Unity App

Follow these steps to integrate the Unity app with the {{config.extra.arcana.gaming_sdk_name}}:
### Step 1: Set up Project Assets

- **Arcana Auth Gaming SDK Code Folder:** In the Unity project, copy the code from the [Arcana Auth Gaming SDK repo](https://github.com/arcana-network/auth-unity/tree/main/Assets/ArcanaSDK) and copy them at the location `/Assets/ArcanaSDK`.
- **Dependency Library:** Copy the library dependencies. The `/Assets/Libs/Newtonsoft.Json.dll` library handles JSON processing. It's under the MIT license and free for commercial use.
- **Vuplex WebView:** Purchase Vuplex WebView separately from [https://developer.vuplex.com/webview/overview](https://developer.vuplex.com/webview/overview) and incorporate it into your project at the `/Assets/Vuplex` path.

### Step 2: Set up WebView

- Add the Canvas to the scene if it doesn't exist, and place the `/Assets/ArcanaSDK/Prefab/ArcanaWireframeForDesktop` prefab into the Canvas of your scene to configure the wireframe for the WebView.
- Place the Vuplex WebView prefab into your Canvas. This is the `/Assets/Vuplex/WebView/Core/Prefabs/Resources/CanvasWebViewPrefab` prefab. It goes into the wireframe at `/Canvas/ArcanaWireframeForDesktop/Wireframe` in the hierarchy editor.
- Optionally, you can check some WebView parameters such as `Log Console Messages`, if needed.

### Step 3: Set up Arcana Auth Gaming SDK

- Add the `/Assets/ArcanaSDK/Prefab/ArcanaSDK` prefab to your scene. Alternatively, you could add the `Assets/ArcanaSDK/ArcanaSDK.cs` script to another object.
- **Link the WebView and Initialize SDK:** There are two options here:
    - Configure the required parameter in the inspector by dragging the `CanvasWebViewPrefab` object in the hierarchy editor into the inspector of `ArcanaSDK`.
    - Alternatively, call the `InitializeWebView` method from your code.
- **Set up the Auth SDK usage settings:**
    - Set up the required parameters ({{config.extra.arcana.app_address}} and environment) in the `ArcanaSDK` object in the inspector.
    - Alternatively, call the `InitializeSDK` method from your code.

### Step 4: Use Arcana Auth APIs

- First call `LoginWithGoogle` to onboard the user via 'Google' as the social provider.
- Afterward, you can call `Request` or `RequestAsync` to make Web3 Wallet operation requests. These methods are similar; choose the one that suits your needs best.

After integrating the Unity app with the {{config.extra.arcana.gaming_sdk_name}} along with code to onboard users via 'Google', you can deploy the app.  Depending upon the environment selected during the Auth SDK initialization earlier, the app will be deployed on the Arcana Testnet or Mainnet.

### Deploy App

An app integrated with the {{config.extra.arcana.gaming_sdk_name}} can be deployed for use only **after** the developer has completed these steps:

* Register and configure the app via the {{config.extra.arcana.dashboard_name}} 
* Integrate the app with the {{config.extra.arcana.gaming_sdk_name}} 
* Add code to onboard users 
* Add code to allow authenticated users to sign the blockchain transactions

Developers can choose to deploy one instance of the app (say, under active development) on the {{config.extra.arcana.company_name}} Testnet while simultaneously deploying a stable version of their app (say, one validated on Testnet and ready for users) on the {{config.extra.arcana.company_name}} Mainnet.

By default, when an app is registered, a 'Testnet' configuration profile is associated with the app, and a unique **{{config.extra.arcana.app_address}}** is assigned to this 'Testnet' profile. To deploy your app on the {{config.extra.arcana.company_name}} Mainnet, you need to create a corresponding 'Mainnet' configuration profile and update the {{config.extra.arcana.gaming_sdk_name}} integration code to use the **new {{config.extra.arcana.app_address}}** assigned to the app's 'Mainnet' configuration profile. For details on how to deploy your app on the {{config.extra.arcana.company_name}} Testnet / Mainnet, see [[deploy-app|App Deployment Guide]].

That is all!

The Unity app is now ready to onboard users via 'Google'. Once the user logs in, the {{config.extra.arcana.wallet_name}} will be instantly accessible for web3 wallet operations through the UI. Developers can also add code in the Unity app and call wallet functions programmatically via `Request` or `RequestAsync` methods. When a user action or programmatically invoked wallet operation triggers a blockchain transaction, a transaction notification will pop up in the Unity app context, asking the user to review the transaction and accept or reject the blockchain request.

## See also

* [User Authentication]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md)
* [[index-video-tutorials|Video Tutorials]]
* [Demo App Source Code](https://github.com/arcana-network/auth-unity/tree/main/Assets/Demo)