# Intent Explorer

The [Arcana Intent Explorer](https://explorer.arcana.network/) is used to check the status or details of an [intent](../intent/). To view intent details in the Intent Explorer, you need the unique [intent identifier](./#intent-identifier).

Each stage of chain abstracted transaction processing can be viewed in the Intent Explorer. All the intent details are populated once the intent is fulfilled and the transaction is complete.

Intent Explorer

## Intent Identifier

Each [intent](../intent/) is associated with a unique identifier.

How you access this identifier depends on whether you’re using the Arcana CA Wallet or a third-party wallet in a Web3 app integrated with the Arcana CA SDK.

### Arcana CA Wallet

When using the Arcana CA Wallet for issuing a chain abstracted transaction, you can obtain the intent identifier by clicking 'View Intent.'

The 'View Intent' option becomes available in the transaction UI after a user authorizes a transaction that involves chain abstraction. The transaction is then published to [solvers](../solver/), who compete to provide liquidity on the destination chain as specified in the intent.

Get Intent Identifier

To find the intent identifier for past transactions:

- Open the 'Activity' tab in the CA Wallet to view your transaction history.
- Click the down arrow next to a transaction to expand its details.
- In the details, click 'View Intent' to see the unique intent identifier for that transaction and other intent details.

Activity Tab: Get Intent Identifier

}

### Third-party Wallets

Accessing the intent identifier for a chain-abstracted transaction issued through a third-party wallet depends on how the Web3 app is built and integrated with the Arcana chain abstraction SDK.

The Arcana CA SDK provides methods and hooks that developers can use to:

- Implement chain-abstracted transactions.
- Show transaction progress, including the intent identifier, in the app’s UI.

Developers can:

- Add code to let users view intent details before authorizing a chain abstracted transaction.
- Use SDK hooks to track events and [progress after the intent is published](https://ca-sdk-ref-guide.netlify.app/types/progressstep), retrieving the intent identifier once it’s created.
- Offer options in the UI to display the intent identifier or a button to view details at different stages (for example, when liquidity is supplied or the intent is fulfilled).

For Web3 apps using the Arcana CA Wagmi SDK, no extra code is needed. The 'View Intent' option is already built into the transaction UI. Users can click it to open the Intent Explorer and see the intent details and identifier.

Previous Transactions

Unlike the Arcana CA Wallet activity tab, the chain abstraction SDKs do not provide a mechanism to access the intent identifier for past transactions.

If required for transparency or compliance, the developers can provision saving and tracking the intent identifiers for past transactions in the context of the Web3 app by listening to the event data through SDK hooks.
