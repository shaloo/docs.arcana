```js title="example/connectors/arcanaWallet.ts" hl_lines="2-3 6-8 9-14"
import { initializeConnector } from "@web3-react/core";
import { ArcanaConnector } from "@arcana/auth-web3-react";
import { AuthProvider } from "@arcana/auth";
import { URLS } from "../chains";

const auth = new AuthProvider(
  "xar_test_b2ddexxxxxxxxxxxxxxxxxxxx8b1fa3f"
);
export const [arcanaConnect, hooks] = initializeConnector<ArcanaConnector>(
  (actions) =>
    new ArcanaConnector(auth, {
      actions,
    })
);
...
```