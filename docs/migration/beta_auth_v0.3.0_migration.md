---
slug: /migration_to_beta_auth_0_3_0
id: idmigrationtobetaauth030
sidebar_custom_props:
  cardIcon: 📂
arcana:
  root_rel_path: ..
---

# Auth SDK v0.3.0 Migration Guide 

When you migrate from an older version of the Arcana Auth SDK to v0.3.0, you will not experience any breaking changes in your Web3 application. However, some changes have been made to the wallet screens and the way transaction information is organized, which may be an improvement over the previous version.

## What has Changed?

* This release **does not** contain Arcana Storage SDK. 

* Arcana Blockchain is no longer listed in the list of available blockchain networks in the Arcana wallet dropdown.

* You can use the Auth SDK for user onboarding and signing blockchain transactions on any supported EVM-compatible chain.

* All blockchain transaction activity is no longer available as a tab in the main Arcana wallet main screen. Refer to the newly added combined notification screen in the Arcana wallet.

### Auth SDK

<img src="/img/icons/i_an_authsdk_light.png#only-light" alt="Auth SDK icon" width="50" />
<img src="/img/icons/i_an_authsdk_dark.png#only-dark" alt="Auth SDK icon" width="50" />

* There is no usage change in the Auth SDK in this release. 

## What's New?

<img src="/img/icon_new_light.png#only-light" alt="New icon" width="50" /><img src="/img/icon_new_dark.png#only-dark" alt="New icon" width="50" />

The new improved Auth SDK now supports NFT preview, transactions and management of NFT collections. A new combined notification screen displays blockchain transactions related to smart contracts, tokens as well as NFTs. For details, see [Auth SDK release notes]({{page.meta.arcana.root_rel_path}}/relnotes/rn_beta_auth_v0.3.0.md).
