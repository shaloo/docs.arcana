# Release Notes Arcana Auth (Mainnet)

**Version: v1.0.1**

**Release Date: February 10, 2023**

This release of the Arcana Auth SDK consists of the following components:

- [Arcana Auth SDK v1.0.1](https://www.npmjs.com/package/@arcana/auth/v/1.0.1)
- Arcana Developer Dashboard
- Arcana wallet UI

## What's New?

______________________________________________________________________

In this release, the features or usage has not changed in the Arcana Auth SDK.

## Bug Fixes

______________________________________________________________________

In the previous release, v1.0.0 of the Arcana Auth SDK, the default setting for the `network` parameter (optional) in the `AuthProvider` constructor was 'mainnet'.

By default, when a developer registers an application using the Arcana Developer Dashboard, only the 'Testnet' configuration profile is created. The **Client ID** available on the dashboard corresponds to Arcana Testnet. **No 'Mainnet' configuration profile available by default**. The developer must creates it after registering an app.

This was creating an initialization mismatch issue in cases where **developers chose to not create a 'Mainnet' configuration profile** using the Arcana Developer Dashboard but continue to deploy the app on Arcana Testnet.

In this use case, the default 'Testnet' configuration settings specified via the Arcana Developer Dashboardwere not compatible with the default `network` setting in the Arcana Auth SDK, which pointed to 'mainnet'. As a result, some of the new developers were facing issues while integrating with the Arcana Auth SDK v1.0.0 as they tried to deploy the app on the Arcana Testnet. The configured social providers did not show up in the Auth UI when they created the `AuthProvider` and specified the Arcana Testnet **Client ID** without any `network` setting. This caused mismatched default \`network\`\` value, 'mainnet', to take effect for the Arcana Auth SDK usage.

As a workaround, the developer had to override the optional parameter `network` as 'testnet' to ensure the correct functioning of the authentication feature when only the 'Testnet' configuration profile was available for a registered application.

The latest release v1.0.1 of the Arcana Auth SDK handles this use case by setting the default value of the optional `network` parameter in the `AuthProvider` constructor as 'testnet'.

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides for details.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

## Migrate to v1.0.1

______________________________________________________________________

Are you using an older version of the Arcana Auth SDK? Use the [Guides](../../migration/archives/) and upgrade to the latest version.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
