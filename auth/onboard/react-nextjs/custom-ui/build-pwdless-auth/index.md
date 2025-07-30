# Build Passwordless Auth

Learn how React/Next.js app can use custom login UI and allow users to onboard via passwordless login option.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- The app must be [registered using the Arcana Developer Dashboard](../../../../../setup/config-auth/register-app/) and a unique Client ID must be already assigned to it. This Client ID is essential for integrating the app with the Arcana Auth SDK
- Follow the instructions to [integrate the React app](../../../../integrate/react-nextjs/) with the Arcana Auth SDK and initialize the `AuthProvider` instance.

No Setup Required for Passwordless

Passwordless login does **not** require any configuration setup through the Arcana Developer Dashboard. When prompted, app users must supply an email ID to receive the OTP for logging into the app. On receiving the OTP in email, user must provide the same in the app to authenticate and access the in-app Arcana wallet to sign transactions.

## Steps

`useAuth() hook`

Use `loginWithLink` (deprecated) `loginWithOTPStart` and `loginWithOTPComplete` through the `useAuth` hook offered by the Arcana Auth React SDK and trigger passwordless login to onboard the users.

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

## What's Next?

Use the `AuthProvider` EIP-1193 standard Ethereum provider to call JSON/RPC functions and Web3 wallet operations in the app. [Learn more...](../../../../web3-ops/evm/)

## See also

**React/Next.js** integration example: See `sample-auth-react`,`sample-auth-nextjs` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../../../auth-usage-guide/)
- [Arcana Auth React SDK Reference](https://auth-react-sdk-ref-guide.netlify.app/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

Arcana Auth React SDK Quick Links

- [Arcana Auth React SDK Reference Guide](https://auth-react-sdk-ref-guide.netlify.app/)
- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Arcana Auth SDK Release notes](../../../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-react/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-react)

[Try Demo App](https://demo.arcana.network)
