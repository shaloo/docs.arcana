---
slug: /indexuserauth
id: idindexuserauth
sidebar_custom_props:
  cardIcon: 📺
arcana:
  root_rel_path: ../..
---
# Onboard Users

User onboarding requires developers to first register their applications and configure user onboarding providers using the Arcana Developer Dashboard. After that, users must install and integrate the Auth SDK with their application.

Developers can choose to enable user onboarding in their applications by either using built-in login UI in the Auth SDK or building their own customized user login interfaces and simply call the Auth SDK functions to onboard users.

To use a built-in default user login UI, developers can directly use the [plug-and-play authentication feature]({{page.meta.arcana.root_rel_path}}/concepts/plugnplayauth.md) to enable user authentication. Alternately, they can build their own UI and enable social login or password-free authentication.

[How to enable 'Plug & Play' Auth? :fontawesome-solid-plug:](./wallet_plugnplay.md){ .md-button }

[How to enable 'Social Login'? :fontawesome-solid-users:](./build_social/index.md){ .md-button } 

[How to enable 'Password-free Login'? :material-email-open-outline:](./wallet_plugnplay.md){ .md-button }

!!! note

    Arcana supports the [aggregate login]({{page.meta.arcana.root_rel_path}}/concepts/authtype/aggregatelogin.md) feature that can identify application users even if they use different authentication mechanisms to log in. Aggregate login ensures there are no duplicate user identities or Arcana Web3 wallet addresses assigned to the same user.  

    Aggregate login feature works **only if** the user specifies the **same** email ID to register with different social authentication providers and password-free login.
