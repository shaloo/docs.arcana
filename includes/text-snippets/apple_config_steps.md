{% include "./text-snippets/config_common_steps.md" %}

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via Apple. It requires developers to use the {{config.extra.arcana.dashboard_name}} and the [Apple Developer](https://developer.apple.com/) website.

### 1. Get Redirect URI  

Select the app in the **Manage Apps** dashboard screen and click Testnet/Mainnet to configure Twitch in the respective configuration profile. Go to **Configure > Social Auth**. Copy the redirect URI shown on the top right.

!!! an-tip "Redirect URI for Apple Sign-In"

      The *Redirect URI** for Apple Sign-In is of the format:

      `https://oauth.arcana.network/auth/apple/redirect/${ClientID}`

      Where `{ClientID}` refers to the unique value assigned by {{config.extra.arcana.company_name}} to each app registered using the {{config.extra.arcana.dashboard_name}}. 

<figure markdown="span">
  ![Copy Redirect URL]({{config.extra.arcana.img_dir}}/an_dApp_config_redirect_uri.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Arcana Dashboard: Copy Redirect URL (AppleUpdateTBD)</figcaption>
</figure>

Do not close the **Social Auth** browser tab in the {{config.extra.arcana.dashboard_name}}. Open another tab and set up Apple Sign in for your app via the [Apple Developer](https://developer.apple.com/) website. 

### 2. Get Apple ClientID, TeamID, Key, KeyID

Go to the [Apple Developer](https://developer.apple.com/) website and set up the following entities to enable Apple Sign-In for your Web3 app:

* App Identifier
* Service Identifier
* Key

<figure markdown="span">
  ![Apple Developer Website: Log In]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_website_login.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Log In</figcaption>
</figure>

#### 2a. App Id

Click **Identifier**, select **AppId** type identifier and choose **App**. 

<figure markdown="span">
  ![Apple Dev: New Identifier]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_new_appid.{{config.extra.arcana.img_gif}}){ .an-screenshots }
  <figcaption>Apple Dev: New App Identifier </figcaption>
</figure>

Click continue and follow the instructions to configure the AppId identifier setting and enable 'Sign-In with Apple' option. Register the AppId identifier.

<figure markdown="span">
  ![Apple Dev: Enable Apple Sign-In]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_sign_in.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Enable Sign-In with Apple (AppId)</figcaption>
</figure>

#### 2b. Service Id

Next, click **Identifier**, select **ServiceId** type identifier.

<figure markdown="span">
  ![Apple Dev: New Identifier]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_new_srvid.{{config.extra.arcana.img_gif}}){ .an-screenshots }
  <figcaption>Apple Dev: New Service Identifier </figcaption>
</figure>

Follow the instructions and specify the service description and identifier in the Apple Developer site. Make sure you enable the 'Sign-In with Apple' option. Register the Service identifier. 

<figure markdown="span">
  ![Apple Dev: Service Id]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_srv_sign_in.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Enable Sign-In with Apple (ServiceId)</figcaption>
</figure>

In the Service Identifier settings, specify the **Redirect URI** copied from the {{config.extra.arcana.dashboard_name}} into the **Return URL** input field.

<figure markdown="span">
  ![Apple Dev: Return URL (Use Arcana Redirect URI)]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_return_url.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Return URL (Use Arcana Redirect URI)</figcaption>
</figure>

Apple may have additional instructions to verify the domain name that you specify. Make sure you complete those setup steps at the Apple Developer site and complete the service identifier setup.

#### 2c. Apple Key

Go to the **Keys** section in the Apple Developer Account site. Create a **key** and follow the instructions to register they key. 

<figure markdown="span">
  ![Apple Dev: Key]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_new_key.{{config.extra.arcana.img_gif}}){ .an-screenshots }
  <figcaption>Apple Dev: New Key</figcaption>
</figure>

Make sure you configure the key and enable 'Sign In with Apple' option. 

<figure markdown="span">
  ![Apple Dev: Key]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_key_sign_in.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Enable Apple Sign-In (Key)</figcaption>
</figure>

Also, configure the key to use the correct **AppId** that was created earlier.

<figure markdown="span">
  ![Apple Dev: Key AppId]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_key_appid.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Select correct AppId for the key</figcaption>
</figure>

**Download the key**. It can only be downloaded once. Keep it safe.

Make a note of the following values as you need to supply them in the {{config.extra.arcana.dashboard_name}} Apple Log in configuration settings.

* Service Identifier
* Team Identifier
* Key Identifier
* Key

<figure markdown="span">
  ![Apple Dev: Service Identifier]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_srvid.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Service Identifier</figcaption>
</figure>

<figure markdown="span">
  ![Apple Dev: Key Identifier, Team Identifier]({{config.extra.arcana.img_dir}}/an_dApp_apple_dev_keyid.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Apple Dev: Key Identifier, Team Identifier</figcaption>
</figure>

### 3. Update Social Auth

In the {{config.extra.arcana.dashboard_name}}, click **Configure > Social Auth**. Refer to the empty fields next to the "Apple" setting. Paste the **Service ID** obtained via the Apple Developer Account settings in the last step as the **ClientID**. Copy the **Team Identifier**, **Key Identifier** and the downloaded key value in the respective input fields.

<figure markdown="span">
  ![Update Apple Sign-In Settings]({{config.extra.arcana.img_dir}}/an_dApp_twitch_config.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Update Apple Sign-In Settings(AppleUpdateTBD)</figcaption>
</figure>

Save the **Social Auth** settings. 

*Your app is all set to onboard users via Apple Sign-In!*
