---
alias: index-integrate-app
title: 'Integrate App'
description: 'Integrate Web3 apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

# Integrate App

To integrate a Web3 app with the {{config.extra.arcana.sdk_name}}, first register and configure the app with Arcana Network, install the {{config.extra.arcana.sdk_name}}, select the appropriate integration method based on your application type, and then follow the instructions to integrate the app.

!!! note

      {% include "./text-snippets/warn_latest_sdk_version.md" %}

**Prerequisites**

1. Go to the {{config.extra.arcana.dashboard_name}} and [[configure-auth|register your application]]. Save the **{{config.extra.arcana.app_address}}** assigned to the registered app. This will be required during integration.
2. Configure the {{config.extra.arcana.sdk_name}} user onboarding settings via the {{config.extra.arcana.dashboard_name}} . See [[index-configure-auth|how to configure authentication providers]] to onboard users.

**Select Integration Method**

Depending upon whether your Web3 app is a vanilla HTML/CSS/JS app, a React app, or a React app that uses [Wagmi](https://wagmi.sh/), you may need to install one or more of the following {{config.extra.arcana.dashboard_name}} packages - `{{config.extra.arcana.auth_sdk_pkg_name}}`, `{{config.extra.arcana.react_sdk_pkg_name}}` and `{{config.extra.arcana.wagmi_sdk_pkg_name}}`.

* If your application is built with vanilla HTML/CSS and JavaScript, you can directly install and integrate the app with the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package.
* If your application is built using the React framework, you need to install both the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package and the [`{{config.extra.arcana.react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-react) package. Next, you must integrate the app with the {{config.extra.arcana.sdk_name}}, create and use  `AuthProvider` and also the React component, `ProvideAuth`. 
* If your application uses Wagmi or RainbowKit, you need to install and integrate the app **only** with the [`{{config.extra.arcana.wagmi_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-wagmi) wrapper package and create an `ArcanaConnector` to enable user onboarding and signing of blockchain transactions using the {{config.extra.arcana.wallet_name}}.

For detailed step-by-step integration instructions, select **one of the options below** as per your application type.

[[integrate-vanilla-app|Integrate Vanilla JS App :material-language-javascript:]]{ .md-button }

[[integrate-react-nextjs-app|Integrate React/NextJS App :fontawesome-brands-react: :simple-nextdotjs:]]{ .md-button }

[[integrate-vue-app|Integrate Vue App :material-vuejs:]]{ .md-button }