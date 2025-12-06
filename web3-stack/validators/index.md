# Validators

The core of the Arcana protocol is the [asynchronous distributed key generation (ADKG)](../../concepts/adkg/) subsystem, which generates key shares. These key shares are assembled on the client side within the app, never at the ADKG nodes, to form the authenticated user's private key.

To support decentralization, the ADKG subsystem consists of multiple nodes, including some operated by trusted third-party entities known as validators.

## Validator Nodes

At Mainnet launch, there are seven ADKG [validator nodes](../../concepts/validator-nodes/). Arcana owns five, and two are owned by:

- [Comdex - interchain DeFi infrastructure](https://comdex.one/)
- [Luganodes - institutional-grade blockchain infrastructure providers](https://www.luganodes.com/)

We are working with more partners to fully decentralize the ADKG subsystem.

## Key Share Security

### Share Generation

Arcana Auth SDK uses various algorithms for a secure ADKG subsystem. It includes a [robust asynchronous DPSS mechanism](https://eprint.iacr.org/2022/971) to protect user keys and handle malicious nodes. We are adding features like key share repair and refresh, as well as Arcana Auth SDK multi-factor authentication (MFA) feature and multi-party computation (MPC) for enhanced security and ease of use.

### Assembly

Arcana does not store user key shares. The ADKG subsystem creates and assigns key shares to the authenticated user, combined only on the client side to generate the private key. MFA adds extra security, even if the user changes devices.
