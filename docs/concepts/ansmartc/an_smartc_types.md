---
slug: /ansmartctypes
id: idansmartctypes
title: Upgradable Smart Contracts
sidebar_custom_props:
  cardIcon: ▶️
---

# Types of Smart Contracts

Arcana uses multiple smart contracts that work together to achieve user data privacy and access control. Some of these contracts are deployed by default while others are deployed when dApps register with Arcana Network.

Arcana uses upgradable proxy contracts to implement the Arcana Network protocol.

## Proxy Contract Patterns

There are multiple [upgradable proxy contract](https://docs.openzeppelin.com/contracts/3.x/api/proxy#UpgradeableProxy) patterns that are available. For example, [diamond proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-diamond-pattern), [transparent proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-transparent-proxy-pattern), [beacon proxy](https://docs.openzeppelin.com/contracts/3.x/api/proxy#beacon) and [UUPS proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-uups-proxy-pattern). 

Arcana uses the following proxy contract patterns while implementing the Arcana Network protocol:

- UUPS proxy
- Beacon proxy

![Proxy Contract Patterns](/img/diagrams/d_an_proxy_pattern_light.png#only-light)
![Proxy Contract Patterns](/img/diagrams/d_an_proxy_pattern_dark.png#only-dark)

## Arcana Contract Categories

Arcana smart contracts can be categorized depending upon whether their primary function context is a dApp or the Arcana blockchain protocol as a whole. These two categories are:

1. **Core System Contracts:** These contracts are used to implement the core Arcana Network protocol, and are singleton in nature. All of the system contracts implement the protocol logic but not all of them store data (program state).

2. **dApp Contracts:** These contracts are deployed per dApp. The deployment happens after a dApp is registered with the Arcana Dashboard. Only registered dApps can integrate with Arcana SDKs. 

![Proxy Contract Patterns](/img/diagrams/d_an_contract_types_light.png#only-light)
![Proxy Contract Patterns](/img/diagrams/d_an_contract_types_dark.png#only-dark)

<!---

:::note

None of the Arcana smart contracts store any dApp user data.  All dApp user data resides in the distributed, decentralized Arcana Store in a geographical region configured by the dApp. Uploading, downloading, and accessing data residing in the Arcana Store requires interaction with Arcana smart contracts and other platform components.

:::

--->
