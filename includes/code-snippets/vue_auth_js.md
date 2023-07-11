```js title="auth.js" hl_lines="1 3 6 7 10 15"
import { AuthProvider } from "@arcana/auth";

let authInstance;

//Mainnet ClientId
const clientId = "xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063";

export async function getAuthInstance() {
  if (authInstance == null) {
    authInstance = new AuthProvider(clientId, {
      alwaysVisible: true,
      theme: "light",
      position: "right",
    });
    await authInstance.init();
    await authInstance.connect();
  }
  return authInstance;
}
```