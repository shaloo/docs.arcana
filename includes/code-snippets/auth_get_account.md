```ts hl_lines="7"
// get from eth_accounts
let from = ''

async function getAccounts() {
  console.log('Requesting accounts')
  try {
    const accounts = await provider.request({ method: 'eth_accounts' })
    console.log({ accounts })
    from = accounts[0] // Use this account address to get wallet balance
  } catch (e) {
    console.log({ e })
  }
}
```
