```js hl_lines="13-15"
import { AuthProvider, CHAIN } from '@arcana/auth'

interface ChainConfig {
  chainId: CHAIN
  rpcUrl?: string
}

const auth = new AuthProvider(`${clientId}`, {
  position: 'left',        // default - right
  theme: 'light',          // default - dark
  alwaysVisible: false,    // default - true
  setWindowProvider: true, // default - false
  connectOptions: {
    compact: true // default - false
  },
  chainConfig: {
    chainId: CHAIN.POLYGON_MAINNET,
    rpcUrl: '',
  },
})

await auth.init()
```
