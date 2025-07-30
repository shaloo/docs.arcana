# Arcana Protocol

The Arcana CA SDK components of the Arcana protocol that support unified balance feature are built using the Cosmos chain.

Other components of the protocol that enable social login via the Arcana Auth SDK are built using the [Proof of Stake](https://ethereum.org/en/developers/docs/consensus-mechanisms/#proof-of-stake) Polygon chain.

The Arcana blockchain protocol is offered through Testnet and Mainnet.

## Mainnet Roadmap

## Chain Abstraction

The Arcana unified balance feature is available through the Arcana CA SDK v0.0.3 released in January 2025 on the Testnet. A limited set of [chains and tokens](../ca_stack/) are supported for chain abstraction as of this release.

Chain Abstraction is available on Arcana Testnet. We are actively working towards enabling this feature on the Arcana Mainnet.

## Social Login

The Arcana social login feature is available through the Arcana Auth SDK v1.0.0, released in January 2023 on the Mainnet.

The following Auth services are active on Testnet as well as the Mainnet:

- Configuring Arcana Auth SDK usage with Arcana Developer Dashboard
- User onboarding via social login
- Asynchronous Distributed Key Generation that powers the Arcana Auth SDK and helps onboard users to Web3

We are actively working on adding newer features and capabilities to the Arcana Auth SDK, stay tuned.

## Infrastructure Providers

## Protocol Audit

At Arcana, we take the security and privacy of applications seriously and believe in transparency. To eliminate any security vulnerabilities in Arcana Smart Contracts and the ADKG module, we put it under the rigorous vetting process and cybersecurity tests conducted by [Certik](https://www.certik.com/). The audit is complete and you can refer to the [Arcana Audit Reports](https://github.com/arcana-network/audit-reports/) for details.

## Network Nodes

| Network Metrics | Beta | Mainnet | | --- | --- | --- | | # Protocol Nodes | 7 | 21 | | # Distributed Key Generator Nodes | 3 | 7 (4 operated by Arcana, 3 by trusted partners) |

## ADKG Subsystem

Arcana Auth SDK has evolved since its alpha release. The new [asynchronous distributed key generation (ADKG)](../../concepts/adkg/) algorithm is now part of the Arcana protocol, offering improved security and efficiency in key share generation.

Refer to the [Arcana Technical Whitepaper](https://www.notion.so/Arcana-Technical-Docs-a1d7fd0d2970452586c693e4fee14d08) for more details on ADKG.

## Decentralization

The Arcana ADKG subsystem uses multiple nodes, including some operated by trusted Arcana partners called [validators](../validators/). We plan to fully decentralize the protocol in future releases.
