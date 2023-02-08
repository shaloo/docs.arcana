```js
import { AuthProvider } from '@arcana/auth'

let authInstance

export async function getAuthInstance () {
  if (authInstance == null) {
    authInstance = new AuthProvider(process.env.VUE_APP_ARCANA_APP_ADDRESS, {
      network: process.env.VUE_APP_ARCANA_NETWORK ?? 'testnet',
      alwaysVisible: true,
      theme: 'light',
      position: 'right'
    })
    await authInstance.init()

    // once auth instance is initialized, you can call Auth SDK functions

    // call plug and play function in the Auth SDK
    await authInstance.connect()

    // check if a user is logged in , check account balance and more...
  }
  return authInstance
}
```