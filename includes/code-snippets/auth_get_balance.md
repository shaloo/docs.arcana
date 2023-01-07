```ts
let balance = ''

async function getBalance() {
  console.log('Requesting Balance')
  try {
    provider.request({ method: 'eth_getBalance' }).then((balance) => {
      // convert a currency unit from wei to ether
      const balanceInEth = ethers.utils.formatEther(balance)
      console.log(`balance: ${balanceInEth} ETH`)
    })
  } catch (e) {
    console.log({ e })
  }
}
```
