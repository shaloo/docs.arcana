```js hl_lines="3 9-11"
// Set up Arcana Auth 

import { AuthProvider } from "@arcana/auth";
 
let auth = null;

export const getAuthProvider = () => {
  if (!auth) {
    auth = new AuthProvider(
      "xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063"
    );
  }
  return auth;
};
```