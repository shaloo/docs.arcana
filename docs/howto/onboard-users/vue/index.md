---
alias: index-vue-onboard-users
title: 'Onboard Users in Vue Apps'
description: 'How Vue Apps integrated with the Arcana Auth SDK can onboard users via plug-and-play or custom login UI options.'
arcana:
  root_rel_path: ../../..
---

# Onboard Users: React Apps

User onboarding requires developers to first register their applications and configure the authentication providers using the {{config.extra.arcana.dashboard_name}}. Next, install and integrate the app with {{config.extra.arcana.product_name}} product through the `{{config.extra.arcana.auth_sdk_pkg_name}}` package.

After integrating, the Web3 apps that use the Vue framework can add code to onboard users via the supported authentication providers or the passwordless option. {% include "./text-snippets/user_onboard_options.md" %} 

[[use-plug-play-auth|Enable Plug-and-Play UI :fontawesome-solid-plug:]]{ .md-button }

[[index-custom-ui-onboard-users|Use Custom Login UI :fontawesome-solid-plug:]]{ .md-button }