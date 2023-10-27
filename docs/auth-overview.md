---
alias: product-details
title: 'Product Details'
description: 'Introducing Arcana Auth, different components that makeup Arcana Auth, how to use it, Arcana Auth product features.'
arcana:
  root_rel_path: .
---

# Product Details

{==

{{config.extra.arcana.product_name}} product consists of:

* [{{config.extra.arcana.sdk_name}}](https://www.npmjs.com/package/@arcana/auth)
* [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network)
* {{config.extra.arcana.wallet_name}} (*embedded in the SDK, displayed in the app's context*)

==}

## Components

=== "{{config.extra.arcana.sdk_name}}"

    {{config.extra.arcana.sdk_name}} is a client-side library that can be integrated with different types of Web3 apps:
    
    * Web Apps: _Vanilla JS app_, _React, NextJS_, _Vue_
    * Wallet Connector Framework Apps: _Wagmi_, _RainbowKit_, and _Web3-React_
    * Mobile Apps: _Flutter_, _React-Native_
    * Gaming Apps: _Unity, Unreal_ (<span class="an-marker-text-highlight">Coming soon!</span>) 
    
    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md)

=== "{{config.extra.arcana.dashboard_name}}"

    {{config.extra.arcana.dashboard_name}} helps to register and configure Web3 apps before integrating them with the {{config.extra.arcana.sdk_name}}.
    
    Registering the app with {{config.extra.arcana.company_name}} associates a unique {{config.extra.arcana.app_address}} for each app. Developers **must** use this {{config.extra.arcana.app_address}} to integrate the app with the {{config.extra.arcana.sdk_name}}. 

    ![Dashboard lots of apps](/img/an_db_all_app_card.png){ .width_85pc }

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md)

=== "{{config.extra.arcana.wallet_name}}"

    {{config.extra.arcana.wallet_name}} is a part of {{config.extra.arcana.sdk_name}}, serving as an embedded, non-custodial Web3 wallet within the app. Users can access it immediately upon login. Developers can choose to use the default wallet UI or integrate a custom one.

    With {{config.extra.arcana.wallet_name}}, users don't need to create or handle cryptographic keys or remember passphrases. Their assets are secured through advanced asynchronous distributed key generation, giving them full wallet control while simplifying the complexity of cryptography.
    
    ![Arcana wallet Token Tab](/img/an_wallet_home.png){ .width_35pc }

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)

## Benefits & Usage

  With Arcana Auth integrated apps, developers can accelerate app building, while users seamlessly take control of their identity.

