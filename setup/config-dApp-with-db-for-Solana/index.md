# Solana Setup

This guide explains how to activate Solana, a [non-EVM blockchain](../../concepts/non-evm-chains/) in a Web3 app and allow users to sign blockchain transactions using the Arcana wallet.

Use the Arcana Developer Dashboard to first configure user onboarding settings, select Solana and tailor the blockchain signing experience for an app and then integrate the app with the Arcana Auth SDK.

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

To register an app that uses the Solana network, create a new app and select the chain type as **Solana**. Select one of the Solana chains as the default chain.

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

Register Solana App

## Configure App

Refer to the [Arcana Developer Dashboard User's Guide](../config-dApp-with-db/) for details on how to configure the branding, social authentication providers and other settings. In this section, you will learn how to configure the Solana network for the app via the **Chain Management** configuration section.

### Manage Solana chains

In the *Manage Apps* screen select the requisite configuration profile to bring up the app dashboard page. In the LHS click **Configure** and select **Chain Management**.

You will see the available Solana chains that will be displayed when a user logs in and accesses the Arcana wallet.

### Default Chain

You can select one of the Solana networks and set it as the default chain. The default chain is shown as the selected chain in the Arcana wallet displayed in the app's context.

### Edit Chain

To edit a Solana chain's RPC URL or the blockchain explorer URL, select the chain, click **edit** and update the required fields.

Edit Solana Chain Settings

For more details on using the dashboard to delete an app, switch between different applications, change configuration profile, monitor usage, etc., see [Arcana Developer Dashboard User's Guide](../config-dApp-with-db/).

## Next Steps

After setting up Solana chains using the Arcana Developer Dashboard, you can begin integrating Solana app with the Arcana Auth SDK. See [Solana Quick Start Guide](../../quick-start/solana-quick-start/) for instructions on how to install and integrate the Arcana Auth SDK with your app. Once integrated, you can add code to onboard users and initiate Web3 wallet operations using the Solana network. Refer to the sample code [here](../../auth/web3-ops/solana/).

## See Also

- [Solana Quick Start Guide](../../quick-start/solana-quick-start/)
- [Web3 Wallet Operations for Solana](../../auth/web3-ops/solana/)
- [Integrating Solana App FAQ](../../faq/faq-solana/)
- [Solana App Integration Example](https://github.com/arcana-network/auth-examples)
