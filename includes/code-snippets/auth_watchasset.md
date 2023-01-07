```js
async function watchAsset() {
  setRequest('eth_sendTransaction')
  const hash = await provider.request({
    method: 'wallet_watchAsset',
      params: {
        type: 'ERC20',
        options: {
          address: '0xB983E01458529665007fF7E0CDdeCDB74B967Eb6',
          symbol: 'FOO',
          decimals: 18,
          image: 'https://foo.io/token-image.svg',
      },
    },
  })
  console.log({ hash })
}
```
