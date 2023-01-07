---
slug: /plugnplayauth
id: idplugnplayauth
title: Plug & Play Auth
sidebar_custom_props:
  cardIcon: 💠
arcana:
  root_rel_path: ..
---

# Plug & Play Auth

Previously, the application developer had to implement the user interfaces and logic for onboarding users through different social authentication and passwordless login options supported by the Auth SDK. For example, if the application wanted to support Google OAuth, the developer had to add a specific user interface for the user to choose the 'Google' option and call the Auth SDK `loginWithSocial` method with 'google' as the input parameter. Similarly, for passwordless login, the developer had to add an input field for the user to provide an email ID, which was used to send a login link to the user and call the `loginWithLink` method of the Auth SDK. 

With the Auth SDK's new "plug and play" feature, developers do not necessarily need to build login UI for their application. 

Plug and play feature allows the application to use the [connect](https://authsdk-ref-guide.netlify.app/classes/authprovider#connect) method to bring up a default, pre-built, pop-up user interface with [login options configured by the application developer]({{page.meta.arcana.root_rel_path}}/howto/config_dapp.md) using the [Arcana Developer Dashboard]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md). Once the user selects a login option and authenticates successfully, the pop-up UI disappears from the application context.

The application developer can choose to use the `connect` method for enabling plug-and-play Arcana wallet and use it for user onboarding. Or they can continue to use the `loginWithSocial` and `loginWithLink` methods and build their own user interface in the application to onboard users.