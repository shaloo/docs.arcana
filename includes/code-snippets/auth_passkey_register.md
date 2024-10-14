```js
import { AuthProvider } from "@arcana/auth"
const auth = new AuthProvider("...")

window.onload = () => {
  await auth.init()
}

...

// Display custom login UI with app sign up / login options

...

try {
  let sup = await auth.isPasskeyLoginSupported();
  if (sup){
    let ans = await auth.isLoggedIn();
    if (!ans){
      await auth.registerWithPasskey(ENV_USER_LOGIN_EMAIL);
      isPasskeySet = true;
      // Change display from register passkey/signup to login with Passkey button now that they are set
      const showPasskeyLogin = document.getElementById("Btn-Login-with-Passkey");
      showPasskeyLogin.style.display = "block";
      console.log("Login with Passkey enabled in UI now!!!")      
      document.querySelector("#result").innerHTML =
        "Register With Passkey for email: " + ENV_USER_LOGIN_EMAIL +
        " Done!";
    } else console.log("User already logged in, you can set new passkeys for the user or unlink them!");
  } else console.log("Login via Passkey not supported on this device/browser.")
} catch (e) {
  console.log(e);
}

...

```