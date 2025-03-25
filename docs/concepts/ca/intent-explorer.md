---
alias: concept-intent-explorer
title: 'Intent Explorer'
description: 'What is an Intent Explorer?'
arcana:
  root_rel_path: ..
---

{% include "./text-snippets/ca/intent_explorer.md" %}

##Intent Identifier

Each [[concept-intent| intent]] is associated with a unique identifier.

How you access this identifier depends on whether you’re using the {{config.extra.arcana.company_name}} CA Wallet or a third-party wallet in a Web3 app integrated with the {{config.extra.arcana.company_name}} CA SDK.

### {{config.extra.arcana.company_name}} CA Wallet

When using the {{config.extra.arcana.company_name}} CA Wallet for issuing a chain abstracted transaction, you can obtain the intent identifier by clicking 'View Intent.'  

The 'View Intent' option becomes available in the transaction UI after a user authorizes a transaction that involves chain abstraction. The transaction is then published to [[concept-solver|solvers]], who compete to provide liquidity on the destination chain as specified in the intent. 

<figure markdown="span">
    ![Get Intent Identifier]({{config.extra.arcana.img_dir}}/an_get_intent_id.{{config.extra.arcana.img_gif}}){ .an-screenshots }
    <figcaption>Get Intent Identifier</figcaption>
</figure>

To find the intent identifier for past transactions:

* Open the 'Activity' tab in the CA Wallet to view your transaction history.
* Click the down arrow next to a transaction to expand its details.
* In the details, click 'View Intent' to see the unique intent identifier for that transaction and other intent details. 

<figure markdown="span">
    ![Activity Tab: Get Intent Identifier]({{config.extra.arcana.img_dir}}/an_wallet_intent_id_activity.{{config.extra.arcana.img_gif}}){ .an-screenshots .width_50pc} }
    <figcaption>Activity Tab: Get Intent Identifier</figcaption>
</figure>

### Third-party Wallets

Accessing the intent identifier for a chain-abstracted transaction issued through a third-party wallet depends on how the Web3 app is built and integrated with the {{config.extra.arcana.company_name}} chain abstraction SDK.

The {{config.extra.arcana.ca_sdk_name}} provides methods and hooks that developers can use to:

* Implement chain-abstracted transactions.
* Show transaction progress, including the intent identifier, in the app’s UI.

Developers can:

* Add code to let users view intent details before authorizing a chain abstracted transaction.
* Use SDK hooks to track events and [progress after the intent is published](https://ca-sdk-ref-guide.netlify.app/types/progressstep), retrieving the intent identifier once it’s created.
* Offer options in the UI to display the intent identifier or a button to view details at different stages (e.g., when liquidity is supplied or the intent is fulfilled).

For Web3 apps using the {{config.extra.arcana.ca_wagmi_sdk_name}}, no extra code is needed. The 'View Intent' option is already built into the transaction UI. Users can click it to open the Intent Explorer and see the intent details and identifier.

!!! an-note "Previous Transactions"

    Unlike the {{config.extra.arcana.company_name}} CA Wallet activity tab, the chain abstraction SDKs do not provide a mechanism to access the intent identifier for past transactions.

    If required for transparency or compliance, the developers can provision saving and tracking the intent identifiers for past transactions in the context of the Web3 app by listening to the event data through SDK hooks.