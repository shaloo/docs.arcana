```js
import { AuthProvider } from "@arcana/auth";
const auth = new AuthProvider("...");

window.onload = () => {
  await auth.init();
}

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

  ...
  
}

```