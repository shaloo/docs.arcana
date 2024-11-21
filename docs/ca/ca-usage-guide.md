---
alias: web-ca-usage-guide
title: 'Arcana CA Web SDK Usage Guide'
description: 'How to install and use the Arcana CA Web SDK with sample code and references.'
arcana:
  root_rel_path: ..
---

<!--
Note, this is a pure markdown file with no mkdocs related tags or keywords. It is a copy 
of the file in the `ca` repo: https://github.com/arcana-network/ca-sdk/blob/main/usage.md
-->

# {{config.extra.arcana.ca_sdk_name}} Usage

Use the {{config.extra.arcana.ca_sdk_name}} to leverage Arcana's Chain Abstraction and enable unified balance for Web3 app users.

[:octicons-cross-reference-16:{ .icon-color } SDK Reference ](https://casdk-dev-ref-guide.netlify.app/){ .md-button }

## Installation

### NPM/Yarn Install

```sh
npm install --save @arcana/ca-sdk
yarn add @arcana/ca-sdk
```

### CDN Install

```html
<script src="https://cdn.jsdelivr.net/npm/@arcana/ca-sdk"></script>
```

```html
<script src="https://unpkg.com/@arcana/ca-sdk"></script>
```

---

## Usage

### Import CA

```js
import { CA } from '@arcana/ca-sdk' // From npm
```

### Initialize CA

```ts
import { CA } from '@arcana/ca-sdk'

const ca = new CA(window.ethereum)

await ca.init()

```

See [Get Started with CA SDK](https://docs.arcana.network/quick-start/ca-quick-start/) for more CA SDK usage insights.

### CA APIs

#### Allowance

```js
  IntentSourceForAllowance: {
      chainID: number;
      currentAllowance: bigint;
      requiredAllowance: bigint;
      token: TokenInfo;
  }
```

#### Unified Balance

```js
await ca.getUnifiedBalance()
```

#### Bridge

```js
ca.bridge()
```

#### Request

```js
await ca.request()
```

#### Intercept

```js
await ca.intercept()
```

#### SendTx

```js
await ca.sendTx()
```

#### Refund

```js
await ca.refundIntentTx(hash)
```

### Hooks

#### setOnAllowanceHook

```js
await ca.setOnAllowanceHook(hook)
```

#### setOnBeforeSendHook

```js
await ca.setOnBeforeSendHook(hook)
```

---

Check out [CA SDK Reference Guide](https://casdk-dev-ref-guide.netlify.app/) for details.