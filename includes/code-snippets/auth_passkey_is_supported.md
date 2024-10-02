```js
import { AuthProvider } from "@arcana/auth"
const auth = new AuthProvider("...")

window.onload = () => {
  await auth.init()
}

if auth.isPasskeyLoginSupported(){
    console.log("Passkey login is supported by the device/browser.")
    // The device or browser running the app supports Passkey Login.

    // Add code to allow non-passkey authenticated user to set up passkey

    ...
}
```