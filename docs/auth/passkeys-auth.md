---
alias: onboard-passkey-auth
title: 'Onboarding Options'
description: 'Integrate Web3 apps that use custom user authentication. Securely assign keys to authenticated users via the Arcana Auth SDK and allow them to sign blockchain transactions.'
arcana:
  root_rel_path: ..
  app_type: "'Passkeys-Auth'"
  app_example_submodule: "`sample-auth-passkey-oauth`"
---

Apps using {{config.extra.arcana.sdk_name}} can enable passkey login in two ways:

* Allow new users to sign up with passkeys, making it the only login option.
* Let existing users set up passkeys as an alternative login method, alongside other social login options. 

## Passkey Sign-up

To sign up with passkeys, use `registerWithPasskey()`, followed by `loginWithPasskey()` to sign up and log in in one step. The user must provide a unique identifier—this could be a name, email, device ID, biometrics data, PIN, or pattern. This sign-up flow is ideal for apps that only allow passkey onboarding. [[onboard-passkey-signup| :material-note-text:{ .icon-color } See details...]]

## Passkey Login

To use passkeys as an alternative login, users first need to onboard through another method, like social login. Once logged in, they can set up a passkey for future logins. Use `linkPasskey()` to create and associate passkey with the app or website. Next time, when user chooses passkey option to log in, the app can call `loginWithPasskey()`, triggering the device or browser to display a UI where the user can choose the previously set passkey. This flow works best for apps that support multiple onboarding methods. [[onboard-passkey-login| :material-note-text:{ .icon-color } See details...]]
