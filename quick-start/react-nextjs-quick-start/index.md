# Get Started: React/Next.js Apps

Integrate 'React/Next.js' apps with Arcana Auth SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

## Prerequisites

- App must be [registered](../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../setup/config-auth/) such as [social login](../../concepts/social-login/), [wallet user experience](../../concepts/anwallet/), etc.

Supported Versions: React/NextJS, TypeScript

- React [18.00](https://github.com/facebook/react/blob/main/CHANGELOG.md#1800-march-29-2022) or higher
- TypeScript [5.00](https://github.com/microsoft/TypeScript/releases/tag/v5.0.2) or higher

## 1. Install SDKs

```
npm install --save @arcana/auth @arcana/auth-react

```

```
yarn add @arcana/auth  @arcana/auth-react

```

## 2. Integrate

```
import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { AuthProvider } from "@arcana/auth";
import { ProvideAuth } from "@arcana/auth-react";
import App from "./App";

const rootElement = document.getElementById("root");
const root = createRoot(rootElement);

const provider = new AuthProvider(
  "xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063"
);

root.render(
  <StrictMode>
    <ProvideAuth provider={provider}>
      <App />
    </ProvideAuth>
  </StrictMode>
);

```

```
import React from "react";
import { Auth } from "@arcana/auth-react";

export default function App() {
  return (
    <div className="App">
      <h1>Sample Auth React App</h1>
      <Auth />
    </div>
  );

```

### Onboard Users

```
import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { AuthProvider } from "@arcana/auth";
import { ProvideAuth } from "@arcana/auth-react";

import App from "./App";

const rootElement = document.getElementById("root");
const root = createRoot(rootElement);
const provider = new AuthProvider(
  "xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063",
  {
    network: "mainnet",
    theme: "light",
    connectOptions: {
      compact: true,
    },
    chainConfig: {
      chainId: "80001"
    }
  }
); //See SDK Reference Guide for optional parameters

root.render(
  <StrictMode>
    <ProvideAuth provider={provider}>
      <App />
    </ProvideAuth>
  </StrictMode>
);

```

```
import { Auth } from "@arcana/auth-react";

// Use <Auth/> to use the built-in, plug & play login UI
function App() {
  const [theme, setTheme] = React.useState("light");
  return (
    <div>
      <Auth theme={theme} />
    </div>
)}

export default App;

```

### Sign Transactions

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../auth/web3-ops/evm/) in the authenticated user's context.

**That's all!**

The 'React/Next.js' app is ready to onboard users and allow them to sign blockchain transactions.

## 3. Advanced Usage

`AuthProvider` Optional Parameters

Besides Client ID input parameter, you can optionally customize these settings in the `AuthProvider` constructor:

______________________________________________________________________

**`position`:** wallet position within the app context - `left`|`right`

**`theme`:** wallet theme - `light`|`dark`

**`connectOptions`:** [compact mode](../../concepts/plug-and-play-auth/#compact-modal) for the built-in plug-and-play login UI - `true`|`false`

```
connectOptions: {
      compact: true // default - false
},

```

______________________________________________________________________

See [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) for details.

Wallet Customization

Manage the user experience for signing blockchain transactions by configuring SDK usage. Specify the [theme, branding](../../setup/config-dApp-with-db/#settings-overview) settings of the in-app built-in Arcana wallet UI. Use [wallet visibility](../../concepts/anwallet/walletvisibility/) and decide when to display the wallet UI in the app. Configure [keyspace](../../concepts/keyspace-types/) and enable the user experience of having the same wallet address across multiple apps integrated with the Arcana Auth SDK.

You can also replace the built-in wallet UI with a [custom wallet UI](../../setup/config-custom-wallet-ui/).

Custom Login UI

You can onboard users through a [custom login UI](../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../../auth/onboard/react-nextjs/custom-ui/) and onboard users in a 'React/Next.js' app.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See Also

**'React/Next.js'** integration example: See `sample-auth-react, sample-auth-nextjs` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

Arcana Auth React SDK Quick Links

- [Arcana Auth React SDK Reference Guide](https://auth-react-sdk-ref-guide.netlify.app/)
- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Arcana Auth SDK Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-react/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-react)

[Try Demo App](https://demo.arcana.network)
