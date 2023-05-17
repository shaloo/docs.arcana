---
alias: index-rainbow-onboard-users
title: 'Onboard Users in RainbowKit Apps'
description: 'How Web3 Apps using RainbowKit framework and integrated with the Arcana Auth SDK can onboard users via plug-and-play or custom login UI options.'
arcana:
  root_rel_path: ../../../..
---

# Onboard Users: RainbowKit Apps

User onboarding requires developers to first register their applications and configure the authentication providers using the {{config.extra.arcana.dashboard_name}}. Next, install and integrate the app with {{config.extra.arcana.product_name}} product through the `{{config.extra.arcana.auth_sdk_pkg_name}}` and the `{{config.extra.arcana.wagmi_sdk_pkg_name}}` packages.

After integrating, the Web3 apps that use Wagmi can add code to onboard users via the supported authentication providers or the passwordless option. {% include "./text-snippets/user_onboard_options.md" %} 

[[onboard-rainbow-app-pnp-ui| Plug-and-Play UI  :material-card-account-mail:]]{ .md-button }

[[onboard-rainbow-app-custom-ui| Custom Login UI :material-card-account-mail:]]{ .md-button }