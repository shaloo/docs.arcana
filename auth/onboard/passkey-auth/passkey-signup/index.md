# Login Users via Passkeys

In this guide, you will learn how a Web3 app integrated with the Arcana Auth SDK let users [sign-up and login](../../../../concepts/authtype/auth-passkeys/#sign-up-login) into the app via [passkeys](../../../../concepts/authtype/auth-passkeys/) as the only app onboarding.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- The app must be [registered using the Arcana Developer Dashboard](../../../../setup/config-auth/register-app/). A unique Client ID is assigned after app registration. It is required for integrating the app with the Arcana Auth SDK.
- [Configure passkeys settings](../../../../setup/config-auth-passkeys/) in the Arcana Developer Dashboard.
- Follow the instructions as per the app type and [integrate the app](../../../integrate/vanilla-html-css-js/) with the Arcana Auth SDK.

## Steps

*Follow these steps to enable sign-up & login via passkeys in a Web3 app that is integrated with the Arcana Auth SDK.*

### 1. Register Passkey

Add code to sign-up and create new user account via `registerWithPasskey()`. This will let the user create a new passkey and link it with the app in one shot. The newly created user will be assigned a blockchain wallet address as well. Once user has created the passkeys, enable the `Login with Passkey` option in the app UI.

### 2. Enable Passkey Login

Once passkeys are set up by the user, enable a 'login with passkey' option in the custom login UI of the app. When a user chooses this option to log in, call `loginWithPasskey`. This will bring up the device specific UI to display a list of passkeys linked with the app and let the user select one to onboard the app.

```
import { AuthProvider } from "@arcana/auth"
const auth = new AuthProvider("...")

window.onload = () => {
  await auth.init()
}

...

// Display custom login UI with non-passkey login options

...

// Allow user to click log in via one of the options

if !auth.isLoggedIn(){
  // Onboard user via non-passkey option
  await auth.loginWithSocial({{ no such element: dict object['social_provider'] }});

  const userInfo = auth.getUser();
  console.log("userInfo.name", userInfo.name);

  // Check if the device/browser support passkey login
  if auth.isPasskeyLoginSupported(){

    // Enable authenticated user to link a passkey with the app

    // Post login function
    await auth.linkPasskey();

    // Post login function
    const passkeys = await auth.getMyPasskeys();
    console.log({ passkeys });
  }
}

// Allow user to choose and log out after passkey linking is done

// Display custom login UI with all onboarding options including passkeys

// User clicks 'login with passkey' option in the UI

if !auth.isLoggedIn(){
  // Pre login function
  await auth.loginWithPasskey();
  ...
}

...

```

Developers can also let user view the passkeys linked with the app or website and unlink them, if required.

### List Passkeys

In the authenticated user's context, call `getMyPasskeys` to list all the user passkeys associated with the app.

```
import { AuthProvider } from "@arcana/auth";
const auth = new AuthProvider("...");

window.onload = () => {
  await auth.init();
}

if !auth.isLoggedIn(){
  // Onboard user via non-passkey option
  await auth.loginWithSocial({{ no such element: dict object['social_provider'] }});

  const userInfo = auth.getUser();
  console.log("userInfo.name", userInfo.name);

  // Check if the device/browser support passkey login
  if auth.isPasskeyLoginSupported(){

    // Enable authenticated user to link a passkey with the app

    // Post login function
    await auth.linkPasskey();

    // Post login function
    const passkeys = await auth.getMyPasskeys();
    console.log({ passkeys });
  }

  ...

}

```

### Unlink Passkeys

Apps can allow users to unlink the passkeys associated with an app.

To do this, call `getMyPasskeys`in the authenticated user's context. This will list all the passkeys associated with the app. Let the user select a passkey. Specify the id of the selected passkey and call `unlinkPasskey(id)`. This will ensure that on subsequent login attempts, user cannot onboard the app with the unlinked passkey.

```
import { AuthProvider } from "@arcana/auth"
const auth = new AuthProvider("...")

window.onload = () => {
  await auth.init()
}

...

// First login / signup
// Display custom login UI with non-passkey login options

...

// Allow user to click log in via one of the options

if !auth.isLoggedIn(){
  // Onboard user via non-passkey option
  await auth.loginWithSocial({{ no such element: dict object['social_provider'] }});

  const userInfo = auth.getUser();
  console.log("userInfo.name", userInfo.name);

  // Check if the device/browser support passkey login
  if auth.isPasskeyLoginSupported(){

    // Enable authenticated user to link a passkey with the app

    // Post login function
    await auth.linkPasskey();

    // Post login function
    const passkeys = await auth.getMyPasskeys();
    console.log({ passkeys });
  }
}

// Allow user to choose and log out after passkey linking is done

// Display custom login UI with all onboarding options including passkeys

// User clicks 'login with passkey' option in the UI

// Pre login function
await auth.loginWithPasskey();

...

if !auth.isLoggedIn(){

  // Allow user to select passkey and unlink

  // Post login function
  const passkeys = await auth.getMyPasskeys();
  console.log({ passkeys });

  // User selects passkey n via device/browser passkey UI

  if (passkeys[n]){
    // Post login function
    await auth.unlinkPasskey(passkey[n]);
  }

}

```

**That is all.**

Your dApp is all set for letting users sign-in and login via passkeys.

## What's Next?

Authenticated users can instantly access the in-app Arcana wallet UI for signing blockchain transactions. Use the `AuthProvider` EIP-1193 standard Ethereum provider to call JSON/RPC functions and Web3 wallet operations in the app. [Learn more...](../../../web3-ops/evm/)

## See also

- [Authentication Types](../../../../concepts/authtype/)
- [Configure Social Providers](../../../../setup/)
- [Arcana Auth SDK Errors](../../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../../auth-usage-guide/)
- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
