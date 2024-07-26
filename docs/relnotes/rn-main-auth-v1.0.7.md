---
alias: rn-main-auth-v1.0.7
title: 'Arcana Auth: Release Notes'
description: 'Arcana Auth Release Notes (v1.0.7)'
arcana:
  root_rel_path: ..
---

# Arcana Auth: Release Notes

{==

**Release Date: August 8, 2023**  

The latest release of the {{config.extra.arcana.product_name}} product consists of the following components:

* {{config.extra.arcana.sdk_name}}
      - [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) 
      - [`{{config.extra.arcana.react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-react)
      - [`{{config.extra.arcana.wagmi_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-wagmi) 
      - [`{{config.extra.arcana.web3_react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-web3-react)

* [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network/)

* [{{config.extra.arcana.wallet_name}} UI](https://github.com/arcana-network/wallet-ui)

==}

## What has changed?

This is a minor release with enhancements and bug fixes only.

* Enhancements
    - Improved Gas Fees Estimation
    - Better error handling

* Bug Fixes
    - Gas Fees were not displayed correctly in the {{config.extra.arcana.wallet_name}} UI
    - EIP1559 related fixes
    - MFA restore bug fix in the {{config.extra.arcana.wallet_name}}

---

## Get Started

---

{==

*Ready to dive in?* 

==}

See {{config.extra.arcana.product_name}} Quick Start Guides. 

Check out the [sample dApp integration examples](https://github.com/arcana-network/auth-examples) for various dApp types, wallet connectors and frameworks.

## Upgrade to the Latest {{config.extra.arcana.sdk_name}} 

---

If you have integrated the app with the {{config.extra.arcana.sdk_name}} v{{config.extra.arcana.previous_version}} package you can choose to either continue to use it with the latest {{config.extra.arcana.product_name}} product release.

Please note, in case are using an older version of the {{config.extra.arcana.sdk_name}} prior to v{{config.extra.arcana.previous_version}} then refer to the appropriate [[index-migration-guides|Migration Guides]] and upgrade to the latest version.

## Previous Releases

See the [[index-release-notes| release notes archive]] for details.

## Questions? 

---

Refer to the [[faq-gen| Arcana Auth FAQ]], [Troubleshooting Guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md), and other developer resources, or contact [Arcana Support]({{page.meta.arcana.root_rel_path}}/support/index.md).