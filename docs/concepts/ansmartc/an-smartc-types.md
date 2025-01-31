---
alias: concept-ansc-types
title: 'Arcana Smart Contract Types'
description: 'Learn about the various smart contracts used in implementing the Arcana Network protocol.'
arcana:
  root_rel_path: ../..
---

# Arcana Smart Contract Types

{{config.extra.arcana.company_name}} uses different smart contracts to implement unified balance and social login features through its blockchain protocol. Some contracts are deployed by default, while others activate when apps register. The protocol uses an upgradable proxy contract pattern.

## Proxy Contract Patterns

Multiple [upgradable proxy contract](https://docs.openzeppelin.com/contracts/3.x/api/proxy#UpgradeableProxy) patterns are available, including [diamond proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-diamond-pattern), [transparent proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-transparent-proxy-pattern), [beacon proxy](https://docs.openzeppelin.com/contracts/3.x/api/proxy#beacon), and [UUPS proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-uups-proxy-pattern). 

{{config.extra.arcana.sdk_name}} uses the following proxy contract patterns:

- UUPS proxy
- Beacon proxy

<figure markdown="span">
  ![Proxy Contract Patterns]({{config.extra.arcana.img_dir}}/diagrams/d_an_proxy_pattern_light.{{config.extra.arcana.img_png}}#only-light){ .an-screenshots .width_50pc }
  ![Proxy Contract Patterns]({{config.extra.arcana.img_dir}}/diagrams/d_an_proxy_pattern_dark.{{config.extra.arcana.img_png}}#only-dark){ .an-screenshots .width_50pc }
  <figcaption>Proxy Contract Patterns</figcaption>
</figure>

## {{config.extra.arcana.company_name}} Contract Types

The smart contracts used to implement the logic for the {{config.extra.arcana.sdk_name}} fall into two categories:

1. **Core System Contracts:** These singleton contracts implement the core {{config.extra.arcana.sdk_name}} protocol. Not all of them store data (program state).

2. **dApp Contracts:** Deployed per app after registration with {{config.extra.arcana.dashboard_name}}. Only registered apps can integrate with the {{config.extra.arcana.sdk_name}}. 

<figure markdown="span">
  ![Arcana Contract Types]({{config.extra.arcana.img_dir}}/diagrams/d_an_contract_types_light.{{config.extra.arcana.img_png}}#only-light){ .an-screenshots .width_50pc }
  ![Arcana Contract Types]({{config.extra.arcana.img_dir}}/diagrams/d_an_contract_types_dark.{{config.extra.arcana.img_png}}#only-dark){ .an-screenshots .width_50pc }
  <figcaption>Arcana Contract Types</figcaption>
</figure>

<!---

:::note

None of the {{config.extra.arcana.company_name}} smart contracts store any app user data.  All app user data resides in the distributed, decentralized {{config.extra.arcana.company_name}}  Store in a geographical region configured by the app. Uploading, downloading, and accessing data residing in the {{config.extra.arcana.company_name}}  Store requires interaction with {{config.extra.arcana.company_name}}  smart contracts and other platform components.

:::

--->
