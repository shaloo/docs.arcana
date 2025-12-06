# Twitter Setup

Configuring Twitter for apps using **global keys** differs from apps using **app-specific keys**.

### Prerequisites

- Log in to the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- [Register](../../config-auth/register-app/) the app by creating a new app entry in the dashboard.

Client ID

A default [Testnet configuration profile](../../../deploy/deploy-app/) is associated with every registered app. A unique **Client ID** is assigned for the Testnet profile. Only passwordless login is enabled by default.

A newly registered app can be deployed at the Arcana Testnet. Developers must create a Mainnet configuration profile to [deploy it on the Mainnet](../../../deploy/migrate-testnet-mainnet/). A new, unique Client ID is assigned to the Mainnet profile.

Unique App Identifier: ClientID

## Global Keys

Apps that require [global keys](../../../concepts/keyspace-types/) feature **do not need to configure the Social Auth settings** in the Arcana Developer Dashboard.

User onboarding via Twitter is automatically turned on for the app when global keys are enabled.

Global Keys Setting

Global Keys Configuration Change

In the earlier versions of the Arcana Auth SDK, apps using **global keys** were required to configure **Social Auth** settings for the providers. This behavior has changed in the latest release of the Arcana Auth SDK.

If an app was configured for any social login providers and switches over from app-specific to global keyspace later, the **Social Auth** settings will be disabled altogether.

Global Keys: Social Auth Settings Disabled

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via Twitter. It requires developers to use the Arcana Developer Dashboard and the [Twitter Developer Account](https://developer.twitter.com/en/docs/twitter-api/getting-started/getting-access-to-the-twitter-api).

### 1. Get Redirect URI

Select the app in the **Manage Apps** dashboard screen and click Testnet/Mainnet to configure Twitter in the respective configuration profile. Go to **Configure > Social Auth**. Copy the redirect URI shown on the top right.

Copy Redirect URI

Do not close the **Social Auth** browser tab in the Arcana Developer Dashboard. Open another tab and set up Twitter OAuth.

### 2. Get Twitter API Key, Secret

Go to the [Twitter Developer Portal](https://developer.twitter.com/en/portal/projects-and-apps) and create a new [Twitter App](https://developer.x.com/en/docs/apps/overview) for setting up the OAuth credentials for the app. Note that if you would like to use Twitter API v2, you must add your Twitter App to a [Project](https://developer.x.com/en/docs/projects/overview).

Twitter Developer Console

Select an appropriate environment and create a new name for the app on the Twitter Developer Portal.

Create Twitter App Entry

In the **Keys and Tokens** tab, the **API Key** and **API Key Secret** (also known as the [Consumer Key and Secret](https://developer.x.com/en/docs/authentication/oauth-1-0a/api-key-and-secret)) values are generated automatically for your newly created app entry. Make sure you copy both of these as they will be needed later for setting up Twitter in the Arcana Developer Dashboard.

Twitter Keys and Secret

After this, you need to select OAuth Setup as shown below and configure the **Redirect URI** and the app deployment website domain.

Redirect URI Settings

Copy the Redirect URI from the Arcana Developer Dashboard to the Twitter Developer Dashboard settings to enable Twitter login.

Each app profile—Testnet and Mainnet—has its own Redirect URI in the Arcana Dashboard. Make sure to select the correct URI. Use the Mainnet Redirect URI for Mainnet deployments.

Setup App OAuth

When you click **Setup**, you will see OAuth options. For the *Type of App* field, select the *Web App* option.

Select Twitter Web App Option

In the **App Info** section, select the **Redirect URI** field. You need to specify the app [callback URL](https://developer.twitter.com/en/docs/apps/callback-urls) in the [Twitter settings](https://www.cozmoslabs.com/docs/profile-builder-2/add-ons/social-connect/create-twitter-app-social-connect/) as the redirect URI copied from the Arcana Developer Dashboard in the previous step.

| Arcana Developer Dashboard -> | Twitter Developer Portal OAuth Settings | | --- | --- | | Redirect URI -> | *Callback URI/Redirect URLs* |

Set Twitter App Callback URL

Specify all the fields appropriately. Do not leave the optional fields empty.

- Website domain
- Organization details
- Terms of Service
- Privacy Policy

Enable Email ID Access

Arcana Auth SDK requires the Twitter user's email ID to verify the logged-in user's credentials. To enable this, Twitter makes it necessary that the Privacy Policy and Terms of Service are appropriately provided while creating a new app entry. For details, see [here](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/get-account-verify_credentials).

Make sure you save all the settings.

Where can I find API Key and Secrets?

Copy the **API Key** and the **API Key Secret** from the **App Settings** section in the Twitter Developer Dashboard. Refer to the *Keys and Tokens* tab. In the **Consumer Keys** section, there is an option to regenerate the API key and secret.

These details will be required in the next step while specifying the Twitter app configuration in the Arcana Developer Dashboard.

### 3. Update Social Auth

In the Arcana Developer Dashboard, click **Configure > Social Auth** and choose **Twitter** icon to view Twitter settings. Use the **Twitter API Key** and the **Twitter API Secret** obtained from the Twitter Developer Portal and paste them into the Arcana Developer Dashboard Twitter settings.

Update Twitter API Key

Save the **Social Auth** settings.

*You are all set with the Twitter configuration.*
