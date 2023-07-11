```js title="utils/newArcanaAuth.ts" hl_lines="1-2 7-15"

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

