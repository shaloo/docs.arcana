# Register App

Learn how to register a Web3 app through the [Arcana Developer Dashboard](../../../concepts/dashboard/) before using the Arcana Auth SDK to enable social login and allow users to sign blockchain transactions via the Arcana wallet.

## Prerequisites

To log into the Arcana Developer Dashboard, you’ll need an account with a supported social login or use email for passwordless access.

- Google
- GitHub
- Twitch
- Discord

## Steps

### 1. Dashboard Login

Use <https://dashboard.arcana.network> to log in with one of the available options.

Developer Dashboard Login Page

Aggregate Login

The [aggregate login](../../../concepts/aggregatelogin/) feature in the Arcana Auth SDK merges login identities from social providers into one Arcana account if the email ID is the same across these providers. Developers can log into the Arcana Developer Dashboard using any supported provider and still access the same Arcana account and app settings.

### 2. Create a New App

After logging into the dashboard, the *Manage Apps* screen is displayed. It contains one app card per registered app. The app card contains a summary of app usage statistics and buttons to view and edit the [configuration profiles](../../../concepts/config-profiles/) for Testnet and Mainnet settings.

Manage Apps

To register the app, create a new app entry by clicking on the *Create New App* wizard.

Register by Creating New App

Provide the following inputs to register the app:

- App name
- Chain Type: EVM, Solana, MultiversX, Near
- Default Blockchain
- Wallet UI Mode

Add a unique name for the app. It can be edited later. After registration, a unique Client ID is associated with each app name. This Client ID does not change if the app name is edited later.

All emails related to a registered app billing or user login will mention the latest app name as displayed in the dashboard. Once an app is deleted, the Client ID is no longer valid. Creating a new app with the same name and registering it with Arcana will result in a new Client ID associated with the app.

Edit App Name

Click on the pen icon next to the app name. Click `Enter` in the editable text field to save the changes.

During registration, developers must choose between EVM chains or non-EVM chains supported by the app. The pre-configured chain list in the Arcana wallet will display only the configured chains.

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

Based on your chain type selection, you will see a list of supported chains. Choose one as the default. This default chain will appear as the current, active chain in the Arcana wallet when the user logs into the app integrated with the Arcana Auth SDK.

The [wallet UI mode](../../../concepts/anwallet/walletuimodes/) setting allows the developers to choose whether they want to use the default, built-in Arcana wallet UI or build a custom wallet UI for the app users.

One Time Setting

The **Custom Wallet UI** option selected during app registration is a **one-time setting**. Once selected, the app cannot use the built-in Arcana wallet UI at all. Developers must create a custom wallet UI and plug in the requisite Web3 wallet operations.

Global Keyspace Not Supported

If the **Custom Wallet UI** option is selected during app registration, the app is assigned app-specific keys by default. The app configuration does not have the option to configure global [keyspace](../../../concepts/keyspace-types/).

View Wallet UI Mode

Once specified during app-registration, the Wallet UI mode setting can be viewed later via the **Configure > Arcana Wallet** settings section in the app configuration profile.

Wallet UI Mode Setting

After providing all the required inputs, click **Create** to register the app.

Register dApp

The app is registered, and a unique Client ID is assigned. By default, every newly registered app is associated with a [Testnet configuration profile](../../../concepts/config-profiles/).

New App Dashboard

Save Client ID

Each registered app is assigned a unique **Client ID**. It is displayed on the top right of the dashboard screen. It is required during Web3 app integration with the Arcana

Arcana Client ID for Registered App

The [Testnet Client ID](../../../deploy/deploy-app/) differs from the [Mainnet Client ID](../../../deploy/migrate-testnet-mainnet/).

## What's next?

After registering the app, [configure the user onboarding](../) settings and [integrate the app](../../../auth/integrate/vanilla-html-css-js/) to onboard users and allow them to sign blockchain transactions via the Arcana wallet.

## See Also

- [Deleting Application Entry](../../config-dApp-with-db/#delete-application)
- [Managing Testnet and Mainnet Configurations](../../config-dApp-with-db/#manage-configuration-profiles)
- [Arcana Auth SDK Usage Guide](../../../auth/auth-usage-guide/)
- [FAQ](../../../faq/faq-gen/)

[Try Demo App](https://demo.arcana.network)
