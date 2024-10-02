```js
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
  await auth.loginWithSocial({{page.meta.arcana.social_provider}});

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