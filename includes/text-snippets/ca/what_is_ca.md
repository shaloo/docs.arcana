In blockchain, managing multiple chains, tokens, and accounts often leads to liquidity fragmentation. Even with sufficient overall balance, users struggle to transact due to funds being spread across chains. They must convert assets into those accepted on the target chain, a complex, time-consuming process not everyone can navigate.

Chain Abstraction lets users view and access a [[ca-top#unified-balance|unified balance]] across chains, enabling transactions on any chain. It shifts the focus to **specifying a clear intent** for the transaction, eliminating the need to manually gather funds spread across chains to execute and fulfill the intent.

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
