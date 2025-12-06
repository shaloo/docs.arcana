# Allowances

The Arcana CA SDKs requires allowances.

Through allowances, a user permits the use of EOA funds in the source chains. The protocol uses these funds to pay the gas fee and the transaction amount on the destination chain.

The default allowance limit set in the CA SDK for each supported chain is `unlimited`.

Developers can change the allowance for each chain abstracted transaction. They can do this using the `setOnAllowanceHook` hook.

Users can review the chain abstracted transaction details via [intent](../intent/). The intent details list the amounts collected per source chain to transact on the destination chain. Users can choose to accept or reject a chain abstracted transaction. They cannot change allowances specified by the developers.

Until a user **permits** allowance, the Arcana Vault contracts on the source chains cannot collect the user funds.

By approving allowances for chain abstraction on the source chains, users can:

- Spend anywhere with funds from two or more source chains.
- Bypass bridging to enable liquidity on the destination chain.
- Transact on newer chains with zero or insufficient liquidity.

Users must pay a **gas fee to set up the allowance**. This is besides the gas fee payable for the transaction on the destination chain.

In some cases, Arcana may sponsor this gas fee for setting up the allowances.

## How Allowances Work?

Here is how the allowances enables chain abstracted transactions:

1. User approves the protocol to access funds from two or more source chains.
1. Protocol unifies user balance across these chains.
1. Unified funds go into protocol vaults.
1. The protocol presents the user with an intent to transact on the destination along with amount and fee details.
1. The user signs the intent. Solvers then supply liquidity in the user's EOA to transact on the destination chain.
1. User can now transact on any destination chain and pay gas fee.
1. The protocol settles transactions with the solvers using the funds collected on the source chains.

## Allowance Options

Users of the Arcana CA wallet have two allowance setup choices that differ by:

- Which chains are included for chain abstraction allowance setup?
- Who pays the gas fees for the allowance transaction?

| Option | Chains included | ETH Balance Required | User Pays Gas Fee | Arcana Pays Gas Fee | | --- | --- | --- | --- | --- | | 1. | Ethereum Mainnet + Avalanche + L2 chains | Yes | `$1`-`$5` (as per current Ethereum Mainnet gas price) | Avalanche + L2 only | | 2. | Avalanche + L2 chains | No | Nothing | All gas sponsored | | 3. | Avalanche + L2 chains + BSC | No | Nothing | All gas sponsored\* |

\* For BSC chain, the gas fee for the allowance setup transaction is capped at $0.05. If gas fees are high, the allowance setup transaction may fail.
