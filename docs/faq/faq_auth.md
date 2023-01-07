---
slug: /faq_auth
id: idfaqauth
title: Auth SDK
sidebar_custom_props:
  cardIcon: 🙋
arcana:
  root_rel_path: ..
toc_depth: 2
---

# Auth SDK

Frequently asked questions about user onboarding, social authentication, signing blockchain transactions and Auth SDK usage.

## Authentication

---

### Can an application use the Auth SDK only for user authentication and disable the Arcana wallet feature altogether?

Yes, if the application **does not perform any blockchain transactions**, the wallet feature can be disabled by setting the [wallet visibility mode]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletuimodes.md) to `false` in the Auth SDK. In this case, the wallet screen will not be visible to the authenticated user as long as no blockchain transaction is triggered. 

If the application does need to perform blockchain transactions, the wallet screen will appear to request user approval for these transactions, even if the wallet visibility mode is set to false. 

If you need to completely disable the Arcana wallet feature in your application, you can request a private build of the Auth SDK by [contacting Arcana]({{page.meta.arcana.root_rel_path}}/support.md) with your use case details."

### Will the Arcana Network's decentralized key generation algorithm be affected if a node with a key share becomes temporarily inaccessible?? 

No, Arcana's [DKG]({{page.meta.arcana.root_rel_path}}/concepts/dkg/index.md) algorithm can still generate the key using the key shares from the other accessible nodes. The algorithm is designed to tolerate a certain number of nodes being inaccessible, depending on the total number of participating nodes.

### Does Arcana Auth use different keys for the same user across multiple blockchains?

If the user uses the same email but different authentication mechanism to log into a application, then Arcana Auth associates a single key for the user across multiple blockchains. The [aggregate login]({{page.meta.arcana.root_rel_path}}/concepts/authtype/aggregatelogin.md) feature enables Auth SDK to figure out that it is the same user using different authentication mechanisms to log in.

---

## Arcana Wallet

---

### How does Arcana wallet allow application developers to manage user experience for signing blockchain transactions?

The Arcana Auth SDK enables an embedded Web3 Arcana wallet in all applications that integrate with the SDK.

While instantiating the `AuthProvider` during Auth SDK integration, application developers can specify the kind of user experience they wish to provide for signing blockchain transactions. The input parameter `alwaysVisible` controls when the Arcana wallet is displayed and what functions are available to a application user.

For details, see [Arcana wallet visibility modes](/docs/walletuimodes).

### How is Arcana wallet different from other non-custodial Web3 wallets?

There are several non-custodial wallets available to the application users.  Arcana wallet has the following key differences:

| Other non-custodial wallets | Arcana wallet |
| :--- | :--- |
| Users need to be responsible for and remember their passphrase.| User does not require to remember any passphrase.|
| Users need to manage keys themselves in case of self-custody wallets. | Arcana wallet offers a sweet spot, users don't have to manage keys as in the self-custody wallet and yet their keys can be generated in a decentralized manner via Arcana wallet, a non-custodial wallet.|
| Typical non-custodial wallets are very challenging to use for those new to Web3. | Arcana wallet offers a really simple Web2-like onboarding experience for new Web3 users along with complete security and ownership.|