=== "**Developers**"
    
    **Benefits**

    - Higher conversion through social login
    - Flexible app login options: social, passwordless, custom IAM providers, and more.
    - Customizable with built-in plug-and-play or custom login UI.
    - Quick integration of {{config.extra.arcana.wallet_name}} UI or custom wallet UI for app users.
    - Easy blockchain network integration for authenticated users to sign Web3 operations: send, receive, NFTs, etc.
    - Total control over the blockchain signing experience: display wallet UI during transactions or continuously within the app.

    **Usage**

    Integrate any Web3 app with the {{config.extra.arcana.product_name}} product with these simple steps:

    ??? abstract "1. Register & Configure App"

          Use {{config.extra.arcana.dashboard_name}} to [[configure-auth|register the app, configure the user onboarding settings, and tailor the wallet user experience]]. Save the unique app identifier called the **{{config.extra.arcana.app_address}}** displayed in the dashboard after the app is registered. {{config.extra.arcana.app_address}} is required to integrate the app with the {{config.extra.arcana.sdk_name}}.

    ??? abstract "2. Install SDK & Integrate App"

          Install the appropriate SDK package and integrate as listed for each app type. Refer to the app-specific [[index-code-samples|code samples]] for details.
            
          **Vanilla HTML/CSS/JS or Vue apps:**
            
          - install the `{{config.extra.arcana.auth_sdk_pkg_name}}` package
          - create the `AuthProvider` by specifying the unique **{{config.extra.arcana.app_address}}** assigned to the app 
          - initialize the `AuthProvider` before calling its functions for onboarding users and Web3 wallet operations
            
            !!! note 
            
                  Developers can use the `AuthProvider` to obtain the standard Ethereum provider and use it for blockchain transactions. 
            
          **React/NextJS apps:**
            
          - install the `{{config.extra.arcana.auth_sdk_pkg_name}}` **and** the `{{config.extra.arcana.react_sdk_pkg_name}}` packages
          - create the `AuthProvider` by specifying the unique **{{config.extra.arcana.app_address}}** assigned to the app 
          - initialize the `AuthProvider`
          - create the `ProvideAuth` react component using the `AuthProvider` created earlier 
            
          **Wagmi and RainbowKit apps:** 
            
          - install the `{{config.extra.arcana.auth_sdk_pkg_name}}` **and** the `{{config.extra.arcana.wagmi_sdk_pkg_name}}` packages
          - create the `AuthProvider` by specifying the unique **{{config.extra.arcana.app_address}}** assigned to the app 
          - initialize the `AuthProvider`
          - create an `ArcanaConnector` instance using the `AuthProvider` as input and use it to initialize the Wagmi/RainbowKit framework

          **Web3-React apps:**
            
          - install the `{{config.extra.arcana.auth_sdk_pkg_name}}` and the `{{config.extra.arcana.web3_react_sdk_pkg_name}}` packages
          - create an `AuthProvider` instance by specifying the **{{config.extra.arcana.app_address}}** as the input parameter
          - create an `ArcanaConnector` instance using the `AuthProvider` as input and use it to initialize the Web3-React framework

          **Mobile: Flutter apps:**

          Use the {{config.extra.arcana.company_name}} [`Pub.Dev` Flutter plugin package](https://pub.dev/packages/arcana_auth_flutter). Refer to the [[flutter-quick-start|Flutter Quick Start Guide]]

          **Mobile: React-Native apps:**

          Install the [`{{config.extra.arcana.mobile_react_native_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-react-native) package. Refer to the [[react-native-quick-start|React-Native Quick Start Guide]].
                  
          For more details, see [[index-integrate-app|how to integrate with the {{config.extra.arcana.sdk_name}}]] and select the instructions for the app type. Also, refer to the [[index-tutorials|tutorials]] section.

    ??? abstract "3. Onboard Users & Enable Wallet"

          After integrating with the requisite {{config.extra.arcana.sdk_name}} packages, add code to onboard users. Pick one of the options:
            
          - Use the built-in plug-and-play login UI to display the configured authentication providers
          - Alternately, build a custom UI and wire it to call the {{config.extra.arcana.sdk_name}} functions for the configured authentication providers
            
          For details, see [[index-onboard-users|how to onboard users]].

    ??? abstract "4. Deploy Apps"

          **That's all!**

          Once the Web3 app is integrated with the {{config.extra.arcana.sdk_name}} and code is plugged in to onboard users, it is time to [[deploy-app|deploy the app!]].
            
          1. [[deploy-app#deploying-app-testnet-configuration|deploy the app]] on the Arcana Testnet and validate
          2. create a Mainnet configuration profile and [[deploy-app#deploying-app-mainnet-configuration|deploy the app]] on the Arcana Mainnet

          Once deployed, users can easily onboard and sign blockchain transactions. See [[index-web3-wallet-ops|how to enable Web3 wallet operations]] for details.

=== "**Users**"

    **Benefits**

    - Easy Web3 app onboarding with the with familiar Web2-like login
    - Instant access to Web3 wallet post-login
    - Full ownership and control of private key
    - Self-recovery for device switches
    - Secure access to owned wallet and assets

    **Usage**

    Users need to simply log in and use the Web3 app that is integrated with the {{config.extra.arcana.sdk_name}}. They get immediate access to the wallet and can sign blockchain transactions.

## Features

<div class="grid card_container" markdown>
  <div class="cards" markdown>
  <div class="card" markdown><h4><b>:fontawesome-solid-users-line: Onboard Users</b></h4><hr><p ><ul><li>Rapid onboarding for diverse Web3 apps: vanilla HTML/CSS/JS, React, NextJS, Vue, Wagmi, RainbowKit, Web3-React, and more.</li><li>Quick user authentication with minimal code.</li><li>Customizable onboarding: Web2 social, custom IAM, or passwordless options.</li></ul></p></div>
  <div class="card" markdown><h4><b>:fontawesome-brands-ethereum: Web3 Wallet Transactions</b></h4><hr><p><ul><li>Instant embedded wallet access, within the app's context, for authenticated users to sign blockchain transactions.</li><li>Easy customization of wallet UI for developers to manage user experience for the <a href="{{page.meta.arcana.root_rel_path}}/state_of_the_ntwk.html#supported-blockchains">supported blockchain networks</a>.</li><li>User-friendly Web3 wallet operations: send/receive tokens, manage NFTs, deploy/interact with contracts, etc.</li></ul></p></div>
  <div class="card" markdown><h4><b>:simple-letsencrypt: Secure</b></h4><hr><p><ul><li>Authenticated Web3 app users can securely sign blockchain transactions with ease.</li><li>Powered by state-of-the-art asynchronous distributed key generation for robust, scalable, and private key access security.</li></ul></p></div>
  <div class="card" markdown><h4><b>:material-gesture-tap-button: Gasless Transactions</b></h4><hr><p><ul><li>Developers can specify which app operations are gasless.</li><li>Easy to set up gas tanks and deposit gas fees.</li><li>Users don't pay gas fees for gasless transactions; third party sponsors or app developers pay gas fees.</li></ul></p></div>
  </div>
  <div class="card" markdown><h4><b>:material-gesture-tap-button: Easy to Use</b></h4><hr><p><ul><li>Embedded, non-custodial wallet displayed within the app context.</li><li>No browser extensions required to use wallet.<li>No seed phrases required, no key management complexity to enable users for signing transactions.</li></ul></p></div>
  </div>
</div>

<!--

[[auth-quick-start|Let's begin! ++enter++]]{ .md-button .md-button--primary}

Git: {{ git.short_commit}}

-->
