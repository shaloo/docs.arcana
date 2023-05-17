---
alias: index-wallet-connectors-onboard-users
title: 'Onboard Users in Apps using Wallet Connectors'
description: 'How Web3 Apps using Wallet Connectors and integrated with the Arcana Auth SDK can onboard users via plug-and-play or custom login UI options.'
arcana:
  root_rel_path: ../../..
---

# Onboard Users: Apps using Wallet Connectors

User onboarding requires developers to first register their applications and configure the authentication providers using the {{config.extra.arcana.dashboard_name}}. Next, install and integrate the app with {{config.extra.arcana.product_name}} product through the `{{config.extra.arcana.auth_sdk_pkg_name}}` and appropriate {{config.extra.arcana.product_name}} package for the wallet connector.

After integrating, the Web3 apps that use the Wallet Connector framework such as Wagmi and RainbowKit can add code to onboard users via the supported authentication providers or the passwordless option. {% include "./text-snippets/user_onboard_options.md" %} 

[[index-wagmi-onboard-users| Wagmi Apps :material-card-account-mail:]]{ .md-button }

[[index-rainbow-onboard-users| RainbowKit Apps :material-card-account-mail:]]{ .md-button }