# Plug & Play Auth

Plug & Play Auth is the default login UI in Arcana Auth SDK. Web3 apps can use the [`connect`](https://authsdk-ref-guide.netlify.app/classes/authprovider#connect) method to show this built-in UI with the configured onboarding options from [Arcana Developer Dashboard](../dashboard/). Developers can use this ready-made UI instead of creating a [custom login UI](../custom-login-ui/).

Plug & Play Login UI

```
flowchart LR 
    subgraph A [Plug & Play vs. Custom Login UI]
    direction LR
        A1(((Developer))) -- 1.Register App --> B1(Dashboard Login)
        B1  --> C1[Get Client ID] --> E1[Initialize <code>AuthProvider</code>]
        A1 -- 2.Integrate App --> D1[Install Auth SDK] --> E1 --> O[Onboard Users]
    end
classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class F1 an-highlight
```

```
flowchart LR
    subgraph B [Onboard Users]
    direction LR
        O[Onboard Users] -- Plug-and-Play Login UI--> F1[<code>connect</code>]
        O -- Custom Login UI --> P1{Provider Type} -- Social Providers --> G1[<code>loginWithSocial</code>]
        P1 -- IAM Provider Firebase --> H1[<code>loginWithBearer</code>]
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class F1 an-highlight
```

## Compact Modal

The built-in plug-and-play login UI includes a compact modal and a normal-sized modal. Choose the compact modal by setting `compact: true` in `connectOptions` when instantiating `AuthProvider`. For more details, see [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams).

```
import { AuthProvider, CHAIN } from '@arcana/auth'

interface ChainConfig {
  chainId: CHAIN
  rpcUrl?: string
}

const auth = new AuthProvider(`${clientId}`, {
  position: 'left',        // default - right
  theme: 'light',          // default - dark
  alwaysVisible: false,    // default - true
  setWindowProvider: true, // default - false
  connectOptions: {
    compact: true // default - false
  },
  chainConfig: {
    chainId: CHAIN.POLYGON_MAINNET,
    rpcUrl: '',
  },
})

await auth.init()

```

Plug & Play Login UI Types

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../an-did-token/#verify-did-token) and subsequently generate another token for app use.
