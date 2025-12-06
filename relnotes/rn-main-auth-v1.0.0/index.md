# Release Notes Arcana Auth (Mainnet)

**Version: v1.0.0**

**Release Date: February 1, 2023**

This release of the Arcana Auth SDK consists of the following components:

- [Arcana Auth SDK v1.0.0](https://www.npmjs.com/package/@arcana/auth/v/1.0.0)
- Arcana Developer Dashboard
- Arcana wallet UI

## New Product Features

______________________________________________________________________

### Brand new look: Arcana Developer Dashboard

Check out the newly redesigned Arcana Developer Dashboard. It allows Web3 app developers to register apps with Arcana , and configure user onboarding and wallet settings before integrating with the Arcana Auth SDK.

### Application Configuration Profiles

Developers can now choose to deploy applications on the Arcana Testnet or the Mainnet. You can start with the default 'Testnet' app configuration profile and once the application is tested and ready to deploy, deploy it on the Arcana Mainnet.

An under-development application can be deployed on the Arcana Testnet. At the same time, a tested and stable version can be deployed on the Arcana Mainnet where the app users can log in and utilize the app.

Developer Dashboard

- Register and configure Web3 applications

- Create, delete, and manage application configurations for 'Testnet' and 'Mainnet'

  - Copy settings or create a fresh 'Mainnet' profile
  - While editing, toggle between 'Testnet' and 'Mainnet' configuration profiles
  - Each profile can be edited and managed independently

- A new unique **Client ID** is associated with the 'Mainnet' configuration profile

  An-note

  Do remember to use the correct Client ID for integrating with the Arcana Auth SDKwhen you deploy your application on the Mainnet.

See [how to pre-configure wallet chains via the dashboard](../../setup/config-wallet-chains/) for details.

### App-specific and Global Keys

- App-specific keys are the default, developers can configure it to [global keyspace type](../../setup/config-dApp-with-db/#configure-keyspace)
- Developers must submit a verification form and seek approval for enabling global keys
- Global keys make for a better user experience whereby users see the same wallet address across when they log into any app in the Arcana ecosystem. Users must ensure that they do not sign any malicious transactions of any fraudulent app. To mitigate this risk, Arcana requires developers to submit a verification form before the global keys feature is enabled for an app.

### Monitor Application Usage Metrics

- Both Testnet and Mainnet Usage are now tracked for monthly active users (MAU). The application dashboard screen displays usage metrics.
- 'Testnet' configuration profile screen displays Testnet usage
- 'Mainnet' configuration profile screen displays Mainnet usage
- No charges are levied for using Arcana Testnet. Billing for Arcana Mainnet usage will be calculated at the end of every month.

See [Arcana Developer Dashboard User Guide](../../setup/config-dApp-with-db/#monitor-usage) for details.

Usage Metrics

### Wallet Enhancements

Auto-refresh of the account balance amount is now supported.

### State-of-the-art DKG

- Secure, self-sovereign user identity management via asynchronous, distributed key generation protocol
- On the road to decentralized key generation: Two of the DKG nodes are run by Comdex and LugaNodes.

### Audits

Arcana smart contracts and ADKG subsystem have been audited by Certik. See [Arcana Audit Reports](https://github.com/arcana-network/audit-reports/) for details.

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides for details.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

## Migrate to v1.0.0

______________________________________________________________________

Are you using an older version of the Arcana Auth SDK? Use the [Migration Guides](../../migration/archives/) and upgrade to the latest version.

______________________________________________________________________

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
