When using the `ethers` or `web3js` libraries in a Web3 app, you can access the standard EIP-1193 Ethereum provider:

```js

// ethers
const provider = new ethers.providers.Web3Provider(auth.provider)

// web3js
const provider = new Web3(auth.provider)
```
