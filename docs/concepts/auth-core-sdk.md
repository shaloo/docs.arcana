---
alias: concept-authcore
title: 'Arcana Auth Core SDK'
description: 'Arcana Auth Core SDK provides the ability to assign keys to authenticated users via asynchronous distributed key generation protocol.'
arcana:
  root_rel_path: ..
---

# {{config.extra.arcana.auth_core_sdk_name}}

<img src="{{config.extra.arcana.img_dir}}/icons/i_an_authsdk_light.{{config.extra.arcana.img_png}}#only-light" width="50"/>
<img src="{{config.extra.arcana.img_dir}}/icons/i_an_authsdk_dark.{{config.extra.arcana.img_png}}#only-dark" width="50"/>

The {{config.extra.arcana.auth_core_sdk_name}} is a client-side tool for developers to assign Web3 keys to authenticated users in a non-custodial manner. It offers customized key assignments and a customized login flow where an authenticated user does not get redirected to a {{config.extra.arcana.company_name}} hosted site (https://oauth.arcana.network). 

The {{config.extra.arcana.auth_core_sdk_name}} is ideal for apps that use a custom login UI to onboard users and do not need to use the built-in {{config.extra.arcana.wallet_name}} UI. Additionally, developers can use this SDK to build third-party tools that bundle social login and key assignment features.

The {{config.extra.arcana.auth_core_sdk_name}} has limited capabilities as compared to the {{config.extra.arcana.auth_core_sdk_name}}:

* No built-in plug-and-play login UI feature
* No built-in Arcana wallet UI
* No support for Global keys, only app-specific keys (default) are allowed.
* No support for enhanced wallet security via MFA.

Refer to the [usage guide](https://www.npmjs.com/package/@jrstudio/auth-core) for details. Contact [support](mailto:support@arcana.network) to access the latest release. 
