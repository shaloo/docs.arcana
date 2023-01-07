```js
// Pass wagmi client to React Context Provider
function App() {
  return (
    <WagmiConfig client={client}>
      <Profile />
    </WagmiConfig>
  )
```