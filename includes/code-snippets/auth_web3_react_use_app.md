```js title="auth-web3-react-example/pages/_app.js" hl_lines="1 2 5 6 17-19"
import { ArcanaConnector } from "@arcana/auth-web3-react"
import { authConnector, authHooks } from '@arcana/auth-web3-react'
import { useWeb3React, Web3ReactHooks, Web3ReactProvider } from '@web3-react/core'

const connectors: [ArcanaConnector, Web3ReactHooks][] = [
  [authConnector, authHooks]
]

function Child() {
  const { connector } = useWeb3React()
  console.log(`Priority Connector is: ${getName(connector)}`)
  return null
}

export default function ProviderExample() {
  return (
    <Web3ReactProvider connectors={connectors}>
      <Child />
    </Web3ReactProvider>
  )
}
```