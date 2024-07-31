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

The {{config.extra.arcana.auth_core_sdk_name}} is a client-side tool for developers to assign Web3 keys to authenticated users for signing blockchain transactions. Use this SDK instead of the {{config.extra.arcana.sdk_name}} for key assignment or when building a completely whitelisted solution.

When initializing {{config.extra.arcana.auth_core_sdk_name}}, the developer sets the redirect URL. The SDK performs OAuth2 login with the chosen provider and returns the login token from the provider. At the specified redirect URL, the developer uses this token to fetch the user's private key.

!!! an-caution "Limited Feature SDK"

      The {{config.extra.arcana.auth_core_sdk_name}} has limited capabilities as compared to the {{config.extra.arcana.auth_core_sdk_name}}:

      * No built-in plug-and-play login UI feature
      * No built-in Arcana wallet UI
      * No support for Global keys, only app-specific keys (default) are allowed.
      * No support for enhanced wallet security via MFA.

      Refer to the [usage guide](https://www.npmjs.com/package/@jrstudio/auth-core) for details. Contact [support](mailto:support@arcana.network) to access the latest release. 
