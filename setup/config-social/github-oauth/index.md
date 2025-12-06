# GitHub Setup

Configuring GitHub for apps using **global keys** differs from apps using **app-specific keys**.

### Prerequisites

- Log in to the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- [Register](../../config-auth/register-app/) the app by creating a new app entry in the dashboard.

Client ID

A default [Testnet configuration profile](../../../deploy/deploy-app/) is associated with every registered app. A unique **Client ID** is assigned for the Testnet profile. Only passwordless login is enabled by default.

A newly registered app can be deployed at the Arcana Testnet. Developers must create a Mainnet configuration profile to [deploy it on the Mainnet](../../../deploy/migrate-testnet-mainnet/). A new, unique Client ID is assigned to the Mainnet profile.

Unique App Identifier: ClientID

## Global Keys

Apps that require [global keys](../../../concepts/keyspace-types/) feature **do not need to configure the Social Auth settings** in the Arcana Developer Dashboard.

User onboarding via GitHub is automatically turned on for the app when global keys are enabled.

Global Keys Setting

Global Keys Configuration Change

In the earlier versions of the Arcana Auth SDK, apps using **global keys** were required to configure **Social Auth** settings for the providers. This behavior has changed in the latest release of the Arcana Auth SDK.

If an app was configured for any social login providers and switches over from app-specific to global keyspace later, the **Social Auth** settings will be disabled altogether.

Global Keys: Social Auth Settings Disabled

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via GitHub. It requires developers to use the Arcana Developer Dashboard and the [GitHub Developer Settings Dashboard](https://docs.github.com/en/developers/apps/building-oauth-apps/creating-an-oauth-app).

### 1. Get Redirect URI

Select the app in the **Manage Apps** dashboard screen and click Testnet/Mainnet to configure GitHub in the respective configuration profile Go to **Configure > Social Auth**. Copy the redirect URI shown on the top right.

Copy Redirect URI

Do not close the Arcana Developer Dashboard browser tab. Open another tab and set up GitHub OAuth.

### 2. Get GitHub ClientID, Secret

Go to the [GitHub Developer Settings > OAuth Apps](https://github.com/settings/applications/new) and register the app as a new GitHub application.

GitHub OAuth Settings

- Enter the app name.
- Specify the homepage URL where the app is deployed.
- Provide a brief description of the dApp.

GitHub Configuration

Use the **redirect URI** value that you saved in the previous step from the `Auth` tab of the Arcana Developer Dashboardd, in the **Authorization callback URL** field. See [here](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps) for GitHub OAuth details.

Save the newly registered application in GitHub Developer Settings. GitHub will generate a unique **ClientID** and a **secret** for this new application entry.

Get GitHub OAuth ClientID

Copy and save the **Client ID** and the **secret** assigned by GitHub for the newly registered app. It will be required in the next step while completing the Arcana Developer Dashboard app configuration.

GitHub Email Settings

Make sure your GitHub developer profile email settings are **NOT private**. If it is marked private then the [social login](../../../concepts/social-login/) and the [aggregate login](../../../concepts/aggregatelogin/) features offered by the Arcana Auth SDK will not work due to [configuration issues](../../../troubleshooting/#configuration-issues).

1. In your GitHub profile setting, allow your email to be visible
1. In the GitHub Email Settings preferences, make sure you do not select the checkbox which says 'Keep my email address private'.

Refer to the figure below for details:

GitHub Profile: Email Visible

GitHub Email Settings: Should Not be Private

### 3. Update Social Auth

Revisit the Arcana Developer Dashboard. View the app configuration screen. Click **Configure > Social Auth** in the LHS navigation bar and refer to the "GitHub" field. Paste the **Client ID** and the **Secret** assigned by GitHub, in the previous step.

In the Arcana Developer Dashboard, click **Configure > Social Auth**. Refer to the empty fields next to the "GitHub" setting. Paste the **ClientID** and **Secret** obtained in the previous step as the `ClientID` and `secret`, respectively.

Update GitHub ClientID

Save the **Social Auth** settings.

*You are all set with the GitHub configuration.*
