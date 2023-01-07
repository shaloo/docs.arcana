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

### Why can't I upload the logo file?

Make sure the file is less than the 2MB limit for a successful upload.

### How do I change the logo file that I uploaded earlier?

Click on the 'x' icon next to the uploaded logo file. You will see a notification about the successful deletion of the file. Click on the upload icon and upload a new logo file.

### How do I delete the application configuration and start afresh?

To delete an application in the Arcana Developer Dashboard:

* Click on the application card and select **Configure**
* Scroll to the **Controls** section at the bottom and click **Delete**
* Confirm the delete action in the pop-up
* Your application registration will be canceled and the **App Address** assigned to your application will no longer work
* To create a new application and obtain a new **App Address**, log in to the dashboard again and follow the steps to register and configure a new application. This new **App Address** can be used to integrate with Arcana SDKs.

---

## Auth Settings

---

### Is it mandatory to specify all configurations in the Auth section?

If you intend to integrate your application with the Arcana Auth SDK for onboarding users, you must specify at least the configuration for the social authentication mechanisms that you would like to allow in your application. If you would only allow user onboarding via passwordless login, then there is no need for any Auth configuration. Simply integrate with the Auth SDK using default settings and call the `loginWithLink` API.

### Can an application enable more than one authentication mechanism?

Yes. The application developer can enable one or more social authentication mechanisms and passwordless login if their use case requires it. This will allow application users to use any of the supported authentication mechanisms to log into the application easily with the comfort and familiarity of the Web2 application onboarding experience.

### Is there a way to control when, which position in the application window, and what type of Arcana wallet is displayed by the Auth SDK?

When integrating with the Arcana Auth SDK, the application developer can use the `alwaysVisible` setting to control when the Arcana wallet is displayed and which wallet screens are shown. By default, the Full UI mode is enabled, which means the Arcana wallet is always displayed and the user can minimize it.

If `alwaysVisible` is set to false during `AuthProvider` instantiation, the wallet will **only** appear when a blockchain transaction is triggered. The wallet screen will pop up, requesting the user's approval or signature. Once the user takes the appropriate action, the wallet screen will disappear.

For more details, see [Arcana wallet visibility modes]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletuimodes.md)

---

## Store Settings

---

### Why is Storage Region setting disabled?

When you register your application in the dashboard, you will be asked to choose a storage region for your application user data. This is a one-time configuration and cannot be changed later. The **Store** section of the dashboard simply displays the storage region that you selected during registration.

To change the storage region setting for your application, you will need to delete the application from the dashboard and re-register it, selecting a different storage region during the registration process.

---

## Access Settings

---

### Will selecting a specific `Chain type` setting affect the fees I pay for using Auth SDK?

No, the Chain type selection does not impact fees. It is simply an optional setting that allows us to gauge user preference for certain blockchain technologies. This information is used internally to prioritize the development and improvement of features within the Arcana Network Platform and the Auth SDK.
