# Overview

**Arcana** offers **Arcana Auth SDK** that integrates with Web3 apps to enable user onboarding via [social login](../concepts/social-login/). It allows authenticated users to sign blockchain transactions through the in-app, embedded, non-custodial Arcana wallet.

## Get Started

```
flowchart LR
    subgraph Register [1.Register App]
    direction LR
      A0(((Step 1))) --> B0([Dashboard])
      B0 --> C0[Register App] --> E0[Client ID] 
      C0 -- Configure App --> D0[SDK Settings]   
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class E0 an-highlight
```

```
flowchart LR
    subgraph Integrate [2.Integrate SDK with App]
    direction LR
      A00(((Step 2))) --> F00[Install SDK]
      F00 -- Integrate App --> G00[Initialize SDK]
      E00[ClientID] --> G00
      G00 --> H00(Call SDK Functions)
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class E00 an-highlight
```

## Usage

```

flowchart LR 
    subgraph Step1 [Arcana Auth SDK Usage]
    direction LR
        A1(((Start))) -- 1.Register App --> B1(Dashboard Login)
        B1  --> C1[Get Client ID] --> E1
        A1 -- 2.Integrate App --> D1[Install Auth SDK] --> E1[Initialize <code>AuthProvider</code>] --> F1[Social Login Fns]
        E1 --> G1[Web3 Wallet Ops]
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class C1 an-highlight
```

**Key Features**

- Onboard users quickly, at scale, via popular [social login providers](../web3-stack/auth/).
- Provide instant access to use the in-app, non-custodial Arcana wallet.
- Easy to customize and integrate with various [Web3 app types](../auth/sdk-installation/).

Current Version

Arcana CA SDK: Use [**v0.0.3**](https://www.npmjs.com/package/@arcana/ca-sdk).

Arcana Auth SDK: Use [**v1.0.12**](https://www.npmjs.com/package/@arcana/auth). Older versions may encounter potential breaking changes that require app reconfiguration, integration code updates, and redeployment.[Migrate](../migration/main-auth-v1.0.12-migration/) **Arcana Auth SDK v1.0.11 -> v1.0.12**.

## See Also

- [Wallet User Guide](../user-guides/wallet-ui/)
- [Dashboard User Guide](../setup/config-dApp-with-db/)
- [Auth SDK](../concepts/authsdk/)
