# Arcana Auth Wagmi SDK Usage

Use the Arcana Auth Wagmi SDK to onboard users in a Wagmi app via social login. Let users instantly access the in-app Arcana wallet and sign blockchain transactions.

[SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/)

## Install

```
npm install --save @arcana/auth @arcana/auth-wagmi

```

## Usage

### With plug n play UI

```
import { ArcanaConnector } from "@arcana/auth-wagmi"
import { AuthProvider } from "@arcana/auth"

const auth = new AuthProvider(`${arcana_client_id}`)
const connector = ArcanaConnector({
  auth,
})

```

### With custom UI

```
import { ArcanaConnector } from "@arcana/auth-wagmi"
import { AuthProvider } from "@arcana/auth"

const auth = new AuthProvider(`${arcana_client_id}`)
const connector = ArcanaConnector({
  auth,
  loginType: {
    provider: "google"
  } 
})

```

For more details on connectors and integrating your app with Wagmi, see [Wagmi documentation](https://wagmi.sh/react/getting-started).
