---
alias: register-app-gasless
title: 'Register App'
description: 'Register the app using the dashboard and obtain a unique clientId. Use clientId to integrate the app with the Arcana SDKs.'
arcana:
  root_rel_path: ../..
---

# Register App

Learn how to register a Web3 app and get a **unique client identifier** required for integrating with the {{config.extra.arcana.gasless_sdk_name}}.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

## Steps

### 1. Log into Dashboard

{% include "./text-snippets/db_login.md" %}

### 2. Register App

{% include "./text-snippets/db_register_dapp.md" %}

{% include "./text-snippets/save_app_address.md" %}
    
## What's next?

After registering the app, first [[configure-gasless|configure gasless settings]] and then [[web-gasless-integrate|integrate the Web3 app]] with the SDK to enable gasless transactions via third-party browser-based wallets.

## See Also

* [[dashboard-user-guide#delete-application|Deleting Application Entry]]
* [[dashboard-user-guide#manage-configuration-profiles|Managing Testnet and Mainnet Configurations]]
* [[gasless-sdk-usage-guide|{{config.extra.arcana.gasless_sdk_name}} Usage Guide]]