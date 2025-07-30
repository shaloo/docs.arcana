# Chain Abstraction SDKs

Enable [unified balance](../../concepts/ca/unified-balance/) and [chain abstracted](../../concepts/ca/chain-abstraction/) transactions for Web3 app users.

You may need to install one or more Arcana SDK packages according to the app type.

Arcana CA SDK Flavors

Install the appropriate CA SDK as per Web3 app type:

| SDK Name | Web3 Application Type | Package Name | Dependency | | --- | --- | --- | --- | | Arcana CA SDK | For enabling unified balance in web apps: Vanilla HTML/CSS/JS Apps, Vite, Vue Apps | [`ca-sdk`](https://www.npmjs.com/package/@arcana/ca-sdk) | None | | Arcana CA Wagmi SDK | Wagmi Apps | [`ca-wagmi`](https://www.npmjs.com/package/@arcana/ca-wagmi) | [`ca-sdk`](https://www.npmjs.com/package/@arcana/ca-sdk) |

## Install SDKs

### Web Apps

```
npm install --save @arcana/ca-sdk

```

### Wagmi Apps

```
npm install --save @arcana/ca-sdk @arcana/ca-wagmi

```
