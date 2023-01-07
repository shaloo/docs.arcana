```js
async function signTransaction() {

  const { sig } = await provider.request({
    method: 'eth_signTransaction',
    params: [
      {
        from, // sender account address
        gasPrice: 0,
        to: '0xE28F01Cf69f27Ee17e552bFDFB7ff301ca07e780', // receiver account address
        value: '0x0de0b6b3a7640000',
      },
    ],
  })
  console.log({ sig })
}
```
