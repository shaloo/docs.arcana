# Arcana Smart Contract Types

Arcana uses different smart contracts to implement unified balance and social login features through its blockchain protocol. Some contracts are deployed by default, while others activate when apps register. The protocol uses an upgradable proxy contract pattern.

## Proxy Contract Patterns

Multiple [upgradable proxy contract](https://docs.openzeppelin.com/contracts/3.x/api/proxy#UpgradeableProxy) patterns are available, including [diamond proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-diamond-pattern), [transparent proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-transparent-proxy-pattern), [beacon proxy](https://docs.openzeppelin.com/contracts/3.x/api/proxy#beacon), and [UUPS proxy](https://blog.logrocket.com/using-uups-proxy-pattern-upgrade-smart-contracts/#what-is-a-uups-proxy-pattern).

Arcana Auth SDK uses the following proxy contract patterns:

- UUPS proxy
- Beacon proxy

Proxy Contract Patterns

## Arcana Contract Types

The smart contracts used to implement the logic for the Arcana Auth SDK fall into two categories:

1. **Core System Contracts:** These singleton contracts implement the core Arcana Auth SDK protocol. Not all of them store data (program state).
1. **dApp Contracts:** Deployed per app after registration with Arcana Developer Dashboard. Only registered apps can integrate with the Arcana Auth SDK.

Arcana Contract Types
