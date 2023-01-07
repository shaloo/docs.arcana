```js
const appAddress = '445007f942f9Ba718953094BbeeeeeB9484cAfd2' // App Address Example

const auth = new AuthProvider(`${appAddress}`, {
  position: 'left', // defaults to right
  theme: 'light', // defaults to dark
  alwaysVisible: false, // defaults to true which is Full UI mode
  chainConfig: {
    chainId: CHAIN.POLYGON_MAINNET,
    rpcUrl: '',
  },
})
```
