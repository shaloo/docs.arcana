---
slug: /faq_db
id: idfaqdb
title: Dashboard
sidebar_custom_props:
  cardIcon: 🙋
arcana:
  root_rel_path: ..
toc_depth: 2
---

# Dashboard

Frequently asked questions about using the [Arcana Developer Dashboard]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) to configure an application before integrating it with the Auth SDK.

## General Settings

---

??? an-faq "Why can't I upload the logo file?"

      Make sure the file is less than the 2MB limit for a successful upload.

??? an-faq "How do I change the logo file that I uploaded earlier?"

      Click on the 'x' icon next to the uploaded logo file. You will see a notification about the successful deletion of the file. Click on the upload icon and upload a new logo file.

??? an-faq "How do I delete the application configuration and start afresh?"

      To delete an application in the Arcana Developer Dashboard:

      * Log in to the dashboard.
      * In the **Manage Apps** dashboard screen, you will see a card for your registered application. Select the card.
      * Click **Delete**.
      * Your application registration will be canceled and the **App Address** assigned to your application will no longer work

??? an-faq "How do I migrate an application from Testnet to Mainnet?"

      To migrate an application from Arcana Testnet to Mainnet, follow these steps:

      1. Use the Arcana Developer Dashboard, visit the 'Manage App' dashboard page and select the application entry. By default, when you register any application, a 'Testnet' configuration profile is created for the application.

      2. On the application configuration dashboard screen switch the network from 'Testnet' to 'Mainnet'. You will be asked to approve creation of the application 'Mainnet' configuration profile. To begin with, this is a copy of the 'Testnet' profile but you can edit and manage it independently. Note that a new **App Address** is assigned to the 'Mainnet' profile.

      3. Use the 'Mainnet' profile **App Address** in your integration code instead of the earlier one which corresponds to 'Testnet'. You will need to restart your application after this change. This is important. If you fail to make this change, even if you have switched profile in the dashboard, your application will continue to use the 'Testnet' configuration settings.

    !!! caution

          When switching your application from Arcana Testnet to Mainnet, you must ensure to use the new **App Address** corresponding to the application's 'Mainnet' profile while integrating with the Auth SDK and then bring up your application on the Arcana Mainnet. This will ensure that user onboarding and the blockchain transactions happen as per the Mainnet configuration settings and not as per the Testnet configuration profile. 

## Auth Settings

---

??? an-faq "Is it mandatory to specify all configurations in the Auth section?"

      If you intend to integrate your application with the Arcana Auth SDK for onboarding users, you must specify at least the configuration for the social authentication mechanisms that you would like to allow in your application. If you would only allow user onboarding via passwordless login, then there is no need for any Auth configuration. Simply integrate with the Auth SDK using default settings and call the `loginWithLink` API.

??? an-faq "Can an application enable more than one authentication mechanism?"  

      Yes. The application developer can enable one or more social authentication mechanisms and passwordless login if their use case requires it. This will allow application users to use any of the supported authentication mechanisms to log into the application easily with the comfort and familiarity of the Web2 application onboarding experience.

??? an-faq "Is there a way to control when, which position in the application window, and what type of Arcana wallet is displayed by the Auth SDK?"

      When integrating with the Arcana Auth SDK, the application developer can use the `alwaysVisible` setting to control when the Arcana wallet is displayed and which wallet screens are shown. By default, the Full UI mode is enabled, which means the Arcana wallet is always displayed and the user can minimize it.

      If `alwaysVisible` is set to false during `AuthProvider` instantiation, the wallet will **only** appear when a blockchain transaction is triggered. The wallet screen will pop up, requesting the user's approval or signature. Once the user takes the appropriate action, the wallet screen will disappear.

      For more details, see [Arcana wallet visibility modes]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletuimodes.md)

## Store Settings

---

??? an-faq "Why is Storage Region setting disabled?"

      When you register your application in the dashboard, you will be asked to choose a storage region for your application user data. This is a one-time configuration and cannot be changed later. The **Store** section of the dashboard simply displays the storage region that you selected during registration.

      To change the storage region setting for your application, you will need to delete the application from the dashboard and re-register it, selecting a different storage region during the registration process.

## Access Settings

---

??? an-faq "Will selecting a specific `Chain type` setting affect the fees I pay for using Auth SDK?"

      No, the Chain type selection does not impact fees. It is simply an optional setting that allows us to gauge user preference for certain blockchain technologies. This information is used internally to prioritize the development and improvement of features within the Arcana Network Platform and the Auth SDK.
