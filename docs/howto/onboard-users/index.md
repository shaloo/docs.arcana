---
alias: index-onboard-users
title: 'Onboard Users'
description: 'After configuring the Web3 app using the Arcana Developer Dashboard, devs obtain a unique clientId and use it to integrate the app with the Arcana Auth SDK. Use these guides to plug in requisite code in the app for onboarding users via the configured authentication mechanisms. Developers can either use plug and play UI or build their own custom UI to onboard users and simply call Arcana SDK functions for passwordless login or login using the authentication providers.'
arcana:
  root_rel_path: ../..
---
# Onboard Users

User onboarding requires developers to first register their applications and configure the authentication providers using the {{config.extra.arcana.dashboard_name}}. Next, install and integrate the app with the {{config.extra.arcana.sdk_name}}.

Developers can choose to enable user onboarding in their applications by either using the default, built-in UI offered by the {{config.extra.arcana.sdk_name}}  through the [[concept-plug-and-play-auth|plug-and-play authentication feature]]. Or they can build customized UI and simply call the {{config.extra.arcana.sdk_name}} functions to onboard users.

[[use-plug-play-auth|Enable Plug-and-Play UI :fontawesome-solid-plug:]]{ .md-button }

[[build-password-less-auth|Build Custom UI for Login via Passwordless Auth :material-email-open-outline:]]{ .md-button }

[[index-build-social-providers|Build Custom UI for Login via Social Providers :fontawesome-solid-users:]]{ .md-button } 

[[index-build-iam-providers| Build Custom UI for login via Custom IAM Providers :fontawesome-brands-aws:]]{ .md-button }
