# Google Setup

Configuring Google for apps using **global keys** differs from apps using **app-specific keys**.

### Prerequisites

- Log in to the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- [Register](../../config-auth/register-app/) the app by creating a new app entry in the dashboard.

Client ID

A default [Testnet configuration profile](../../../deploy/deploy-app/) is associated with every registered app. A unique **Client ID** is assigned for the Testnet profile. Only passwordless login is enabled by default.

A newly registered app can be deployed at the Arcana Testnet. Developers must create a Mainnet configuration profile to [deploy it on the Mainnet](../../../deploy/migrate-testnet-mainnet/). A new, unique Client ID is assigned to the Mainnet profile.

Unique App Identifier: ClientID

## Global Keys

Apps that require [global keys](../../../concepts/keyspace-types/) feature **do not need to configure the Social Auth settings** in the Arcana Developer Dashboard.

User onboarding via Google is automatically turned on for the app when global keys are enabled.

Global Keys Setting

Global Keys Configuration Change

In the earlier versions of the Arcana Auth SDK, apps using **global keys** were required to configure **Social Auth** settings for the providers. This behavior has changed in the latest release of the Arcana Auth SDK.

If an app was configured for any social login providers and switches over from app-specific to global keyspace later, the **Social Auth** settings will be disabled altogether.

Global Keys: Social Auth Settings Disabled

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via Google. It requires developers to use the Arcana Developer Dashboard and the [Google Cloud Console](http://console.cloud.google.com/apis/credentials).

### 1. Get Redirect URI

Select the app in the **Manage Apps** dashboard screen and click Testnet/Mainnet to configure Google in the respective configuration profile. Go to **Configure > Social Auth**. Copy the redirect URI shown on the top right.

Copy Redirect URI

Do not close the **Social Auth** browser tab in the Arcana Developer Dashboard. Open another tab to access the Google Cloud Console and configure Google OAuth.

### 2. Get Google ClientID

Go to the [Google Cloud Console](http://console.cloud.google.com/apis/credentials). Create a new OAuth 2.0 credential for your dApp.

Set up Google OAuth 2.0

In the Google Cloud Console, select the option to set up credentials for a web application.

Specify Redirect URI

Specify the **redirect URI** value to the one that you saved in the previous step from the `Auth` tab of the Arcana Developer Dashboard.

Redirect URI

The redirect URI refers to the endpoint to which the Google OAuth 2.0 server can send authentication responses. These endpoints must adhere to [Google’s validation rules](https://developers.google.com/identity/protocols/oauth2/web-server#uri-validation).

Complete the steps in Google Cloud Console for creating a new OAuth 2.0 credential. It will generate a unique **ClientID**.

Copy Google ClientID

Save the **Client ID** assigned by Google. It will be required in the next step.

### 3. Update Social Auth

In the Arcana Developer Dashboard, click **Configure > Social Auth**. Refer to the empty fields next to the "Google" setting. Paste the Google **Client ID** copied in the previous step.

Specify Google ClientID

Save the **Social Auth** settings.

*You are all set with the Google configuration.*
