---
slug: /migration_to_beta_auth_0_3_0
id: idmigrationtobetaauth030
sidebar_custom_props:
  cardIcon: 📂
arcana:
  root_rel_path: ..
---

# Auth SDK v{% include "./text-snippets/latest_auth_sdk.md" %} Migration Guide 

When you migrate from an older version of the Arcana Auth SDK to the latest v{% include "./text-snippets/latest_auth_sdk.md" %} release, you will be required to re-register and re-configure your application and obtain a new **App Address**.

## What has Changed?

* This release **does not** contain Arcana Storage SDK. 

### Developer Dashboard

* By default, when any new application is registered and configured, a 'Testnet' profile is created. Developers can choose to copy or redefine the 'Mainnet' configuration profile settings. 

* To use 'Mainnet', developers must switch the network profile using the dashboard and also re-integrate their application with the newly assigned 'Mainnet' **App Address**. Mainnet has an additional setting for **Global Keyspace** feature. To enable application user experience whereby user sees same wallet address across applications in the Arcana ecosystem, enable **Global Keys** feature. It requires developer verification and whitelisting. See [Dashboard User Guide]({{page.meta.arcana.root_rel_path}}/db/config_dApp_with_db.md#configure-mainnet-keyspace) for details. By default, for Mainnet profile, app-specific keys are enabled. This offers higher security than the global keys option.

* Dashboard tracks application usage data in terms of MAU.  Billing is done at the end of the month for Mainnet usage.

### Auth SDK

<img src="/img/icons/i_an_authsdk_light.png#only-light" alt="Auth SDK icon" width="50" />
<img src="/img/icons/i_an_authsdk_dark.png#only-dark" alt="Auth SDK icon" width="50" />

* There is no usage change in the Auth SDK in this release. 

* Arcana Blockchain is no longer listed in the list of available blockchain networks in the Arcana wallet dropdown.

* You can use the Auth SDK for user onboarding and signing blockchain transactions on any supported EVM-compatible chain.

* If Mainnet profile is used, make sure you have integrated the application with the new **App Address** assigned to the Mainnet profile of the application.

* All the blockchain transaction activity displayed in the tab in the main Arcana wallet screen has been relocated. Refer to the newly added combined notification screen in the Arcana wallet.

## What's New?

<img src="/img/icon_new_light.png#only-light" alt="New icon" width="50" /><img src="/img/icon_new_dark.png#only-dark" alt="New icon" width="50" />

Besides Testnet/Mainnet and Global Keyspace features, the latest Auth SDK uses new, improved ADKG subsystem. Besides the nodes operated by Arcana, two ADKG nodes are run and managed by Comdex and LugaNodes. For details, see [Auth SDK release notes]({{page.meta.arcana.root_rel_path}}/relnotes/rn_beta_auth_v0.3.0.md) and [State of the Arcana Auth]({{page.meta.arcana.root_rel_path}}/state_of_the_ntwk.md).
