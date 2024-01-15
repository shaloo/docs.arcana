---
alias: rn-main-scw-v0.0.24
title: 'Arcana: Gasless SDK Release Notes'
description: 'Arcana Gasless SDKs Release Notes (v0.0.24 Latest)'
arcana:
  root_rel_path: ..
---

# Arcana SDKs: Release Notes

{==

**Release Date: Jan 15, 2024**  

Version: **vJan15-24-gasless-sdk**

The {{config.extra.arcana.company_name}} offers the following SDKs:

* {{config.extra.arcana.sdk_name}}
* {{config.extra.arcana.auth_core_sdk_name}}
* {{config.extra.arcana.gasless_sdk_name}}

There is no new update for the {{config.extra.arcana.sdk_name}} and {{config.extra.arcana.auth_core_sdk_name}} in this release. Only an additional SDK, the {{config.extra.arcana.gasless_sdk_name}} is part of this release.

To configure authentication providers for user onboarding and to set up gas tanks for gasless transactions, developers need to use the {{config.extra.arcana.dashboard_name}}:

* [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network/)

==}

## What is New?

---

This is a major release that supports a brand new SDK - the {{config.extra.arcana.gasless_sdk_name}}. It allows apps using third-party browser based wallets to enable gasless transactions. This is a standalone SDK and does not depend on the {{config.extra.arcana.sdk_name}}. 

## What has changed?

---

Only a new standalone SDK has been added to the  {{config.extra.arcana.company_name}} offerings.

There are no usage changes, no need to migrate existing apps using the {{config.extra.arcana.sdk_name}}. 

Earlier, Web3 app developers could only use the built-in gasless feature offered in the {{config.extra.arcana.sdk_name}} while signing blockchain transactions through the {{config.extra.arcana.wallet_name}}. The new standalone {{config.extra.arcana.gasless_sdk_name}} allows third-party browser-based wallets to leverage gasless transactions.

Apps that are already integrated with the {{config.extra.arcana.sdk_name}} and using the built-in gasless transactions in the  {{config.extra.arcana.wallet_name}} may choose to start using this new gasless standalone SDK for enabling gasless transactions in third-party browser-based wallets such as Metamask. 

There are no changes for apps that do not use the built-in gasless feature of the  {{config.extra.arcana.sdk_name}} or do not wish to add gasless transactions to third-party wallets.

## Get Started

---

{==

*Ready to dive in?* 

==}

See [[gasless-standalone-quick-start|{{config.extra.arcana.gasless_sdk_name}} Quick Start Guide]] to learn more.

Check out the [gasless integration sample submodules](https://github.com/arcana-network/auth-examples) for code samples.


## Previous Releases

See the [[index-release-notes| release notes archive]] for details.

## Questions? 

---

Refer to the [[faq-gasless| Arcana Gasless FAQ]], [Troubleshooting Guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md), and other developer resources, or contact [Arcana Support]({{page.meta.arcana.root_rel_path}}/support.md).