**Release Date: {{config.extra.arcana.latest_ca_sdk_release_date}}**  

Version: **v{{config.extra.arcana.latest_ca_sdk_version}}**

## What is New?

---
 
This is a minor update release with the following improvements:

1. Support for Avalanche chain.
2. When creating the CA object, developers can specify the testnet:

```typescript
let provider: window.ethereum;
const network = Network.CERISE;

const ca = new CA({
  network,
});
ca.setEVMProvider(provider);
```

Check out the complete list of supported [[ca-stack#chains|chains]] and [[ca-stack#tokens|tokens]].

[Changelog](https://github.com/arcana-network/ca-sdk/releases/latest){ .md-button } 

## Get Started

---

* [[ca-quick-start|{{config.extra.arcana.ca_sdk_name}} Quick Start Guide]]
* [Integration example](https://github.com/arcana-network/ca-sdk/tree/main/example)
* {% include "./text-snippets/casdkref_url.md" %}

## Previous Releases

Are you using an older version of the {{config.extra.arcana.ca_sdk_name}}?

Refer to the [[ca-index-release-notes| release notes archive]]. Upgrade to the latest version.

## Questions? 

---

Can't find what you are looking for? Contact [{{config.extra.arcana.company_name}} Support]({{page.meta.arcana.root_rel_path}}/support/index.md).
