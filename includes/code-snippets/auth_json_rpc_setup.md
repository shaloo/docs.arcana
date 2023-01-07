```js
// Assuming Auth SDK is integrated and initialized
try {
  provider = auth.provider
  const connected = await auth.isLoggedIn()
  console.log({ connected })
  setHooks()
} catch (e) {
  // Handle exception case
}

// setHooks: Manage chain or account switch in Arcana wallet
function setHooks() {
  provider.on('connect', async (params) => {
    console.log({ type: 'connect', params: params })
    const isLoggedIn = await auth.isLoggedIn()
    console.log({ isLoggedIn })
  })
  provider.on('accountsChanged', (params) => {
    //Handle
    console.log({ type: 'accountsChanged', params: params })
  })
  provider.on('chainChanged', async (params) => {
    console.log({ type: 'chainChanged', params: params })
  })
}
```
