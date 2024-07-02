---
alias: concept-did-token
title: 'Arcana DID Token'
description: 'Arcana Auth SDK provides decentralized identifier or DID after user login. Learn how to access it and verify it in the app.'
arcana:
  root_rel_path: ..
---

# Decentralized Identifier (DID)

Decentralized identifiers are a way to identify Web3 app users without using a central authority or a company. 

A [decentralized Identifier (DID)](https://www.w3.org/TR/did-core/) is a globally unique identifier for user verification. It is built using a privacy-preserving user identity management system that leverages blockchain technology, cryptography, and decentralized networks. It does not require centralized identity dispensing and verification systems such as centralized registries, identity providers, and certificate authorities. The DID is fully under the control of the user.

{{config.extra.arcana.sdk_name}} uses the DID protocol, Ethereum blockchain and [elliptic curve cryptography](https://en.wikipedia.org/wiki/Elliptic-curve_cryptography) to generate verifiable proofs for user identity authorization by Web3 apps. These proofs can be used to authenticate and authorize resource access by app users.

## DID Token Structure

The DID token is encoded as a Base64 JSON string tuple representing [proof, claim]:

* **Proof:** A digitally signed string that is used to prove the validity of a given claim.
* **Claim:** Data representing the user's access assertion.

## Arcana `userDIDToken`

The {{config.extra.arcana.sdk_name}} returns `userDIDToken` once an app user logs in successfully via the configured social login provider. This token is generated upon successful authentication via any of the supported methods of the `AuthProvider`:

* Plug-and-play login `connect()` 
* Custom login UI methods such as `loginWithSocial()`, `loginWithLink()` (deprecated), `loginWithOTPStart`,`loginWithOTPComplete` and `loginWithBearer()`

Developers can use `getUser()` method to access the user's DID token via the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) return value. 

### Verify DID Token

=== "EVM"

    ```
    import { ethers } from "ethers";
    
    const userInfo = await auth.getUser();
    const didToken = userInfo.userDIDToken;
    const data = JSON.parse(window.atob(didToken));
    const [sig, claims] = data;
    const parsedClaims = JSON.parse(claims)

    const addr = ethers.verifyMessage(claims, sig);
    if (addr == publicKeyToAddress(parsedClaims.iss)) {
    // Verified
    }
    ```

=== "ED25519"

    ```
    import { verify } from "@noble/ed25519"

    const userInfo = await auth.getUser();
    const didToken = userInfo.userDIDToken;
    const data = JSON.parse(window.atob(didToken));
    const [sig, claims] = data;
    const parsedClaims = JSON.parse(claims);

    const verified = verify(sig, toHex(claims), b58ToHex(parsedClaims.iss));
    ```