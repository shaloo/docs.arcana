```js title="utils/newArcanaAuth.js" hl_lines="1 7-9 14"

import { AuthProvider } from "@arcana/auth";

let auth: AuthProvider | null;

const newAuthProvider = () => {
  if (!auth) {
    auth = new AuthProvider(
      "xar_test_b2ddxxxxxxxxxxxxxxxxxxxxxxxx78b1fa3f"
    );
  }
  return auth;
};

export { newAuthProvider };
...
```

