# Arcana Developer Dashboard

## General

______________________________________________________________________

Is it mandatory to use the Arcana Developer Dashboard before integrating with the Arcana Auth SDK to enable social login?

Yes.

To integrate any app with the Arcana Auth SDK, it is not sufficient to simply download and install the SDK. A unique Client ID is also required. This is available once the app is registered using the Arcana Developer Dashboard.

Note that the Client ID per app is different when using Testnet or Mainnet. When deploying the app on Testnet use the Client ID meant for Testnet and vice-versa.

How do I delete the application configuration and start afresh?

To delete an application from Arcana ecosystem, follow these instructions:

- Log into the Arcana Developer Dashboard.
- In the **Manage Apps** screen, select the card displayed there for the registered application you wish to delete.
- Click the trash icon on the top right and delete the app entry.
- The application registration will be canceled and the **Client ID** assigned to your application will no longer work.

De-register & Delete App

How do I migrate an application from using Arcana Testnet to Mainnet?

To migrate an application from using the Arcana Testnet to Mainnet, follow these steps:

1. Use the Arcana Developer Dashboard, visit the 'Manage App' page, and select the application entry. By default, when you register any application, a 'Testnet' configuration profile is created for the application. Click on the app card to see the application configuration screen.
1. On the application configuration screen, switch the network from 'Testnet' to 'Mainnet' on the top right to create a 'Mainnet' configuration profile. You will be asked to approve the creation of the 'Mainnet' configuration profile. To begin with, you can use a copy of the 'Testnet' profile to generate the 'Mainnet' profile. Later, you can edit and manage it independently. Note that a new **Client ID** is assigned to the 'Mainnet' profile.
1. Use the 'Mainnet' profile **Client ID** and update it in the app integration code instead of the earlier value which corresponds to 'Testnet'. You will need to restart your application after this change. This is important to ensure that the app uses the 'Mainnet' configuration settings.

Use appropriate **Client ID**

To migrate an app from using Testnet to Mainnet, the developers must ensure that the new **Client ID** corresponding to the application's 'Mainnet' profile is used to initialize the `AuthProvider` while integrating the app with the Arcana Auth SDK. After that, the app must be restarted to switch over from using Arcana Testnet to the Mainnet.

Can a developer run one instance of the app, say dev version on Testnet while publishing the release instance to use the Arcana Mainnet?

Yes, developers can run two instances of the app simultaneously, one on the Arcana Testnet and the other on the Mainnet as each app instance is assigned a unique **Client ID**.

Use the 'Mainnet' configuration profile **Client ID** in your app's integration code and instantiate the `AuthProvider`. Then deploy this app instance to use Arcana Mainnet.

Similarly, use the 'Testnet' configuration profile **Client ID** in another copy (branch / different version of the code) of your app where Arcana Auth SDK is integrated and instantiate the `AuthProvider`. Then deploy this app instance to run it using the Arcana Testnet.

How do I delete Mainnet configuration settings and run my application using Arcana Testnet only?

Once you have enabled 'Mainnet' for an application, you cannot delete the 'Mainnet' configuration profile independently in the current release. You can [switch your application from 'Mainnet' to 'Testnet'](../../setup/config-dApp-with-db/#switch-profile) by using the dropdown button in the application configuration screen to edit or modify it.

The only way to delete Mainnet settings is to deregister the app and delete the app entry altogether. This removes both Testnet and Mainnet configuration profiles. You will need to re-register the application. This will create a new **Client ID** and you will be required to specify this new Client ID when integrating your application with the Arcana Auth SDK. As a result, when you deploy your app and the users log in, they will see brand-new wallet addresses.

If you wish to ensure that the user wallet address does not change, you must register your application and request for the [Shared Key Space](../../concepts/keyspace-types/) option at the very start. In that case, users will be allowed to use the same wallet address across all applications in the Arcana ecosystem and even if an application is de-registered and re-registered.

## Branding Settings

Why do I see an error when uploading the logo file?

Make sure the file is less than the 1 MB limit for a successful upload.

How do I change the logo file that I uploaded earlier?

Click on the 'x' icon next to the uploaded logo file. You will see a notification about the successful deletion of the file. Click on the upload icon and upload a new logo file.

## Social Auth Settings

______________________________________________________________________

Is it mandatory to specify all configurations in the Arcana Developer Dashboard *Configure* section?

No.

If no authentication provider is configured via the Arcana Developer Dashboard, the app users can log in through the default passwordless option that requires no configuration. Developers can use the `connect` method to bring up plug-and-play login UI or build a custom login UI. When using the custom login UI, call the `loginWithLink` method (deprecated), `loginWithOTPStart` and `loginWithOTPComplete` methods to onboard users.

Besides the default passwordless login option, developers can choose to enable one or more authentication providers as the onboarding options for users. That requires configuring authentication providers through the Arcana Developer Dashboard. For details, check out [how to configure authentication providers](../../setup/).

Can an application enable more than one authentication provider to onboard users?

Yes. Developers can configure one or more authentication providers as additional onboarding options besides the default passwordless login option. Users can choose any one of the supported authentication mechanisms to onboard the app.

## Wallet Settings

______________________________________________________________________

Why do I need to specify Wallet Website Domain setting?

This is an optional setting for additional security. If specified, the Arcana Auth SDK configuration subsystem uses this setting to restrict the Arcana wallet from loading anywhere else other than the application website domain that a developer specifies. for restricted domains, the [frame-ancestor Content Security Policy (CSP)](https://developer.mozilla.org/en-US/docs/web/http/headers/content-security-policy#frame-ancestors) is used.

Is there a way to control when, which position in the application window, and what kind of theme is used for displaying the Arcana wallet in the apps' context?

**Wallet Display Controls**

1. **Visibility**

   The application developer can use the `alwaysVisible` parameter in the `AuthProvider` to control whether the Arcana wallet UI is automatically displayed once the user has authenticated (default) or it shows up only when a blockchain transaction is triggered that requires the user's approval.

   If `AuthProvider` is instantiated with `alwaysVisible = false` then the wallet UI will not be displayed by default in the app's context. However, when a blockchain transaction is triggered by the app, a transaction notification is displayed in the app's context, requesting the user's approval for the transaction. Once the user takes the appropriate action, the transaction notification will disappear.

   For more details, see [Arcana wallet visibility modes](../../concepts/anwallet/walletvisibility/).

1. **Position**

   The `position` parameter in the `AuthProvider` controls whether the wallet is displayed on the left or the right side of the Web3 app UI window.

1. **Light/Dark Theme**

   The `theme` parameter in the `AuthProvider` controls whether the wallet is displayed using the light theme or the dark theme. Developers can set the theme via the Arcana Developer Dashboard by using the 'Branding' tab on the LHS.
