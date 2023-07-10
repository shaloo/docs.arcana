```js
const auth = new AuthProvider("xar_test_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", { //Must provide [xar_test_xxx] or [xar_live_xxx] clientId, the unique App Identifier via Arcana Dashboard
  position: 'left', //defaults to right
  theme: 'light', //defaults to dark
  alwaysVisible: false, //defaults to true, wallet always visible
  setWindowProvider: true, //defaults to false, window.ethereum not set
  chainConfig: {
    chainId: '137', //defaults to Ethereum
    rpcUrl: 'https://polygon-rpc.com', //defaults to 'https://rpc.ankr.com/eth'
  },
})
```
