---
alias: rn-main-auth-v1.0.1
title: 'Release Notes Arcana Auth Version v1.0.1'
description: 'Arcana Auth product release details for version v1.0.1. What is new, what features have been added, optimizations and performance changes, and more.'
arcana:
  root_rel_path: ..
---

# Release Notes Arcana Auth (Mainnet)

{==

**Version: v1.0.1**

**Release Date: February 10th, 2023**

==}

This release of the {{config.extra.arcana.product_name}} product consists of the following components:

* [{{config.extra.arcana.sdk_name}} v1.0.1](https://www.npmjs.com/package/@arcana/auth/v/1.0.1)
* {{config.extra.arcana.dashboard_name}}
* {{config.extra.arcana.wallet_name}} UI

## What's New?

---

There are no changes in the {{config.extra.arcana.product_name }} features or product usage in this release.

## Bug Fixes

---

In the previous release, v1.0.0 of the {{config.extra.arcana.sdk_name}}, the default setting for the `network` parameter (optional) in the `AuthProvider` constructor was 'mainnet'. 

By default, when a developer registers an application using the {{config.extra.arcana.dashboard_name}}, only the 'Testnet' configuration profile is created. The **{{config.extra.arcana.app_address}}** available on the dashboard corresponds to {{config.extra.arcana.company_name}} Testnet. There is **no 'Mainnet' configuration profile available by default** unless the developer explicitly creates it. 

This was creating an initialization mismatch issue in cases where **developers chose to not create a 'Mainnet' configuration profile** using the {{config.extra.arcana.dashboard_name}} but simply continue to deploy the app on {{config.extra.arcana.company_name}} Testnet. 

In this use case, the default 'Testnet' configuration settings specified via the {{config.extra.arcana.dashboard_name}}were not compatible with the default `network` setting in the {{config.extra.arcana.sdk_name}}, which pointed to 'mainnet'.  As a result, some of the new developers were facing issues while integrating with the {{config.extra.arcana.sdk_name}} v1.0.0 as they tried to deploy the app on the {{config.extra.arcana.company_name}} Testnet. The configured social providers did not show up in the Auth UI when they created the `AuthProvider` and specified the {{config.extra.arcana.company_name}} Testnet **{{config.extra.arcana.app_address}}** without any `network` setting. This caused mismatched default `network`` value, 'mainnet', to take effect for the {{config.extra.arcana.sdk_name}} usage.

As a workaround, the developer had to override the optional parameter `network` as 'testnet' to ensure the correct functioning of the authentication feature when only the 'Testnet' configuration profile was available for a registered application.

The latest release v1.0.1 of the {{config.extra.arcana.sdk_name}} handles this use case by setting the default value of the optional `network` parameter in the `AuthProvider` constructor as 'testnet'. 

---

## Get Started

---

{==

*Ready to dive in?* 

==}

See [[auth-quick-start|{{config.extra.arcana.product_name}} Quick Start Guide]] and the [how-to guides]({{page.meta.arcana.root_rel_path}}/howto/index.md) in the Getting Started section. 

Check out the sample dApp integration example for apps using [[react-code-sample|React ]], [[nextjs-code-sample|NextJS ]], and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks.

## Migrate to v1.0.1

---

Are you using an older version of the {{config.extra.arcana.product_name}}? Use the [[index-migration-guides| Guides]] and upgrade to the latest version.

## Questions? 

---

Refer to the [[faq-gen| Arcana Auth FAQ]], [Troubleshooting Guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md), and other developer resources, or contact [{{config.extra.arcana.company_name}} Support]({{page.meta.arcana.root_rel_path}}/support.md).
