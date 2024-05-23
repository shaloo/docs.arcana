---
alias: what-is-arcana-auth
title: 'What is Arcana Auth?'
description: 'About Arcana Auth, what are the key constituents of Arcana Auth and how is it documented? How is the Arcana Auth documentation organized?'
arcana:
  root_rel_path: ../..
---

# What is {{config.extra.arcana.product_name}}?

[{{config.extra.arcana.company_name}} Technical White Paper]: https://www.notion.so/Arcana-Technical-Docs-a1d7fd0d2970452586c693e4fee14d08

---

{{config.extra.arcana.company_name}} offers an infrastructure solution, a platform that allows Web3 app developers to quickly build **privacy-preserving Web3 applications**. Developers can onboard users through a simplified Web3 onboarding process. Our product, {{config.extra.arcana.product_name}}, makes it easy for developers to integrate their apps and allow authenticated users to sign blockchain transactions quickly.

The {{config.extra.arcana.product_name}} product consists of two key components:

* {{config.extra.arcana.sdk_name}}
* {{config.extra.arcana.dashboard_name}}


[[try-now-auth|Try Auth :fontawesome-solid-paper-plane:]]{ .md-button } [[try-now-gl|Try Gasless :fontawesome-solid-paper-plane:]]{ .md-button }

## {{config.extra.arcana.product_name}} Components

=== "{{config.extra.arcana.sdk_name}}"

       <p>
       <ul><p>🔐 Address Web3 user onboarding, data privacy challenges faced by Web3 apps by integrating with the {{config.extra.arcana.sdk_name}}.</p><p> </p><p>🔐 Enable frictionless, familiar Web2 user onboarding experience via several supported authentication providers, and passwordless login.</p><p> </p><p> </p><p>🔐 Let app users securely sign blockchain transactions with the embedded, non-custodial <a href="{{page.meta.arcana.root_rel_path}}/concepts/anwallet/">{{config.extra.arcana.wallet_name}}</a> and manage wallet visibility setting, for a seamless user experience.</p></ul> <blockquote><p>Developers can use the secure standard Ethereum provider interface exposed by the {{config.extra.arcana.wallet_name}} in the context of authenticated users to programmatically call Web3 wallet operations.</p></blockquote>
       </p>

=== "{{config.extra.arcana.dashboard_name}}"

       <p>
       <ul><p>🖥️ Use the <a href="{{page.meta.arcana.root_rel_path}}/concepts/dashboard/">{{config.extra.arcana.dashboard_name}}</a> to register and configure an app before integrating it with the {{config.extra.arcana.sdk_name}}.</p><p> </p><p>🖥️ Select the user onboarding experience and the blockchain signing experience as per the use case.</p><p> </p></ul>
       </p>

## References

* [{{config.extra.arcana.company_name}} Technical White Paper]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
