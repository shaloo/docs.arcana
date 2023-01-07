```js
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

provider = auth.getProvider()
// or
provider = window.ethereum
```
