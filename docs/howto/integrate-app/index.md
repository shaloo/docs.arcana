---
alias: index-integrate-app
title: 'Integrate App'
description: 'Integrate Web3 apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

# Integrate App

To integrate with the {{config.extra.arcana.sdk_name}}, Web3 app developers must first use the {{config.extra.arcana.dashboard_name}} to register and configure the app with Arcana Network. 

Next, [select the app type](#select-app-type) and follow the instructions. 

!!! note

      {% include "./text-snippets/warn_latest_sdk_version.md" %}

## Prerequisites

1. Go to the {{config.extra.arcana.dashboard_name}}, [[configure-auth|register your application]] and save the **{{config.extra.arcana.app_address}}** assigned to the registered app. This will be required during integration.
2. Configure the {{config.extra.arcana.sdk_name}} user onboarding settings via the {{config.extra.arcana.dashboard_name}} . See [[index-configure-auth|how to configure authentication providers]] to onboard users.

## Select App Type

Depending upon whether the Web3 app is a vanilla HTML/CSS/JS app, a React app, or a React app that uses [Wagmi](https://wagmi.sh/) or [RainbowKit](https://www.rainbowkit.com/) wallet connectors, developers must install a combination of the following {{config.extra.arcana.product_name}} packages - `{{config.extra.arcana.auth_sdk_pkg_name}}`, `{{config.extra.arcana.react_sdk_pkg_name}}` and `{{config.extra.arcana.wagmi_sdk_pkg_name}}`.

* Web3 apps built with vanilla HTML/CSS and JavaScript can directly install and integrate the app with the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package.

* Simple React or NextJS apps must install both the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package and the [`{{config.extra.arcana.react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-react) package. Next, you must integrate the app with the {{config.extra.arcana.sdk_name}}, create and use  `AuthProvider` and also the React component, `ProvideAuth`. 

* React Apps using the Wagmi or RainbowKit wallet connectors must install both the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package and the [`{{config.extra.arcana.wagmi_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-wagmi) package.  Next, you must integrate the app with the {{config.extra.arcana.sdk_name}} and instantiate the `AuthProvider`. Use the `AuthProvider` to create an `ArcanaConnector` for enabling the {{config.extra.arcana.wallet_name}} to sign blockchain transactions.

For detailed step-by-step integration instructions, select **one of the options below** as per your application type.

[[integrate-vanilla-app|Integrate Vanilla JS App :material-language-javascript:]]{ .md-button }

[[integrate-react-nextjs-app|Integrate React/NextJS App :fontawesome-brands-react: :simple-nextdotjs:]]{ .md-button }

[[integrate-vue-app|Integrate Vue App :material-vuejs:]]{ .md-button }