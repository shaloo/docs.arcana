Unified balance shows all the liquidity in a user's EoA account across multiple chains in one view. It lets users transact seamlessly on any chain without needing bridges or pre-provisioning gas for token swaps. Chain abstraction handles all the complexity involved in the multi-chain transaction while enabling better UX through a single intent approval.

For instance, let us take the case where a user intends to spend 18 USDC on Scroll and does not have any balance on Scroll.

* Optimism: 0.1 ETH, O USDT, 0 USDC
* Arbitrum: 0 ETH, 12 USDT, 0 USDC
* Base: 0 ETH, 10 USDT, 0 USDC
* Scroll: 0 ETH, 0 USDT, 0 USDC

To spend 18 USDC on Scroll (destination chain) with the given liquidity fragmentation, it would typically require multiple clicks and steps for swapping or bridging different assets available on the source chains, so that user can convert the assets to the desired token balance on Scroll. 

Through chain abstraction, users can conveniently view the consolidated token balance across Arbitrum, Base, and Optimism. This simplifies the process of sending 18 USDC on Optimism, as users can simply sign the intent without the need for bridging, swapping, or considering the optimal routes. 

CA Feature: Cross-Chain Swap

- Allows users to spend assets on a destination chain without prior liquidity.
- Enables asset combination, combining multiple supported assets from different source chains to collate the payable amount.
- Users can spend the combined balance on any destination chain.

<figure markdown="span">
  <img alt="With CA" src="{{config.extra.arcana.img_dir}}/ca_unified_balance.{{config.extra.arcana.img_png}}"/>
  <figcaption>Single chain liquidity vs. Unified Balance with Chain Abstraction</figcaption>
</figure>