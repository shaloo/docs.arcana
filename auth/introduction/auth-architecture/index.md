# Architecture: Auth

Arcana Auth SDK allows Web3 app developers to onboard app users at scale using social and passwordless login. Authenticated users can instantly access the embedded, non-custodial Arcana wallet from within the app's context. Developers can whitelist app operations and enable gasless transactions through the Arcana wallet or third-party wallets.

Here is a high-level overview of the technical architecture and components that power the Arcana Auth SDK.

## Auth Components

- [Arcana Developer Dashboard](../../../concepts/dashboard/)
- [Arcana Gateway](../../../concepts/gateway-node/)
- [Arcana Auth SDK](../../../concepts/authsdk/)
- [Asynchronous Distributed Key Generation (ADKG)](../../../concepts/adkg/)
- Arcana Auth protocol (Back-end Subsystem)

Auth Components

### Arcana Developer Dashboard

Arcana Developer Dashboard is the user interface offered to Web3 app developers for registering an app and configuring the authentication providers and gasless transaction usage settings as per the app requirements.

### Arcana Gateway

The Gateway is one of the key back-end components that works with the Arcana Developer Dashboard as well as the SDK integrated with the app. It is responsible for storing and managing SDK usage configuration details for various apps and manages developer accounts, app usage and billing, etc.

All transactions initiated by the Arcana wallet are processed via the Gateway. It also handles gasless transactions for the Arcana wallet.

### Arcana Auth SDK

The Arcana Auth SDK integrates with the app and enables user onboarding through social login providers, IAM providers, and passwordless login. It also enables Web3 operations through the embedded Arcana wallet.

### Asynchronous Distributed Key Generation (ADKG)

A core back-end component that generates and manages key shares securely. It works with the SDK integrated with the app to securely dispense key shares. Some of the nodes running ADKG logic are owned by trusted third-party validators. In the future, we plan to make this component fully decentralized.

### Arcana Auth protocol (Back-end Subsystem)

This refers to a bunch of entities in the back-end that implement the core system logic and algorithms on blockchain using [Arcana smart contracts](../../../concepts/ansmartc/an-smart-contracts/).

See [Arcana Technical White paper](https://www.notion.so/Arcana-Technical-Docs-a1d7fd0d2970452586c693e4fee14d08) for details.
