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

To use a built-in default user login UI, developers can directly use the [plug-and-play authentication feature]({{page.meta.arcana.root_rel_path}}/concepts/plugnplayauth.md) to enable user authentication. Alternately, they can build their own UI and enable social login or passwordless authentication.


[How to enable 'Plug & Play' Auth? :fontawesome-solid-plug:](./wallet_plugnplay.md){ .md-button }

[How to enable 'Social Login'? :fontawesome-solid-users:](./build_social/index.md){ .md-button } 

[How to enable 'Passwordless Login'? :material-email-open-outline:](./wallet_plugnplay.md){ .md-button }

!!! note "User Onboarding Options"

     The options displayed by the plug and play, built-in login pop-up UI in the Auth SDK depend upon the ones configured by the dApp developer using the Arcana Developer Dashboard. 
     
     For example, if the dApp chooses to configure only the Google OAuth, then only the Google option will show up in the pop-up login screen:

     <img src="/img/an_wallet_google_auth.png" width="300"></img>
