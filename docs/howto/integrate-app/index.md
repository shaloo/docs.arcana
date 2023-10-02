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

## Select and Install SDK(s)

Depending upon the type of the Web3 app, developers may need to install one or more of the {{config.extra.arcana.sdk_name}} packages before integrating the SDK with the app. Refer to [[sdk-installation|this table]] and install the appropriate SDK packages.

## Integrate App

After installing the SDK, follow the detailed step-by-step integration instructions, as per the app type: 

[[integrate-vanilla-app|Integrate Vanilla JS App :material-language-javascript:]]{ .md-button }

[[index-integrate-react-app|Integrate React App :fontawesome-brands-react: :simple-nextdotjs:]]{ .md-button }

[[integrate-vue-app|Integrate Vue App :material-vuejs:]]{ .md-button }