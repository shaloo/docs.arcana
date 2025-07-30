# Integrate React/Next.js App

Integrate 'React/NextJS' apps with[Arcana Auth SDK](../../../concepts/authsdk/) and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-auth/register-app/) the 'React/NextJS' app and configure SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

## Steps

### 1. Install

```
npm install --save @arcana/auth

```

```
yarn add @arcana/auth

```

```
npm install --save @arcana/auth @arcana/auth-react

```

```
yarn add @arcana/auth  @arcana/auth-react

```

### 2. Initialize `AuthProvider`, `ProviderAuth`

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

### Step 4: `useAuth` Hook

```
import { useAuth } from "@arcana/auth-react";

function App() {
  const { loading, isLoggedIn, connect, user } = useAuth()

  const onConnectClick = async () => {
    try {
      await connect(); // Built-in, plug & play login UI
    } catch (err) {
      console.log({ err });
      // Handle error
    }
  };

  if (loading) {
    return <p>Loading...</p>;
  }
  if (!isLoggedIn) {
    return (
      <button onClick={onConnectClick}>
        Login UI (Built-in)
      </button>
    );
  }
}

export default App

```

## What's Next?

Onboard users via the [built-in plug-and-play login UI](../../onboard/react-nextjs/use-plug-play-auth/) or a [custom login UI](../../onboard/react-nextjs/custom-ui/).

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../web3-ops/evm/) in the authenticated user's context.

## See also

**'React/NextJS'** integration example: See `sample-auth-react` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../auth-usage-guide/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

[Try Demo App](https://demo.arcana.network)
