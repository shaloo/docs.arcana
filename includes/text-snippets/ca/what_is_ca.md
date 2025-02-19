For Web3 app users, managing multiple chains, tokens, and accounts often leads to liquidity fragmentation in their wallets. Even with sufficient overall token asset balance, users struggle to transact because funds are scattered across several chains. To transact, users must convert assets from two or more source chains into those accepted on the target chain. This is a complex, time-consuming process not everyone can navigate.

Chain Abstraction lets users view and access a [[concept-unified-balance|unified balance]] across chains associated with their wallet account, enabling them to transact on any chain. It shifts the focus from having to bootstrap funds to transact on the destination chain to **specifying a clear intent** for the transaction. This simplifies the transaction process and makes it accessible to a wider audience.

<figure markdown="span">
  <img alt="With CA" src="{{config.extra.arcana.img_dir}}/an_ca_landing.{{config.extra.arcana.img_png}}"/>
  <figcaption>Arcana's Chain Abstraction</figcaption>
</figure>

## Unified balance

{% include "./text-snippets/unified_balance.md" %}

### Wagmi Plug & Play Widget

{% include "./text-snippets/unified_balance_wagmi_pnp.md" %}

## Allowance

{% include "./text-snippets/allowance.md" %}

## Benefits

Chain abstraction and unified balances simplify and streamline Web3 transactions by offering:

* **Lower Complexity:** Users specify their desired outcome and maximum price. Behind the scenes, solvers handle swaps, conversions, and routing securely and transparently.
* **Unified Liquidity:** Users see a consolidated view of their assets across all chains without needing manual bridges or swaps.
* **Simplified UX:** It eliminates the technical and time-consuming multi-step hurdles, creating a seamless experience for both experts and casual users by eliminating the clutter between user expectation and reality of blockchain ecosystem.
* **Streamlined DX:** Developers can enable unified balances in dApps without altering existing stacks. With the Arcana Chain Abstraction SDK, they can integrate seamlessly—no need to write smart contracts or manage chain switching for transactions on new chains.
