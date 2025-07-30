# Steam Setup

Configuring Steam for apps using **global keys** differs from apps using **app-specific keys**.

### Prerequisites

- Log in to the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- [Register](../../config-auth/register-app/) the app by creating a new app entry in the dashboard.

Client ID

A default [Testnet configuration profile](../../../deploy/deploy-app/) is associated with every registered app. A unique **Client ID** is assigned for the Testnet profile. Only passwordless login is enabled by default.

A newly registered app can be deployed at the Arcana Testnet. Developers must create a Mainnet configuration profile to [deploy it on the Mainnet](../../../deploy/migrate-testnet-mainnet/). A new, unique Client ID is assigned to the Mainnet profile.

Unique App Identifier: ClientID

## Global Keys

Apps that require [global keys](../../../concepts/keyspace-types/) feature **do not need to configure the Social Auth settings** in the Arcana Developer Dashboard.

User onboarding via Steam is automatically turned on for the app when global keys are enabled.

Global Keys Setting

Global Keys Configuration Change

In the earlier versions of the Arcana Auth SDK, apps using **global keys** were required to configure **Social Auth** settings for the providers. This behavior has changed in the latest release of the Arcana Auth SDK.

If an app was configured for any social login providers and switches over from app-specific to global keyspace later, the **Social Auth** settings will be disabled altogether.

Global Keys: Social Auth Settings Disabled

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via Steam. It requires developers to use the Arcana Developer Dashboard and the [Steam Community Site](https://steamcommunity.com/login/home/?goto=%2Fdev%2Fapikey).

## Step 1: Get Redirect URI

Select the app in the **Manage Apps** dashboard screen and click Testnet/Mainnet to configure Steam in the respective configuration profile. Go to **Configure > Social Auth**. Copy the redirect URI shown on the top right.

Copy the Redirect URI

Do not close the **Social Auth** browser tab in the Arcana Developer Dashboard. Open another tab to access the Steam Community Site and obtain an API Key.

## Step 2: Get Steam API Key

Steam API Key

**Developers must have a Steam account and have at least $5 worth of purchased games in the account before they can obtain the Steam API Key.**

Go to the [Steam Community Site](https://steamcommunity.com/login/home/?goto=%2Fdev%2Fapikey). Login to your account.

Steam Login

Access Steam API Key

Make sure you do not have a Steam limited account otherwise you cannot access the API Key. Refer to [Steam FAQ](https://help.steampowered.com/en/faqs/view/71D3-35C2-AD96-AA3A) for more details.

Register for a new Steam Web API Key. Provide the app domain name as input to access your API Key.

Access Steam API Key

Copy the **Steam API Key** for your app domain. It will be required in the next step while completing the app configuration using the Arcana Developer Dashboard.

Copy Steam API Key

## Step 3: Update Steam Social Auth Settings

In the Arcana Developer Dashboard, click **Configure > Social Auth**. Refer to the **Steam API Key** input field. Paste the **Steam API Key** obtained in the previous step.

Dashboard: Update Steam API Key

Save the **Social Auth** settings.

*You are all set with the Steam configuration.*
