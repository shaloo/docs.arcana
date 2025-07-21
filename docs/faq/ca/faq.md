---
alias: ca-faq
title: 'CA FAQ'
description: 'Frequently Asked Questions about the Arcana CA SDK.'
arcana:
  root_rel_path: ..
---

## CA SDK

??? an-faq "How do I fix the polyfilling issues right after import statement when integrating React and Vite app with the {{config.extra.arcana.ca_sdk_name}}?"

    To fix polyfilling issues, make sure `vite.config.ts` has the polyfilling options configured.

    ```ts
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

??? an-faq "Is the amount refunded if the chain abstracted transaction fails?"

    Yes. It may not happen instantly.

    For chain abstracted transaction safety, follow these guidelines:
    
    1. **Failed transactions?** *Don't panic* - you'll get your tokens back automatically.
       It may happen in the next settlement cycle. Usually it happens within 15 minutes.
       But it may take an hour in some cases.
   
    2. **Before transacting:** Always check the transaction details. Review the 
      applicable gas fee, total amount payable, before issuing a transaction. 
   
    3. **During transacting:** The status of the chain abstracted transaction is displayed
       in the app's context. Click on 'View Intent' details link. **Save** the unique intent
       identifier associated with the transaction. You'll need the **intent identifier**
       to track a failed transaction if something goes wrong.
   
    4. **Track your transaction:** Use the 
       [{{config.extra.arcana.ca_intent_explorer_name}}]({{config.extra.arcana.ca_intent_explorer}})
       with your intent ID to monitor status. 
       
       **Critical:** Keep your app/wallet open and logged. Especially if you encounter a failed
       transaction. Refunds require an active session and typically complete within 15 minutes.
   
    5. **No refund after 1 hour:** The protocol auto-retries, but you must stay logged in.
       If you closed the app/wallet, reopen and log back in to enable refund processing.
       If you did not receive a refund, contact {{config.extra.arcana.company_name}} team.
       Use any [[index-support|support]] channel. Make sure you mention the **intent
       identifier** that failed to refund or your wallet address with date / time of the transaction.

    **Bottom line:** Your funds are protected - failed transactions always get refunded, either automatically or with the team's assistance.

    !!! an-caution "Viewing Refund"

        To view the refund, the user must open or log into the app and access the wallet that was used to sign the intent and confirm the chain abstracted transaction.

??? an-faq "Why is liquidity fragmentation an issue and how does CA solve it?"
    
    Liquidity fragmentation is an issue because it makes it difficult for users
    to spend their assets on any chain. 
    
    Let us take a simple case of a user's wallet that contains 3 USDC on Arbitrum
    and 2 USDC on Optimism. 
    
    If the user intends to send 4 USDC on Base, it is not possible to do so through
    a traditional wallet. This is because there is liquidity fragmentation for 
    USDC in the wallet across Arbitrum and Optimism. 
    
    To be able to send USDC on Base, user must perform several complex steps.
    
    First, there is no USDC on Base to be sent.

    User cannot directly spend USDC on Base. This is despite enough USDC
    tokens when put together on the other two chains in the same wallet account.
    
    To spend on Base, the user must bridge tokens from one or more source chains.
    That is a complex, multi-step, multi-click, time-consuming process. 
    
    It also needs non-trivial knowhow about secure bridging and getting the best
    token exchange deals. 
    
    Next, the user must to switch the network to Base and then send the tokens. 
    
    [[concept-ca|Chain Abstraction (CA)]] lets user view unified balance across
    the source chains. CA lets users spend 4 USDC on Base with a single click. 
    
    The user does not have to convert the tokens on Optimism or
    Arbitrum to Base tokens to make this transaction on Base. With unified balance, 
    onboarding a new chain does not necessarily mean that the user must
    first get tokens on the new chain. 
    
    The user can pledge or sign an intent to send tokens from any of the source
    chains to the destination chain.

??? an-faq "How can a Web3 developer enable unified balance for dApp users?"

    Download and [[ca-sdk-installation|install the appropriate CA SDK flavor]]
    as per the app type. 
    
    * **Web3 apps**: Install the [{{config.extra.arcana.ca_sdk_name}}](https://www.npmjs.com/package/@arcana/ca-sdk).
    Check out the integration example in [codesandbox]({{config.extra.arcana.ca_sdk_sandbox_url}})
    * Web3 apps using the **Wagmi library**: Install the 
      [{{config.extra.arcana.ca_wagmi_sdk_name}}](https://www.npmjs.com/package/@arcana/ca-wagmi).
      Try the [codesandbox]({{config.extra.arcana.ca_wagmi_sdk_codesandbox_url}}) integration example.
    
    Refer to the respective SDK quick start guide for integration details.

??? an-faq "I'm a Web3 wallet user, how can I enjoy unified balance with chain abstraction?"

    Web3 wallet users can unify assets across chains and spend on any chain.
    To do this, they must log into a Web3 app that is integrated with the 
    {{config.extra.arcana.ca_sdk_name}} and supports any third-party
    browser-based wallet. 
    
    Alternatively, wallet users can [download]({{config.extra.arcana.ca_wallet_download_url}})
    and install the {{config.extra.arcana.company_name}} Standalone CA wallet browser extension
    to try [[concept-unified-balance|unified balance]] in the context of some of
    the popular [[ca-stack-wallet#apps|Web3 apps]].

??? an-faq "Why do Arcana CA wallet users need to pay gas fees to set up CA with Layer 1 chains?"

    When setting up {{config.extra.arcana.company_name}} chain abstraction to include Layer 1 chains,
    users need ETH to pay gas fees for signing the token allowance transaction
    with the {{config.extra.arcana.company_name}} vault smart contract. 
    The {{config.extra.arcana.company_name}} standalone CA wallet doesn't cover
    these Layer 1 chain gas fees. As a result, users who choose to include Layer 1
    chains in their CA scope must pay these gas fees themselves to set up the CA allowance.

??? an-faq "What is a CA allowance and why are allowances needed?"

    Allowance or 'Permit' in the blockchain context allows a third party 
    such as a smart contract, to perform transactions. This transaction
    happens from a user's EOA for a specified amount — without accessing
    the user's private key. 
    
    In the {{config.extra.arcana.company_name}}'s CA context, [[concept-allowances|allowances]] 
    enable unified balance and chain abstracted transactions. This lets users 
    spend on any destination chain provided they have sufficient funds on the
    source chains. Allowance lets the protocol collect required funds from the 
    source chains. It uses these funds to pay for gas and the transaction amount.
    

??? an-faq "Which chains and ERC20 tokens does the unified balance feature support for chain abstraction SDKs?"

    Refer to the latest [[ca-stack|supported chains and token list]].

    For the standalone {{config.extra.arcana.company_name}} CA wallet used
    to demonstrate chain abstraction the [[ca-stack-wallet|supported chain
    and token list]] may vary from the SDK. It can be used only in the
    context of a limited set of [[ca-stack-wallet|supported apps]].

??? an-faq "Does integration CA SDK automatically enable an in-app CA wallet?"

    No there is no built-in in-app wallet offered by the
    {{config.extra.arcana.company_name}} SDKs. Web3 apps integrating with the
    {{config.extra.arcana.company_name}} CA SDK must use a third-party wallet
    for blockchain transactions.

??? an-faq "How does a dApp access unified balance for a user account?"

    The dApp must download and integrate with the CA-SDK and use
    the EIP-1193 provider to access the unified balance in the context of an
    authenticated user. See {% include "./text-snippets/casdkref_url.md" %}
    and [[web-ca-usage-guide|the usage guide]] for details.

??? an-faq "Can {{config.extra.arcana.ca_sdk_name}} work with Wagmi Web3 app?"

    For Web3 app built using Wagmi, integrate with the {{config.extra.arcana.ca_wagmi_sdk_name}}.

??? an-faq "How can Wagmi apps enable unified balance chain abstracted transactions?"

    To enable unified balance and chain abstraction in a Web3 app that uses the
    Wagmi library, integrate the app with the {{config.extra.arcana.ca_wagmi_sdk_name}}.
    
    This SDK replaces the Wagmi hooks: `useSendTransaction` and `useWriteContract`. 
    
    Additionally, it provides hooks such as `useBalance`, `useBalanceModal` and `useCAFn`.
    These hooks enable unified balance plug-and-play popup modal and chain abstracted `bridge`,
    `transfer` functions. For details see [[ca-wagmi-quick-start|{{config.extra.arcana.ca_wagmi_sdk_name}} Quick Start Guide]]
    and the [{{config.extra.arcana.ca_wagmi_sdk_name}} Reference]({{config.extra.arcana.ca_wagmi_sdk_ref_url}}).

??? an-faq "Who is the target audience for the {{config.extra.arcana.company_name}} CA SDKs?"

    {{config.extra.arcana.company_name}} CA SDKs help Web3 dApp developers handle fragmented
    blockchain assets, letting users spend on any chain.
    
    CA SDK can integrates with dApps to offer unified balances across chains and
    chain abstracted transactions.
    
    For a complete list of real life applications of unified balance, see 
    [[ca-usecases|use cases]] section.

??? an-faq "Who is the target audience for the standalone {{config.extra.arcana.company_name}} standalone CA wallet?"

    The standalone {{config.extra.arcana.company_name}} standalone CA wallet is meant for wallet users
    that want to try unified balance in the context of some of the popular [[ca-stack-wallet|Web3 apps]]. 
    
    It enables unified balance and solves liquidity fragmentation when using any of the
    supported [[ca-stack-wallet| chains and tokens]] in the context of these supported [[ca-stack-wallet#apps|Web3 apps]]. We will be adding support for newer Web3 apps soon.

    !!! an-tip "$100 limit"

        The standalone {{config.extra.arcana.company_name}} standalone CA wallet has a $100 limit for transactions needing chain abstraction. Transfers on the same chain have no limit.

??? an-faq "Can you give me an example of liquidity fragmentation and how the CA SDK solves it?"

    **Liquidity Fragmentation**

    Imagine a user with assets spread across chains:

    Arbitrum: 3 USDC
    Optimism: 4 USDC
    Base: 0 USDC
    Ethereum: 0.001 ETH

    If the user wants to send 5 USDC to Base, they can't because no single chain has enough funds. Liquidity fragmentation forces the user to make multiple transactions, complicating the process.

    **How unified balance through chain abstraction solves this?**

    With chain abstraction, users first set up allowances before issuing a multi-chain transaction intent.

    In this case, the user signs an intent to send 5 USDC to Base. They pledge 3 USDC from Arbitrum and 2.2 USDC from Optimism (including gas and service fees). The intent specifies the amount to be deposited on source chains and the agreed amount received on the destination chain.

    {{config.extra.arcana.company_name}}'s Chain Abstraction protocol collects the pledged tokens and gas fees based on the user's allowances. Once the intent is signed, {{config.extra.arcana.company_name}} processes the 5 USDC transaction on Base and deducts the gas fee from the pledged USDC.

??? an-faq "Can I request gas tokens using ERC20 through {{config.extra.arcana.company_name}} Chain Abstraction??"

    Yes, you can request gas tokens using ERC20 via Chain Abstraction.

    For example, if you have 13 USDC and 0 ETH on Optimism but need to make a 15 USDC transaction requiring 0.0000001 ETH for gas, you'll need an extra 2 USDC plus the gas fee. 
    
    You can pledge or sign an intent to pay the additional USDC and gas fees using funds from other supported chains like Arbitrum or Base, assuming you have enough USDC to cover the deficit and fees.

    Once you sign the intent, {{config.extra.arcana.ca_sdk_name}} supplies the needed USDC and gas in a single transaction. Charges include the deficit amount, CA Gas Fees, protocol fees, and Solver fees.

    *Note: Fees are deducted from the main token requested, such as USDC. {{config.extra.arcana.ca_sdk_name}} supports ETH, USDC, and USDT.*

??? an-faq "Can a user review intent details before issuing a transaction that requires chain abstraction with two or more source chain tokens?"

    Yes, user's can review the intent details before issuing a CA transaction via the {{config.extra.arcana.company_name}} CA Wallet. Before submitting a transaction, click 'View Intent' to see the intent details. Once the transaction is successful, there are options to view the intent details as well as the transaction details.

    To view the intent details at a later point in time, you need to save the intent identifier displayed in the details during the transaction, before closing the wallet screen. 
    
    Use the {{config.extra.arcana.company_name}} Intent Explorer accessible at: [https://explorer.arcana.network/]({{config.extra.arcana.ca_intent_explorer}}) and enter the intent ID to view details at a later time.

    <figure markdown="span">
        ![View Intent Details]({{config.extra.arcana.img_dir}}/an_wallet_view_intent_details.{{config.extra.arcana.img_gif}}){ .an-screenshots }
        <figcaption>View Intent Details</figcaption>
    </figure>

??? an-faq "Can I use `transfer` function to deposit chain abstracted unified balance funds to a smart contract and update the blockchain state?"

    No. `transfer` does not support `data`. Use [`request` with `sendTransaction`](https://ca-sdk-ref-guide.netlify.app/#quick-start) to deposit funds to a smart contract and update the blockchain state.
    
??? an-faq "Sending 0.1 USDC from 0.3 USDC balance uses funds from other chains. Why isn't this a normal transaction since sufficient balance exists locally?"

    The transaction uses chain abstraction because you need both sufficient tokens AND gas fees for a normal transaction.
    
    Even though 0.1 USDC < 0.3 USDC balance, the remaining 0.2 USDC may not cover the gas fees. 
    
    When local funds can't cover transaction amount + gas fees, the system pulls from other chains' allowances to make up the difference, making it a chain-abstracted transaction instead of normal.

## CA Wallet

??? an-faq "Is the standalone, browser-based CA wallet meant for Web3 users?"

    {{config.extra.arcana.company_name}} offers the standalone, browser-based 
    wallet meant for demonstration purposes. Web3 users can use this wallet to 
    view unified balance and try chain abstracted transactions.
    
    This is not a full-featured wallet. It does not work with any Web3 app. Use
    this wallet with any of the [[ca-stack-wallet#apps|supported Web3 applications]].

??? an-faq "Where can a user download the  {{config.extra.arcana.company_name}} CA wallet?"

    [Download]({{config.extra.arcana.ca_wallet_download_url}}) the CA wallet in the Chrome Store.

??? an-faq "What options are available for allowance setup in the  {{config.extra.arcana.company_name}} CA wallet?"

    There are two options:

    Try chain abstraction with one of the following combination of source chains:

    1.  L1 + L2 + Avalanche 
        - Ethereum, Avalanche and/or any other supported EVM-compatible chains
        - Ethereum and any other supported EVM-compatible chains
        - Fuel, Avalanche and/or any other supported EVM-compatible chains
        - Fuel and any other supported EVM-compatible chains
        - Ethereum and Fuel
    2. L2 + Avalanche
        - Avalanche and any other supported EVM-compatible chains
        - Any supported EVM-compatible chains

??? an-faq "How do the allowance setup options differ in usage?"

    If you choose option 1, your wallet must have native token to cover
    gas fees on the L1 chain for the allowance transaction.

    If you select option 2 (Only L2 chains, Avalanche ) then it is not mandatory.
    {{config.extra.arcana.company_name}} sponsors the gas fee for the allowance transaction.

??? an-faq "Why must a user set up allowance before using the CA wallet?"

    Allowances give users control over their funds
    ([[concept-unified-balance|unified balance]]). 
    
    Allowances define the amount of funds that a user has permitted. This
    is the largest amount that can be pulled from a source chain.
    These funds pay for transactions on a destination chain using [[concept-ca|chain abstraction]].