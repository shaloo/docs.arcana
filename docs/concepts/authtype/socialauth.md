---
slug: /socialauth
id: idsocialauth
title: Social Authentication
sidebar_custom_props:
  cardIcon: ▶️
arcana:
  root_rel_path: ../..
---

# Social Authentication

<img src="/img/icons/i_an_socialauth_light.png#only-light" width="50"/>
<img src="/img/icons/i_an_socialauth_dark.png#only-dark" width="50"/>

Social authentication allows applications to onboard users and validate their identity through popular Web2 authentication provider. Arcana Auth SDK supports social authentication in Web3 applications for the following providers:

{% include "./text-snippets/auth_supported.md" %}

In Web2 applications, social authentication is typically triggered by a pop-up or redirect to a provider chosen by the user. This is a familiar and easy way for users to onboard new applications without managing multiple identities. However, a centralized system with a few organizations controls user authentication. 

In the Web3 ecosystem, decentralized systems of actors use trustless protocols and cryptography to verify user identity in a decentralized manner. These systems use encrypted, sharded keys that are not stored with any single entity, but users must manage their own secret keys, which can be a barrier to entry for Web3 applications. 

Auth SDK lowers this barrier by providing a convenient and secure way for users to onboard Web3 applications in a decentralized manner.

!!! info  "Aggregate Logins"

    Arcana supports the [aggregate login]({{page.meta.arcana.root_rel_path}}/concepts/authtype/aggregatelogin.md) feature that can identify application users even if they use different authentication mechanisms to log in. Aggregate login ensures there are no duplicate user identities or Arcana Web3 wallet addresses assigned to the same user.  

    Aggregate login feature works **only if** the user specifies the **same** email ID to register with different social authentication providers and password-free login.