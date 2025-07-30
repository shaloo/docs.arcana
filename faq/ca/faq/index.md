## General

Why is CA not supported by all apps out of the box?

There's no universal approach to interoperability in the blockchain world. There are many ways to address interoperability and Chain Abstraction (CA) is one of them.

Enabling interoperability into every app is complex. App contracts have to be ported to enable cross chain transactions across all chains where interoperability must work. This is not scalable.

The Arcana chain abstraction protocol is a more scalable approach to interoperability. It offers intent-based chain abstraction to Web3 apps.

How can I try chain abstraction?

You can use a Web3 app integrated with the Arcana chain abstraction SDK.

Alternatively, you can try the standalone Arcana CA wallet. This is a limited feature Web3 wallet. Its purpose is to showcase unified balance and chain abstracted transactions when using some of the select Web3 apps.

**Developers**: Integrate Web3 app with Arcana `ca-sdk` and enable unified balance. With unified balance Web3 app users can spend on any chain. Refer to the list of [supported chains and assets](../../../web3-stack/ca_stack/) for details.

**Wallet Users:** [Download](https://chromewebstore.google.com/detail/arcana-wallet/nieddmedbnibfkfokcionggafcmcgkpi) and use the Arcana CA wallet in the context of any [supported app, chains and tokens](../../../web3-stack/ca_wallet_stack/).

How does chain abstraction protocol decide which chain to source the tokens from?

Let us take the following case:

Wallet Balance

*Optimism:* 1 ETH

*Arbitrum:* 1 ETH

*Scroll:* 0 ETH

**User Intent:** Spend 0.5 ETH on Scroll

The selection of source chains and tokens for a chain abstracted transaction is governed by the following logic:

- Source chains are sorted by token balance (descending order)
- Chains with the same balance are sorted by gas price (ascending order)

If multiple chains have the same balance, the one with lower gas price will be picked up to source the tokens.

The protocol selects the first chain in the sorted list. If its balance isn’t enough to cover the transaction amount and gas on the destination chain, it automatically uses the next chain(s) as needed.

## CA SDK

How do I fix the polyfill issues right after import statement when integrating React and Vite app with the Arcana CA SDK?

To fix polyfilling issues, make sure `vite.config.ts` has the polyfilling options configured.

```
import { defineConfig, Plugin } from "vite";
import react from "@vitejs/plugin-react";
import { nodePolyfills, PolyfillOptions } from "vite-plugin-node-polyfills";
import tailwindcss from "@tailwindcss/vite";

const nodePolyfillsFix = (options?: PolyfillOptions | undefined): Plugin => {
return {
    ...nodePolyfills(options),
    resolveId(source: string) {
    const m =
        /^vite-plugin-node-polyfills\/shims\/(buffer|global|process)$/.exec(
        source
        );
    if (m) {
        return `node_modules/vite-plugin-node-polyfills/shims/${m[1]}/dist/index.cjs`;
    }
    },
};
};

// https://vite.dev/config/
export default defineConfig({
plugins: [
    react(),
    tailwindcss(),
    nodePolyfillsFix({
    include: ["buffer"],
    globals: {
        Buffer: true,
        global: true,
        process: true,
    },
    }),
],
define: {
    "process.env": {},
},
});

```

Is the amount refunded if the chain abstracted transaction fails?

Yes. It may not happen instantly.

For chain abstracted transaction safety, follow these guidelines:

1. **Failed transactions?** *Don't panic* - you'll get your tokens back automatically. It may happen in the next settlement cycle. Usually it happens within 15 minutes. But it may take an hour in some cases.
1. **Before transacting:** Always check the transaction details. Review the applicable gas fee, total amount payable, before issuing a transaction.
1. **During transacting:** The status of the chain abstracted transaction is displayed in the app's context. Click on 'View Intent' details link. **Save** the unique intent identifier associated with the transaction. You'll need the **intent identifier** to track a failed transaction if something goes wrong.
1. **Track your transaction:** Use the [Arcana Intent Explorer](https://explorer.arcana.network/) with your intent ID to track status.

**Critical:** Keep your app/wallet open and logged. Especially if you encounter a failed transaction. Refunds often complete within 15 minutes. Note that the session must stay active for a refund to happen.

1. **No refund after 1 hour:** The protocol auto-retries, but you must stay logged in. If you closed the app/wallet, reopen and log back in to enable refund processing. If you did not receive a refund, contact Arcana team. Use any [support](../../../support/) channel. Make sure you mention the **intent identifier** that failed to refund or your wallet address with date / time of the transaction.

**Bottom line:** Your funds are protected. Failed transactions always get refunded. For failed transactions, the protocol itself starts the refund process. If for some reason that does not work, contact [support@arcana.network](mailto:support@arcana.network).

Viewing Refund

To view the refund, a user must open or log into the app and access the wallet. For refunds, ensure that an active session exists. The same wallet should be active as the one used to sign the intent and confirm the chain abstracted transaction.

Why is liquidity fragmentation an issue and how does CA solve it?

Liquidity fragmentation is an issue because it makes it difficult for users to spend their assets on any chain.

Let us take a simple case of a user's wallet that contains 3 USDC on Arbitrum and 2 USDC on Optimism.

If the user intends to send 4 USDC on Base, it is not possible to do so through a traditional wallet. This is because there is liquidity fragmentation for USDC in the wallet across Arbitrum and Optimism.

To be able to send USDC on Base, user must perform several complex steps.

First, there is no USDC on Base to be sent.

User cannot directly spend USDC on Base. This is despite enough USDC tokens when put together on the other two chains in the same wallet account.

To spend on Base, the user must bridge tokens from one or more source chains. That is a complex, multi-step, multi-click, time-consuming process.

It also needs non-trivial knowhow about secure bridging and getting the best token exchange deals.

Next, the user must to switch the network to Base and then send the tokens.

[Chain Abstraction (CA)](../../../concepts/ca/chain-abstraction/) lets user view unified balance across the source chains. CA lets users spend 4 USDC on Base with a single click.

The user does not have to convert the tokens on Optimism or Arbitrum to Base tokens to make this transaction on Base. With unified balance, onboarding a new chain does not necessarily mean that the user must first get tokens on the new chain.

The user can pledge or sign an intent to send tokens from any of the source chains to the destination chain.

How can a Web3 developer enable unified balance for dApp users?

Download and [install the appropriate CA SDK flavor](../../../ca/ca-sdk-installation/) as per the app type.

- **Web3 apps**: Install the [Arcana CA SDK](https://www.npmjs.com/package/@arcana/ca-sdk). Check out the integration example in [codesandbox](https://codesandbox.io/p/github/arcana-network/ca-sdk-example/main)
- Web3 apps using the **Wagmi library**: Install the [Arcana CA Wagmi SDK](https://www.npmjs.com/package/@arcana/ca-wagmi). Try the [codesandbox](https://codesandbox.io/p/github/arcana-network/ca-wagmi-example/main) integration example.

Refer to the respective SDK quick start guide for integration details.

I'm a Web3 wallet user, how can I enjoy unified balance with chain abstraction?

Web3 wallet users can unify assets across chains and spend on any chain. Log into a Web3 app integrated with the Arcana CA SDK, use any third-party browser-based wallet to issue chain abstracted transactions.

Alternatively, users can [download](https://chromewebstore.google.com/detail/arcana-wallet/nieddmedbnibfkfokcionggafcmcgkpi) and install the standalone Arcana CA wallet. It is a browser extension that can be deployed and used in the context of any supported [Web3 app](../../../web3-stack/ca_wallet_stack/#apps).

Why do Arcana CA wallet users need to pay gas fees to set up CA with Layer 1 chains?

When setting up Arcana chain abstraction to include Layer 1 chains, users need ETH to pay gas fees for signing the token allowance transaction with the Arcana vault smart contract. The Arcana standalone CA wallet doesn't cover these Layer 1 chain gas fees. As a result, users who choose to include Layer 1 chains in their CA scope must pay these gas fees themselves to set up the CA allowance.

What is a CA allowance and why are allowances needed?

Allowance or 'Permit' in the blockchain context allows a third party such as a smart contract, to perform transactions. This transaction happens from a user's EOA for a specified amount — without accessing the user's private key.

In the Arcana's CA context, [allowances](../../../concepts/ca/allowances/) enable unified balance and chain abstracted transactions. This lets users spend on any destination chain provided they have sufficient funds on the source chains. Allowance lets the protocol collect required funds from the source chains. It uses these funds to pay for gas and the transaction amount.

Which chains and ERC20 tokens does the unified balance feature support for chain abstraction SDKs?

Refer to the latest [supported chains and token list](../../../web3-stack/ca_stack/).

For the standalone Arcana CA wallet used to demonstrate chain abstraction the [supported chain and token list](../../../web3-stack/ca_wallet_stack/) may vary from the SDK. It can be used only in the context of a limited set of [supported apps](../../../web3-stack/ca_wallet_stack/).

Does integration CA SDK automatically enable an in-app CA wallet?

No there is no built-in in-app wallet offered by the Arcana SDKs. Web3 apps integrating with the Arcana CA SDK must use a third-party wallet for blockchain transactions.

How can a Web3 app enable unified balance for a user account?

The app must download, install and integrate with the CA-SDK. Then use the EIP-1193 provider to access the unified balance in the context of an authenticated user. See [Arcana CA SDK Reference](https://ca-sdk-ref-guide.netlify.app/) and [the usage guide](../../../ca/ca-usage-guide/) for details.

Can Arcana CA SDK work with Wagmi Web3 app?

For Web3 app built using Wagmi, integrate with the Arcana CA Wagmi SDK.

Can the Wagmi apps enable unified balance and chain abstraction?

Yes. Integrate teh app with both the CA SDKs to enable unified balance and chain abstraction: * Arcana CA SDK * Arcana CA Wagmi SDK

The `ca-wagmi` SDK replaces the Wagmi hooks: `useSendTransaction` and `useWriteContract`.

It also provides hooks such as `useBalance`, `useBalanceModal` and `useCAFn`. These hooks enable unified balance plug-and-play popup modal and chain abstracted `bridge`, `transfer` functions.

For details see [Arcana CA Wagmi SDK Quick Start Guide](../../../quick-start/ca-wagmi-quick-start/) and the [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app/).

Who is the target audience for the Arcana CA SDKs?

Arcana CA SDKs help Web3 dApp developers handle fragmented blockchain assets, letting users spend on any chain.

CA SDK can integrates with dApps to offer unified balances across chains and chain abstracted transactions.

For a complete list of real life applications of unified balance, see [use cases](../../../ca/introduction/use-cases/) section.

Who is the target audience for the standalone Arcana CA wallet?

The standalone Arcana CA wallet is meant for wallet users. It is not a full featured wallet.

It showcases chain abstracted transactions for some of the popular [Web3 apps](../../../web3-stack/ca_wallet_stack/). Users can try viewing unified balance and trying out chain abstraction.

CA Transaction Limit

The standalone Arcana CA wallet has a $100 limit for any chain abstracted transactions

Transfers on the same chain have no such limit.

Give an example of how the CA SDK solves liquidity fragmentation?

**Liquidity Fragmentation**

Suppose a user has:

- Arbitrum: 3 USDC
- Optimism: 4 USDC
- Base: 0 USDC
- Ethereum: 0.001 ETH

The user wants to send 5 USDC to Base.

No single chain has enough funds, so liquidity fragmentation complicates the process. The user must figure out how to bridge, convert, and move assets to Base, which is complex and time-consuming.

**How unified balance and chain abstraction solve this**

With chain abstraction, the user sets up allowances once. Allowances control how much can be deposited from each source chain to Arcana vaults. Solvers provide liquidity on Base, and the protocol settles payments using these deposits.

The user signs an intent specifying the amount to deposit from source chains for the destination chain. Arcana CA collects pledged tokens and fees based on allowances. Solvers compete to provide liquidity in the user's Base EOA. After signing, the user gets liquidity almost instantly and can complete the 5 USDC transaction on Base seamlessly.

Can I request gas tokens using ERC20 through Arcana Chain Abstraction??

Yes, you can request gas tokens using ERC20 via Chain Abstraction.

For example, if you have 13 USDC and 0 ETH on Optimism but need to make a 15 USDC transaction requiring 0.0000001 ETH for gas, you'll need an extra 2 USDC plus the gas fee.

You can pledge or sign an intent to cover for the total USDC and gas fees. You can use the funds from other supported chains like Arbitrum or Base. Assumption: You have enough USDC to cover the deficit and fees.

Once you sign the intent, Arcana CA SDK supplies the needed USDC and gas in a single transaction.

Can a user review intent details before issuing a chain abstracted transaction?

Yes.

Users can review the intent details before issuing a CA transaction issued through the Arcana CA wallet. Apps integrated with the CA SDK displays the intent details from within app's context. The chain abstracted transaction occurs when a user approves it. The app can enable any third-party browser-based wallet to let the user issue a chain abstracted transaction.

Before submitting a transaction, user can click 'View Intent' to see the intent details. Once the transaction is successful, there are options to view the intent details as well as the transaction details.

To view the intent details later, user must note the intent identifier. Refer tot the intent details displayed in the 'View Intent' screen. Note it before confirming the transaction.

Use the Arcana Intent Explorer accessible at: <https://explorer.arcana.network/> to view the intent details.

You must enter the intent ID to view details at a later time.

View Intent Details

Does chain abstracted `transfer` allow funds deposit in a smart contract? Does it cause blockchain state update?

No. `transfer` does not support `data`.

Use [`request` with `sendTransaction`](https://ca-sdk-ref-guide.netlify.app/#quick-start) to deposit funds to a smart contract and update the blockchain state.

Why isn't this a normal transaction as balance exists on the destination chain?

Suppose you try to send 0.2 USDC from a 0.25 USDC balance, but the transaction uses funds from other chains. This is not an error.

A normal transaction requires both enough tokens and enough gas for fees. Even if you have enough tokens (0.2 < 0.25 USDC), the remaining balance may not cover gas fees. If native funds can't cover both the transaction and gas, the protocol pulls from other chains' allowances. This makes it a chain-abstracted transaction instead of a normal one.

## CA Wallet

Is the standalone, browser-based CA wallet meant for Web3 users?

Arcana offers the standalone, browser-based wallet meant for demonstration purposes. Web3 users can use this wallet to view unified balance and try chain abstracted transactions.

This is not a full-featured wallet. It does not work with any Web3 app. Use this wallet with any of the [supported Web3 applications](../../../web3-stack/ca_wallet_stack/#apps).

Where can a user download the Arcana CA wallet?

[Download](https://chromewebstore.google.com/detail/arcana-wallet/nieddmedbnibfkfokcionggafcmcgkpi) the CA wallet in the Chrome Store.

What are the available options for allowance setup?

There are two options:

To use chain abstraction, you can select different types of chains. It can be a combination of L1 and L2 chains or the L2 chains only:

1. L1 + L2 + Avalanche

   For example:

   - Ethereum, Avalanche and/or any other supported L2 EVM-compatible chains
   - Ethereum and any other supported L2 EVM-compatible chains
   - Fuel, Avalanche and/or any other supported L2 EVM-compatible chains
   - Fuel and any other supported L2 EVM-compatible chains
   - Ethereum and Fuel

1. L2 + Avalanche

   For example,

   - Avalanche and any other supported L2 EVM-compatible chains
   - Any supported L2 EVM-compatible chains

How do the allowance setup options differ in usage?

If you choose option 1, your wallet must have native token to cover gas fees on the L1 chain for the allowance transaction.

If you select option 2 (Only L2 chains and/or Avalanche ) then it is not mandatory. Arcana sponsors the gas fee for the allowance transaction.

Why must a user set up allowance before using the CA wallet?

Allowances let users set the largest amount they permit for transfer from a source chain. The [chain abstraction](../../../concepts/ca/chain-abstraction/) protocol pulls these funds and deposits them into the Arcana vaults on the source chains. The protocol uses these deposits to pay for the transaction on the destination chain.

Why must a user have gas tokens in the wallet to set up allowance for Layer 1 blockchains?

Layer 1 chains such as Ethereum and Fuel require the user to pay for the gas fee and pay for the allowance set up transaction. For Layer 2 chains and Avalanche, the gas fee required to make the allowance set up transaction is sponsored by Arcana until further notice.

Limited Gas Sponsorship

The gas fee sponsored for the allowance setup transaction is limited.

For BSC chain, it is capped at $0.05. If gas fees are high at the time of allowance setup, then the allowance setup transaction may fail if the user does not have tokens to pay for the gas fee.

Does the Arcana CA wallet allow any CA transactions?

The chain abstracted transaction request for funds (RFF) limit is $100.

Does the Arcana CA wallet support Testnet as well as Mainnet?

Use the Arcana CA wallet to issue chain abstracted transactions for any of the supported Web3 *apps, chains and tokens*. See [here](../../../web3-stack/ca_wallet_stack/) for the complete list.

Why is Arcana CA Wallet not shown as an option when using WalletConnect?

When using WalletConnect, if you do not see the

- You haven’t installed the standalone Arcana CA wallet from the Chrome Store.
- You have installed the it but the browser extension is disabled.

If the issue persists, contact [support@arcana.network](mailto:support@arcana.network).

Does the Arcana CA wallet support cross-chain token swaps?

For now, the Arcana CA Wallet allows users to combine a single type of token across supported source chains. They can spend the unified balance of that token on any destination chain.

We are actively working on the cross-chain token swap feature.

Cross-Chain Swap Functionality:

- Allows users to spend assets on a destination chain without prior liquidity.
- Enables asset combination across source chains for unified balance.
- Users can spend the combined balance in any supported token on any destination chain.

Is `window.ethereum` supported by Arcana CA wallet?

Yes.

Note that apps using the EIP-1193 provider that use the Arcana CA wallet may face issues sometimes if they use `window.ethereum`.

This is because `window.ethereum` can be overridden by the latest installed wallet or the last used wallet in the browser.

Apps using EIP-6963 will not see such an issue when using `window.ethereum`.

What is the `bridge` feature in the Arcana CA wallet?

The `bridge` feature in Arcana CA wallet allows users to move tokens in a chain abstracted manner. They can move tokens from two or more source chains to a destination chain near instantly in their wallet.

This feature uses Arcana’s intent-based chain abstraction to bridge user’s funds. No third-party bridge is involved.

Does the Arcana CA wallet support addition of custom ERC-20 tokens?

Yes.

Users can add custom ERC-20 tokens and view token balances in the Arcana CA wallet. The wallet displays default supported tokens such as USDT, USDC, and ETH.

Supported tokens

Custom tokens are not supported for chain abstracted transactions and unified balance.

Unified balance and chain abstracted transactions are applicable for [supported apps, chains, and tokens](../../../web3-stack/ca_wallet_stack/).

What is allowance and why is must allowances be set up for using the Arcana CA wallet?

Allowances enable a third party, such as a smart contract, to perform transactions on behalf of the user. It can issue a deposit transaction from the user's wallet for a specified amount, without accessing the user's private key.

Users must sign allowances on the source chain(s) to enable the Arcana chain abstraction protocol. This permits the Arcana Vault contract to deposit the necessary funds from the source chains.

The deposits are done as per the user controlled allowance settings on the source chains.

This lets the protocol to enables liquidity on the destination chain. A chain abstracted transaction on the destination chain addresses the user's intent.

For some websites the Arcana CA wallet is not displayed despite having the browser extension active?

Arcana Network’s Chain Abstraction Wallet is an injected wallet. This is same as how a wallet such as Rabby works.

If a website does not allow injected Web3 wallets, then it will not show up.

Many websites support one injected provider (like MetaMask) at a time. If more than one injected wallets are active, the website might not recognize all but one, leading to others being hidden.

Also, some websites that need user authorization for security reasons. Such websites ensure that they can accesses the wallet data once the user explicitly grants permission. Such sites may not allow the injected wallets or may be optimized for popular injected wallets such as MetaMask.
