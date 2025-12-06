# MultiversX Setup

This guide explains how to use the Arcana Developer Dashboard and set up MultiversX network, a [non-EVM blockchain network](../../concepts/non-evm-chains/) so that MultiversX is pre-configured out of the box for Arcana wallet users.

## Prerequisites

To log into the Arcana Developer Dashboard, you’ll need an account with a supported social login or use email for passwordless access.

- Google
- GitHub
- Twitch
- Discord

Use <https://dashboard.arcana.network> to log in with one of the available options.

Developer Dashboard Login Page

Aggregate Login

The [aggregate login](../../concepts/aggregatelogin/) feature in the Arcana Auth SDK merges login identities from social providers into one Arcana account if the email ID is the same across these providers. Developers can log into the Arcana Developer Dashboard using any supported provider and still access the same Arcana account and app settings.

## Register App

Log into the Arcana Developer Dashboard to register the app. Create a new app and select the chain type as **MultiversX**.

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

MultiversX Shard Selection

MultiversX uses [adaptive state sharding](https://docs.multiversx.com/technology/adaptive-state-sharding/) for horizontal scaling. Shards allow it to process far more transactions through parallelization, improving transaction throughput and efficiency.

Choose your shard once when registering a MultiversX app on the Arcana Developer Dashboard. It cannot be changed later.

By default, Arcana uses 'Shard 0' to deploy all app contracts and allocate wallet addresses for users. The benefit is that when addresses from the same shard interact with contracts on the same shard, latencies are much lower than in cross-shard interactions.

Register MultiversX App

## Configure App

The chain type and the default chain are already pre-configured during the app registration. Use the **Chain Management** configuration section to configure the MultiversX chains.

### Manage MultiversX chains

In the *Manage Apps* screen select the requisite configuration profile to bring up the app dashboard page. In the LHS click **Configure** and select **Chain Management**.

Select one of the available MultiversX chains displayed on the screen. You can mark it as default or edit the chain settings.

### Default Chain

Choose a chain and select the '...' displayed against the entry in the dashboard. A drop down menu will show up. Choose *Set as default* to mark that chain as the default chain.

By selecting a chain as the default, developers ensure that the same chain is automatically configured and displayed in the wallet when the user logs into the app. The authenticated user can instantly sign blockchain transactions on MultiversX, from within the app context, without having to configure the wallet.

### Edit Chain

To edit a MultiversX chain's RPC URL or the blockchain explorer URL, select the chain, click '...' and select **edit** option to update the required fields.

Edit MultiversX Chain Settings

For more details on how to configure other settings such as branding, social authentication providers, delete a registered app to re-register on a different chain type, monitor app usage, etc., see [Arcana Developer Dashboard User's Guide](../config-dApp-with-db/).

## Next Steps

After setting up MultiversX chains through the Arcana Developer Dashboard, you can begin integrating MultiversX app with the Arcana Auth SDK. See [MultiversX Quick Start Guide](../../quick-start/mvx-quick-start/) for instructions on how to install and integrate the Arcana Auth SDK with your app. Once integrated, you can add code to onboard users and initiate [Web3 wallet operations using the MultiversX network](../../auth/web3-ops/mvx/).

## See Also

- [MultiversX Quick Start Guide](../../quick-start/mvx-quick-start/)
- [Web3 Wallet Operations for MultiversX](../../auth/web3-ops/mvx/)
- [Integrating MultiversX App FAQ](../../faq/faq-mvx/)
- [MultiversX App Integration Example](https://github.com/arcana-network/auth-examples)
