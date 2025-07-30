# Build Custom Passwordless Auth

In this guide, you will learn how to integrate Vue app with the Arcana Auth SDK and then onboard users through custom login UI and passwordless login option.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- The app must be [registered using the Arcana Developer Dashboard](../../../../../setup/config-auth/register-app/). A unique Client ID is assigned after app registration. It is required for integrating the app with the Arcana Auth SDK
- Follow the instructions as per the app type and [integrate the app](../../../../integrate/vanilla-html-css-js/) with the Arcana Auth SDK.

Configuring App

Unlike other user onboarding options that require enabling authentication providers, passwordless login can be enabled without any configuration setup using the Arcana Developer Dashboard.

Developers can optionally choose to modify the default settings for branding and the Arcana wallet settings in the Arcana Developer Dashboard.

## Steps

*Follow these steps for enabling passwordless login in a Web3 app that is integrated with the Arcana Auth SDK.*

After integrating the app, add the code to onboard users in a passwordless manner using the SDK method listed below.

App users must supply an email ID to receive the OTP for logging into the app. An OTP is sent to the specified email ID. When the user provides the same OTP in the app context, authentication is complete and a wallet address is assigned to the user.

### Login with link

```
await auth.loginWithLink(`${email}`)

```

Deprecated

`loginWithLink` is deprecated.

Use `loginWithOTPStart`, `loginWithOTPComplete` for passwordless login with OTP. The OTP will be received via email supplied in `loginWithOTPStart` call.

### Login with OTP

```
try {
const loginState = await auth.loginWithOTPStart("john.doe@somemail.com");
await loginState.begin()
if(loginState.isCompleteRequired) {
  // App is using default app-specific keys
  // App must ask the user to input a 6-digit code received in mail
  var userInput = prompt("Please enter a 6-digit code:", "111111");

  // Validate if the input is a 6-digit code
  if (userInput !== null && 
      userInput.length === 6 && 
      !isNaN(userInput)) {
    const complete = await auth.loginWithOTPComplete(
      userInput, 
      onMFARequired() => {
      //Hide overlay, if used in the app
    });
    console.log("complete:",complete);
  } else {
    console.log("Invalid input. Please enter a valid 6-digit code.");
  } 
} else {
  // App is using global keys, built-in OTP input UI is displayed by the SDK
  // App is not required to add code for OTP input
}
} catch (e) {
console.log(e);
}

```

Global vs. App Specific Keys

Apps using app-specific keys must use a custom login UI that allows users to input the OTP. In this case, the `isCompleteRequired` boolean returns `true` after initiating login with OTP.

Apps using global keys are not required to use a custom login UI. A built-in login UI is automatically displayed for the user for OTP. Users must enter the OTP received via email in this UI.

MFA Enabled / Disabled

During passwordless login via OTP, apps configured for MFA and those using overlays must hide it to enable OTP input. Use the `isMFARequired` callback in the `loginWithOTPComplete` method to hide the overlay.

Check if the user has logged in successfully:

```
const connected = await auth.isLoggedIn()

```

Log out the dApp user when requested:

```
await auth.logout()

```

**That is all.**

Your dApp is all set for onboarding users via the passwordless login option.

## What's Next?

Authenticated users can instantly access the in-app Arcana wallet UI for signing blockchain transactions. Use the `AuthProvider` EIP-1193 standard Ethereum provider to call JSON/RPC functions and Web3 wallet operations in the app. [Learn more...](../../../../web3-ops/evm/)

## See also

- [Authentication Types](../../../../../concepts/authtype/)
- [Configure Social Providers](../../../../../setup/)
- [Arcana Auth SDK Errors](../../../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../../../auth-usage-guide/)
- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
