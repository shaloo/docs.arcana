```js
import { AuthProvider } from "@arcana/auth"
const auth = new AuthProvider("...")

window.onload = () => {
  await auth.init()
}
// First login / signup
// Display custom login UI with non-passkey login options

...

// Allow user to click log in via one of the options

if !auth.isLoggedIn(){
  // Onboard user via non-passkey option
  await auth.loginWithSocial({{page.meta.arcana.social_provider}})

  // Check if the device/browser support passkey login
  if auth.isPasskeyLoginSupported(){
    
    // Enable authenticated user to link a passkey with the app

    // Post login function
    await auth.linkPasskey();
  }
}
```