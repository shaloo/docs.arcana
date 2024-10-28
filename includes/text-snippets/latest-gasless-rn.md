{==

**Release Date: October 28, 2024**  

Gasless SDK Version: **v0.0.45**

This SDK extends the gasless transaction feature offered by the {{config.extra.arcana.sdk_name}} for {{config.extra.arcana.wallet_name}} to third-party browser-based wallets. This standalone SDK does not depend on the {{config.extra.arcana.sdk_name}}. 

Use the [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network/) to configure gas tanks, deposit funds, and whitelist app operations before integrating with the SDK.

==}

## What is New?

---

This release of {{config.extra.arcana.gasless_sdk_name}} has some minor enhancements and bug fixes related to capping overall gas fee sponsorship per user. It uses the latest version of [Biconomy v4](https://docs.biconomy.io) SDK.  

## What has changed?

---

{% include "./text-snippets/gl_limitations.md" %}

When using the gasless feature offered as part of Auth SDK integration, there is no usage change.

For those who that are integrating the app with the Gasless SDK to support third-party wallets, note that the [signature of SCW.init() method have changed](https://gasless-sdk-ref-guide.netlify.app/classes/scw#init). Please update the SDK integration code accordingly.

## Get Started

---

{==

*Ready to dive in?* 

==}

See [[gasless-standalone-quick-start|{{config.extra.arcana.gasless_sdk_name}} Quick Start Guide]] to learn more. Check out the [integration examples](https://github.com/arcana-network/auth-examples) for code samples.


## Previous Releases

---

See [[index-release-notes| Release Archives]]

## Questions? 

---

Refer to the [[faq-gasless| Arcana Gasless FAQ]], [Troubleshooting Guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md), and other developer resources, or contact [Arcana Support]({{page.meta.arcana.root_rel_path}}/support/index.md).

