---
alias: configure-wallet-keyspace
title: 'Manage Keyspace'
description: 'Manage the user experience of having the same wallet address when they log into any app that is integrated with the Auth SDK and uses global keyspace or have a unique address per app with app-specific keys.'
arcana:
  root_rel_path: ../..
---

# Manage Keyspace 

Learn how to manage the user experience of having the same wallet address or unique one across different apps integrated with the {{config.extra.arcana.sdk_name}}. 

## Prerequisites

* Web3 app should be [[register-app-auth| registered]].

## 1. Dashboard Login

Log in to the {{config.extra.arcana.dashboard_name}}. In the 'Manage Apps' screen, click the registered app card. Then click **Configure** dropdown in the LHS navigation area.  Select **Keyspace** to choose the keyspace type.

<figure markdown="span">
  ![Dashboard: Select Keyspace]({{config.extra.arcana.img_dir}}/an_db_keyspace_nav.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Dashboard: Select keyspace</figcaption>
</figure>

The Keyspace Configuration settings are displayed:

<figure markdown="span">
  ![Keyspace Settings]({{config.extra.arcana.img_dir}}/an_db_keyspace_settings.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Keyspace Settings</figcaption>
</figure>

## 2. Select Keyspace Type

Use the **Keyspace** section in LHS navigation to select the **App-specific** (default) or **Global Keys** feature.

{% include "./text-snippets/db_keyspace.md" %}

## What's Next?

{% include "./text-snippets/adv_wallet_customization.md" %}

## See also

* [[dashboard-user-guide|{{config.extra.arcana.dashboard_name}} Users Guide]]
* [[index-wallet-user-guide|{{config.extra.arcana.wallet_name}} Users Guide]]
