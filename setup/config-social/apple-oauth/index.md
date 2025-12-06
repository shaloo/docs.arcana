# Apple Sign-In Setup

Configuring Apple for apps using **global keys** differs from apps using **app-specific keys**.

### Prerequisites

- Log in to the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- [Register](../../config-auth/register-app/) the app by creating a new app entry in the dashboard.

Client ID

A default [Testnet configuration profile](../../../deploy/deploy-app/) is associated with every registered app. A unique **Client ID** is assigned for the Testnet profile. Only passwordless login is enabled by default.

A newly registered app can be deployed at the Arcana Testnet. Developers must create a Mainnet configuration profile to [deploy it on the Mainnet](../../../deploy/migrate-testnet-mainnet/). A new, unique Client ID is assigned to the Mainnet profile.

Unique App Identifier: ClientID

## Global Keys

Apps that require [global keys](../../../concepts/keyspace-types/) feature **do not need to configure the Social Auth settings** in the Arcana Developer Dashboard.

User onboarding via Apple is automatically turned on for the app when global keys are enabled.

Global Keys Setting

Global Keys Configuration Change

In the earlier versions of the Arcana Auth SDK, apps using **global keys** were required to configure **Social Auth** settings for the providers. This behavior has changed in the latest release of the Arcana Auth SDK.

If an app was configured for any social login providers and switches over from app-specific to global keyspace later, the **Social Auth** settings will be disabled altogether.

Global Keys: Social Auth Settings Disabled

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via Apple. It requires developers to use the Arcana Developer Dashboard and the [Apple Developer](https://developer.apple.com/) website.

### 1. Get Redirect URI

Select the app in the **Manage Apps** dashboard screen and click Testnet/Mainnet to configure Apple Sign-in in the respective configuration profile. Go to **Configure > Social Auth**. Copy the redirect URI shown on the top right.

Redirect URL for Apple Sign-In

Note, unlike other providers, the redirect URL for 'Sign-in with Apple' is **not the one located on the top right** of the dashboard. It is displayed on the **bottom-right**, next to the 'key id' field.

The *Redirect URL*\* for Apple Sign-In is of the format:

`https://oauth.arcana.network/auth/apple/redirect/${ClientID}`

Where `{ClientID}` refers to the unique value assigned by Arcana to each app registered using the Arcana Developer Dashboard.

Arcana Dashboard: Copy Redirect URL

Do not close the **Social Auth** browser tab in the Arcana Developer Dashboard. Open another tab and set up Apple Sign in for your app via the [Apple Developer](https://developer.apple.com/) website.

### 2. Get Apple ClientID, TeamID, Key, KeyID

To enable Apple Sign-In for your Web3 app you must set up the following entities:

- Apple App Identifier
- Apple Service Identifier
- Apple Private Key

Login to your developer account using the [Apple Developer](https://developer.apple.com/) website.

Apple Dev: Log In

Use the 'Certificates, Identifiers & Profiles' menu option. Create, configure and register the Apple app identifier, Apple service identifier. As part of configuration you will be required to verify your app domain, and associate the domain with an app identifier for app login page that uses 'Sign in with Apple'.

#### 2a. App Id

Click **Identifier**, select **AppId** type identifier and choose **App**.

Apple Dev: New App Identifier

Click continue and follow the instructions to configure the AppId identifier setting and enable 'Sign-In with Apple' option. Register the AppId identifier.

Apple Dev: Enable Sign-In with Apple (AppId)

#### 2b. Service Id

Next, click **Identifier**, select **ServiceId** type identifier.

Apple Dev: New Service Identifier

Follow the instructions and specify the service description and identifier in the Apple Developer site. Make sure you enable the 'Sign-In with Apple' option. Register the Service identifier.

Apple Dev: Enable Sign-In with Apple (ServiceId)

In the Service Identifier settings, specify the **Redirect URI** copied from the Arcana Developer Dashboard into the **Return URL** input field.

Apple Dev: Return URL (Use Arcana Redirect URI)

Apple may have additional instructions to verify the domain name that you specify. Make sure you complete those setup steps at the Apple Developer site and complete the service identifier setup.

#### 2c. Apple Key

The 'Sign-in with Apple' service requires a private key that signs JWTs to be used as a client secret. Go to the **Keys** section in the Apple Developer Account site. Create a **key** and follow the instructions to register the key.

Apple Dev: New Key

Make sure you configure the key and enable 'Sign In with Apple' option.

Apple Dev: Enable Apple Sign-In (Key)

Also, configure the key to use the correct **AppId** that was created earlier.

Apple Dev: Select correct AppId for the key

**Download the key**. It can only be downloaded once.

Apple Key Security

Keep the downloaded Apple Key safe.

If you lose the key, you cannot download it again but the Apple Key identifier can be copied from the developer account any time.

If you suspect a private key is compromised, first create a new private key associated with the primary App ID. After transitioning to the new key, revoke the old private key. [Learn more...](https://developer.apple.com/help/account/configure-app-capabilities/create-a-sign-in-with-apple-private-key)

Make a note of the following values. These are required to configure the Apple section in the 'Social Auth' settings page of the Arcana Developer Dashboard.

- Apple Service Identifier
- Apple Team Identifier
- Apple Private Key Identifier
- Apple Private Key

Apple Dev: Service Identifier

Apple Dev: Key Identifier, Team Identifier

### 3. Update Social Auth

In the Arcana Developer Dashboard, click **Configure > Social Auth**. Refer to the empty fields next to the "Apple" setting. Paste the **Service ID** obtained via the Apple Developer Account settings. Copy the **Team Identifier**, **Key Identifier** and the downloaded key value in the respective input fields.

Update Apple Sign-In Settings

Save the **Social Auth** settings.

*Your app is all set to onboard users via Apple Sign-In.*
