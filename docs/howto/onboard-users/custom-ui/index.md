---
alias: index-custom-ui-onboard-users
title: 'Onboard Users: Custom Login UI Options'
description: 'List of options for onboarding users via custom login UI - passwordless login, login via social authentication providers or custom authentication providers.'
arcana:
  root_rel_path: ../../..
---

# Onboard Users: Custom Login UI Options

User onboarding requires developers to first register their applications and configure the authentication providers using the {{config.extra.arcana.dashboard_name}}. Next, install and integrate the app with {{config.extra.arcana.product_name}} product through the `{{config.extra.arcana.auth_sdk_pkg_name}}` and `{{config.extra.arcana.react_sdk_pkg_name}}` packages.

After integrating, the Web3 apps can use custom login UI and add code to onboard users via the supported authentication providers or the passwordless option. {% include "./text-snippets/user_onboard_options.md" %} 

[[build-password-less-auth|Build Custom UI for Login via Passwordless Auth :material-email-open-outline:]]{ .md-button }

[[index-build-social-providers|Build Custom UI for Login via Social Providers :fontawesome-solid-users:]]{ .md-button } 

[[index-build-iam-providers| Build Custom UI for login via Custom IAM Providers :fontawesome-brands-aws:]]{ .md-button }