---
alias: arcana-auth-usage
title: 'Usage'
description: 'Developers can learn more about the usage or the use model for Arcana Auth product.'
arcana:
  root_rel_path: .
---

# Usage

Developers can use the {{config.extra.arcana.product_name}} product by following these steps:

??? abstract "1. Register & Configure App"

      Use {{config.extra.arcana.dashboard_name}} to [[configure-auth|register the app, configure the user onboarding settings, and tailor the wallet user experience]]. Save the unique app identifier called the **{{config.extra.arcana.app_address}}** displayed in the dashboard after the app is registered. {{config.extra.arcana.app_address}} is required to integrate the app with the {{config.extra.arcana.sdk_name}}.

??? abstract "2. Install SDK & Integrate App"

      Install the appropriate SDK package and integrate as listed for each app type. 
      
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