---
alias: index-integrate-react-app
title: 'Integrate React App'
description: 'Integrate Web3 apps that are built using the React framework, with the Arcana Auth SDK using the instructions listed here. Make sure that you have configured the Web3 app using the Arcana developer dashboard and obtained a unique clientId for the app. The clientId is required to integrate the app.'
sidebar_custom_props:
  cardIcon: 🏁
arcana:
  root_rel_path: ../../..
---

# Integrate React App

Depending upon whether your React Web3 app is a simple React app or a React app that uses [Wagmi](https://wagmi.sh/) or [RainbowKit](https://www.rainbowkit.com/), you may need to install one or more of the following {{config.extra.arcana.sdk_name}} packages - `auth`, `auth-react`, and `auth-wagmi`.

* If your application is built using the React framework, you need to install both the [`auth`](https://www.npmjs.com/package/@arcana/auth) package and the [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react) package. Next, you must integrate the app with the {{config.extra.arcana.sdk_name}}, instantiate and initialize the `AuthProvider` and also use the React component, `ProvideAuth`. 
* If your application uses Wagmi or RainbowKit, you need to install and integrate the app only with the [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi) wrapper package and create an `ArcanaConnector` to enable user onboarding and signing of blockchain transactions using the {{config.extra.arcana.wallet_name}}.

For detailed instructions, select **one of the options below** as per your application type.

[[integrate-react-nextjs-app|Integrate React/NextJS  :fontawesome-brands-react: :simple-nextdotjs:]]{ .md-button } 

[[integrate-wagmi-app|Integrate Wagmi Connector :material-card-account-mail:]]{ .md-button } 

[[integrate-rainbow-app|RainbowKit Connector :material-card-account-mail:]]{ .md-button }
