# Plug-and-Play Login UI

Use the built-in, [plug-and-play login UI modal](../../../../concepts/plug-and-play-auth/) to quickly onboard users in a 'React/Next.js' app integrated with the Arcana Auth Wagmi SDK.

Custom Login UI

You can onboard users through a [custom login UI](../../../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../custom-ui/) and onboard users in a 'React/Next.js' app.

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the Wagmi app and configure SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'React/Next.js'.
- [Integrate](../../../integrate/react-nextjs/) 'React/Next.js' app, create and initialize the `AuthProvider`.

## Steps

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

The figure below shows the built-in login UI plug-and-play pop-up authentication screen for a test app.

Plug-and-play Login UI

Compact Mode

While creating the `AuthProvider`, use `connectoOptions` to optionally choose the [compact mode](../../../../concepts/plug-and-play-auth/#compact-modal) for the plug-and-play login UI.

```
connectOptions: {
      compact: true // default - false
},

```

Login UI Options

No plug-and-play support for Firebase authentication.

The [plug and play feature](../../../../concepts/plug-and-play-auth/) of the Arcana Auth SDK does not support social login via Firebase. Developers must build a custom login UI and add code to onboard users. For details, see [onboarding users via Firebase and custom login UI](../custom-ui/build-idm/firebase-login/)

No plug-and-play support for Telegram authentication.

The [plug and play feature](../../../../concepts/plug-and-play-auth/) of the Arcana Auth SDK does not support social login via Telegram. Developers must build a custom login UI and add code to onboard users. For details, see \[\[{{ no such element: dict object['telegram_custom_ui_tag'] }}|onboarding users via Telegram and custom login UI\]\].

## What's Next?

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../../web3-ops/evm/) in the authenticated user's context.

## See also

**'React/Next.js'** integration example: See `sample-auth-react`,`sample-auth-nextjs` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../../auth-error-msg/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

Arcana Auth Wagmi SDK Quick Links

- [Auth Wagmi SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/)
- [Release notes](../../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-wagmi)

[Try Demo App](https://demo.arcana.network)
