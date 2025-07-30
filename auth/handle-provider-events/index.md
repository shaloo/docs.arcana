# Handle Provider Events

This guide lists the standard EIP-1193 events raised by the `AuthProvider` in the Arcana Auth SDK and how app developers can handle those events in the app.

## Prerequisites

- To receive and handle the `AuthProvider` events, register the app, configure social login and wallet settings and integrate the app with the SDK.

## Events

`AuthProvider` emits the following standard [EIP-1193 events](https://eips.ethereum.org/EIPS/eip-1193#events):

- **connect**: the provider is ready to submit the blockchain requests to the chain on behalf of the user (*Use `provider.isConnected()` to check if the `AuthProvider` is connected.*)
- **disconnect**: the `AuthProvider` is unable to submit RPC requests to a chain
- **chainChanged**: the chain associated with the Provider has changed
- **accountsChanged**: the `AuthProvider` emits this event when the return value of the `eth_accounts` RPC method changes

After initialization, when the provider is ready to submit the blockchain requests to the chain on behalf of the user, the **connect** event is generated. Use `provider.isConnected()` to check if the `AuthProvider` is connected. The **disconnect** event occurs when there is any connectivity issue with the blockchain network. If the chain is switched programmatically via the app and approved by the user or if it is changed via the Arcana wallet UI by the user, the **chainChanged** event occurs. Similarly, when the account associated with the `AuthProvider` changes, the **accountsChanged** event is emitted.

## Examples

### Connect Event

```
interface ConnectEventInfo {
  chainId: string;
}

const auth = new AuthProvider("...")
await auth.init()

...

auth.provider.on('connect', handler: (data: ConnectEventInfo) => void);

```

### Disconnect Event

When the `AuthProvider` becomes disconnected from the chains it emits the event `disconnect` with the error [ProviderRpcError](https://eips.ethereum.org/EIPS/eip-1193#rpc-errors).

```
interface ProviderRpcError extends Error {
  code: number;
  data?: unknown;
}

const auth = new AuthProvider("...")
await auth.init()

...

auth.provider.on('disconnect', handler: (error: ProviderRpcError) => void);

```

### Chain Changed Event

```
const auth = new AuthProvider("...")
await auth.init()

...

auth.provider.on('chainChanged', (chainId: string) => { 
  console.log(chainId);
  // Use chainId
});

```

### Accounts Changed Event

If the accounts available to the `AuthProvider` change, it emits the event **accountsChanged** with value **accounts: string[]**, containing the account addresses.

```
const auth = new AuthProvider("...")
await auth.init()

...

auth.provider.on('accountsChanged', handler: (accounts: Array<string>) => void);

```

Remove Listener

Make sure that you remove event listeners once you're done listening to an event in the app. For example:

```
const auth = new AuthProvider("...")
await auth.init()

...

function handleSomeEvent(accounts) {
  // Handle the event
}

auth.provider.on('someEvent', handleSomeEvent);

// Later, when the component is unloaded or you are done watching the event

auth.provider.removeListener('someEvent', handleSomeEvent);

```

**That is all.**

*You are all set to handle the events emitted by the `AuthProvider`.*

## What's Next?

Authenticated users can use the Arcana wallet to sign blockchain transactions, send and receive native, ERC20, or custom tokens, and [more](../../user-guides/wallet-ui/).

## See also

- [Arcana wallet capabilities](../../concepts/anwallet/)
- [Using Web3 wallet operations](../../user-guides/wallet-ui/)
