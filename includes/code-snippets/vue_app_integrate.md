```js hl_lines="6 9"
import { AuthProvider } from "@arcana/auth";

let authInstance;

//Mainnet ClientId
const clientId = "xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063";

if (authInstance == null) {
  authInstance = new AuthProvider(clientId);
  await authInstance.init();
}

// Use authInstance for user onboarding, JSON/RPC and wallet ops

```