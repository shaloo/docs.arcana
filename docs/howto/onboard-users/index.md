---
alias: index-onboard-users
title: 'Onboard Users'
description: 'Use these guides to add code in the app for onboarding users via the configured authentication mechanisms. Use plug-and-play UI or build custom UI to onboard users.'
arcana:
  root_rel_path: ../..
---
# Onboard Users

User onboarding requires developers to first register their applications and configure the authentication providers using the {{config.extra.arcana.dashboard_name}}. Next, install and integrate the app with the {{config.extra.arcana.sdk_name}}.

After integrating, the Web3 apps can add code to onboard users via the supported authentication providers or the passwordless mechanism. {% include "./text-snippets/user_onboard_options.md" %} 

Note that the user onboarding process may vary depending on the application type as listed below:

[[index-vanilla-onboard-users|Vanilla HTML/CSS/JS Apps :fontawesome-solid-plug:]]{ .md-button }

[[index-react-onboard-users| React Apps :material-card-account-mail:]]{ .md-button }

[[index-vue-onboard-users| Vue Apps :material-card-account-mail:]]{ .md-button }

!!! tip  "Auto-Reconnect Enhancement"

     Earlier, the {{config.extra.arcana.dashboard_name}} SDK did not allow apps to use third-party cookies to facilitate easy user re-login. Now developers can use `canReconnect` and `reconnect` functions of the `AuthProvider` within a 30-min window of the user-logout action. This will allow users to automatically reconnect without re-authentication. See [`canReconnect`](https://authsdk-ref-guide.netlify.app/classes/authprovider#canReconnect) and [`reconnect`](https://authsdk-ref-guide.netlify.app/classes/authprovider#reconnect) for details.
