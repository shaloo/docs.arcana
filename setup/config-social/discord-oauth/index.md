# Setup Discord

Configuring Discord for apps using **global keys** differs from apps using **app-specific keys**.

### Prerequisites

- Log in to the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- [Register](../../config-auth/register-app/) the app by creating a new app entry in the dashboard.

Client ID

A default [Testnet configuration profile](../../../deploy/deploy-app/) is associated with every registered app. A unique **Client ID** is assigned for the Testnet profile. Only passwordless login is enabled by default.

A newly registered app can be deployed at the Arcana Testnet. Developers must create a Mainnet configuration profile to [deploy it on the Mainnet](../../../deploy/migrate-testnet-mainnet/). A new, unique Client ID is assigned to the Mainnet profile.

Unique App Identifier: ClientID

## Global Keys

Apps that require [global keys](../../../concepts/keyspace-types/) feature **do not need to configure the Social Auth settings** in the Arcana Developer Dashboard.

User onboarding via Discord is automatically turned on for the app when global keys are enabled.

Global Keys Setting

Global Keys Configuration Change

In the earlier versions of the Arcana Auth SDK, apps using **global keys** were required to configure **Social Auth** settings for the providers. This behavior has changed in the latest release of the Arcana Auth SDK.

If an app was configured for any social login providers and switches over from app-specific to global keyspace later, the **Social Auth** settings will be disabled altogether.

Global Keys: Social Auth Settings Disabled

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via Discord. It requires developers to use the Arcana Developer Dashboard and the [Discord Developer Portal](https://discord.com/developers/applications).

### 1. Get Redirect URI

Select the app in the **Manage Apps** dashboard screen and click Testnet/Mainnet to configure Discord in the respective configuration profile. Go to **Configure > Social Auth**. Copy the redirect URI shown on the top right.

Get Redirect URI

Do not close the **Social Auth** browser tab in the Arcana Developer Dashboard. Open another tab to access the Discord Developer Console and configure Discord OAuth.

### 2. Get Discord Application ID, Public Key

Go to the [Discord Developer Portal](https://discord.com/developers/applications) and create a new application.

Discord Developer Portal

Configure OAuth 2.0 credentials for the newly created app entry in the Discord Developer Portal. Select **OAuth2** in the Discord Developer Portal and refer to the **Redirects** field. Use the **Redirect URI** value copied in the previous step from the Arcana Developer Dashboard.

Discord OAuth Settings

Save the app settings in the Discord Developer Portal.

Refer to the **General Information** page in the Discord Developer Portal. Copy the **Application ID** and the **Public key**. It will be required in the next step while configuring Discord settings using the Arcana Developer Dashboard.

Copy Application ID and Public Key

### 3. Update Social Auth

In the Arcana Developer Dashboard, click **Configure > Social Auth > Discord**. Paste the **Application ID** and **Public key** obtained from Discord Developer Portal in the previous step.

Dashboard: Update Application ID and Public Key

Save the **Social Auth** settings.

*You are all set with the Discord configuration.*
