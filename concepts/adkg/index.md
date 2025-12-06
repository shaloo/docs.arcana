# ADKG

Asynchronous Distributed Key Generation (ADKG) is a cryptographic protocol that allows multiple parties to generate a public-private key pair cooperatively, without needing a trusted third party or synchronization.

Each party creates a partial private key and shares it with the others. Together, they use these partial keys to derive the final private key used for securing blockchain transactions in Web3 apps.

Asynchronous Distributed Key Generation (ADKG)

*[Reference: ADKG Paper](https://eprint.iacr.org/2022/1389.pdf)*

ADKG is ideal for geographically dispersed or poorly connected parties where traditional methods are impractical. The distributed trust model in ADKG also makes it more resistant to attacks compared to methods relying on a single central authority.

## ADKG for Web3 Keys

Web3 blockchain transactions require user approval through cryptographic keys.

The Arcana Auth SDK uses ADKG to securely generate key shares for Web3 users. It allows users to securely access and generate their keys on the client side, handling security and privacy concerns. Users can sign transactions with the non-custodial Arcana wallet.

ADKG generates ECDSA keys on the [secp256k1](https://www.secg.org/sec2-v2.pdf) curve, compatible with all EVM chains. Future updates will support other curves, blockchains, and key regeneration.

## Why ADKG?

Our ADKG implementation uses the [Practical Asynchronous Distributed Key Generation](https://eprint.iacr.org/2021/1591.pdf) protocol. It improves on the previous DKG by removing the need for a trusted dealer, reducing key exposure, and automating share regeneration. ADKG is resilient to attacks and works well in asynchronous networks. It ensures security by preventing any single node from accessing a user's key.

ADKG Assumptions

The ADKG protocol works under the assumption that in an asynchronous network of `n ≥ 3t + 1` nodes, where at most `t` nodes could be malicious.

The protocol can achieve an expected communication cost of O(`κ`n(^3) ) and terminates in expected O(log n) rounds. Here `κ` is the security parameter. For example, if a collision-resistant hash function is used, in that case, `κ` denotes the size of the hash function's output.

## Implementation Notes

ADKG requires a set of at least 4 connected nodes at a minimum for accommodating a maximum of 1 malicious node.

At a very high level, the protocol requires each node to **independently generate secrets** and then share a part of that secret with the other nodes. Each node then **shares a proposed set of key shares** with other nodes. Asynchronous Binary Agreement (ABA) **voting** is done by the nodes for each proposed set. Only the accepted and agreed-upon set is used to derive the key shares and then those key shares are combined to **arrive at the final key pair**. None of the nodes have full access to the secret key.

How does ADKG work?

The ADKG protocol has four phases:

1. Asynchronous Complete Secret Sharing (ACSS)
1. Keyset Proposal Broadcast Phase
1. Asynchronous Binary Agreement (ABA)
1. Key Derivation Phase

For more details on each of these ADKG phases, see [here](../../security/adkg/).
