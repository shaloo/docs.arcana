In the [chain abstraction](../chain-abstraction/) context, an intent represents a user's request to execute a cross-chain transaction when they lack sufficient funds or liquidity on the destination blockchain. An intent specifies what the user is willing to offer (tokens from various source chains) to cover the transaction amount, gas fees, solver fees, and the Arcana chain abstraction (CA) protocol service fee.

The following information is part of an intent:

- **Source Chains:** The blockchains where the user has funds/tokens.
- **Destination Chain:** The blockchain where the transaction will occur (where the user lacks liquidity).
- **Tokens and Amounts:** Specifies which tokens and how much from each source chain will be used.
- **Fees:** Includes CA gas fee (for cross-chain operations), protocol fee (for the service), solver fee (for the liquidity provider), and any supplied gas.
- **Total Amount:** The full cost, combining the transaction amount and all fees.

The intent processing begins when the user signs an intent and authorizes a transaction. A [solver](../solver/) (a liquidity provider) steps in to supply the necessary funds on the destination chain. The protocol is responsible for settling the source chain funds with the respective solver. The intent details shows which solver provided liquidity once the intent is successfully processed.

Intents are tracked via a unique identifier. Users can supply this identifier in the [Arcana Intent Explorer](https://explorer.arcana.network/%5D) to check the intent’s status or details later.

Intent Details

## Stages

Following are some of the key stages of intent processing:

- Intent Accepted - User has agreed to chain abstracted transaction intent and accepted the associated fees
- Intent Hash Signed - User has signed the intent hash
- Intent Submitted - Intent for CA is submitted to the chain
- Intent Collection - Funds associated with the intent are collected on the source chains
- Intent Mined - CA protocol has mined the intent on the chain
- Intent Deposits Confirmed - Deposit on source chains is confirmed
- Intent Fulfilled - The liquidity is supplied on the destination chain by the solver
