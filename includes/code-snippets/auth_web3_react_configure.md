```js title="auth-react-example/utils/auth_init.ts" hl_lines="1 2 6 8 10 12"
import { ArcanaConnector } from "@arcana/auth-web3-react"
import { AuthProvider } from "@arcana/auth"
import { initializeConnector } from "@web3-react/core"

// Example arcana_client_id `xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063`
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton

export const [authConnector, authHooks] = initializeConnector<ArcanaConnector>(
  (actions) =>
    new ArcanaConnector({
      actions,
      auth,
    })
)
...
```