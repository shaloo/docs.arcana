---
alias: index-integrate-react-app
title: 'Integrate React App'
description: 'Integrate Web3 apps that are built using the React framework, with the Arcana Auth SDK using the instructions listed here.'
sidebar_custom_props:
  cardIcon: 🏁
arcana:
  root_rel_path: ../../..
---

# Integrate React App

Select **one of the options below** as per your application type.

[[integrate-react-nextjs-app|React/NextJS  :fontawesome-brands-react: :simple-nextdotjs:]]{ .md-button } 

[[integrate-wagmi-app|Wagmi Connector :material-card-account-mail:]]{ .md-button } 

[[integrate-rainbow-app|RainbowKit Connector :material-card-account-mail:]]{ .md-button }

[[integrate-web3-react-app|Web3-React Connector :material-card-account-mail:]]{ .md-button }


!!! tip "Wallet Connect Frameworks"

      Depending upon whether your React Web3 app is a simple React app or a React app that uses [Wagmi](https://wagmi.sh/), [RainbowKit](https://www.rainbowkit.com/), or [Web3-React](https://www.npmjs.com/package/web3-react?activeTab=readme), you may need to install one or more of the following {{config.extra.arcana.sdk_name}} packages - `{{config.extra.arcana.auth_sdk_pkg_name}}`, `{{config.extra.arcana.react_sdk_pkg_name}}`, `{{config.extra.arcana.wagmi_sdk_pkg_name}}`, and `{{config.extra.arcana.web3_react_sdk_pkg_name}}`.

      * If your application is built using the React framework, you need to install both the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package and the [`{{config.extra.arcana.react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-react) package. Use the instructions listed below to integrate the {{config.extra.arcana.sdk_name}}, instantiate and initialize the `AuthProvider` and also use the React component, `ProvideAuth`. 
      * If your application uses Wagmi or RainbowKit, you need to install both the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package and the [`{{config.extra.arcana.wagmi_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-wagmi) packages. Use the instructions listed below to integrate the {{config.extra.arcana.sdk_name}}, create an `ArcanaConnector` for enabling user onboarding and signing of blockchain transactions.
      * If your application uses Web3-React, you need to install both the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package and the [`{{config.extra.arcana.web3_react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-web3-react) packages. Use the instructions listed below to integrate the {{config.extra.arcana.sdk_name}}, create an `ArcanaConnector` for enabling user onboarding and signing of blockchain transactions. 
