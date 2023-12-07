---
alias: rn-main-auth-v1.0.9
title: 'Arcana Auth: Release Notes'
description: 'Arcana Auth Release Notes (v1.0.9 Latest)'
arcana:
  root_rel_path: ..
---

# Arcana Auth: Release Notes

{==

**Release Date: Dec 7, 2023**  

Version: **{{config.extra.arcana.latest_version}}**

The {{config.extra.arcana.product_name}} product consists of the following components:

* {{config.extra.arcana.sdk_name}} 
      - Web Apps 
        - [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) 
        - [`{{config.extra.arcana.react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-react)
        - [`{{config.extra.arcana.wagmi_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-wagmi) 
        - [`{{config.extra.arcana.web3_react_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-web3-react)
      - Mobile Apps
        - [`{{config.extra.arcana.mobile_flutter_sdk_pkg_name}}`](https://pub.dev/packages/arcana_auth_flutter)
        - [`{{config.extra.arcana.mobile_react_native_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth-react-native)

* [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network/)

* [{{config.extra.arcana.wallet_name}} UI](https://github.com/arcana-network/wallet-ui)

In addition to the {{config.extra.arcana.sdk_name}}, now we also provide {{config.extra.arcana.auth_core_sdk_name}} for higher customizability and custom wallet UI support.

* [{{config.extra.arcana.auth_core_sdk_name}}](https://www.npmjs.com/package/@arcana/auth-core)

==}

## What has changed?

This is a major release that supports non-EVM blockchains (Solana). There are several enhancements including security fixes and bug fixes. There is no usage change.

* Non-EVM Chain Support: Solana
* New SDK: {{config.extra.arcana.auth_core_sdk_name}}
* Security enhancements and bug fixes.

## Get Started

---

{==

*Ready to dive in?* 

==}

See [[auth-quick-start|{{config.extra.arcana.product_name}} Quick Start Guide]] in the Getting Started section. 

Check out the [sample dApp integration examples](https://github.com/arcana-network/auth-examples) for various dApp types, wallet connectors and frameworks.

## Upgrade to the Latest {{config.extra.arcana.sdk_name}} 

---

If you have integrated the app with the {{config.extra.arcana.sdk_name}} v{{config.extra.arcana.previous_version}} package you can continue to use it with the latest {{config.extra.arcana.product_name}} product release.

Please note, in case are using an older version of the {{config.extra.arcana.sdk_name}} prior to v{{config.extra.arcana.previous_version}} then refer to the appropriate [[index-migration-guides|Migration Guides]] and upgrade to the latest version.

## Previous Releases

See the [[index-release-notes| release notes archive]] for details.

## Questions? 

---

Refer to the [[faq-gen| Arcana Auth FAQ]], [Troubleshooting Guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md), and other developer resources, or contact [Arcana Support]({{page.meta.arcana.root_rel_path}}/support.md).