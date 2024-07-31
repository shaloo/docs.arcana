---
alias: concept-did-token
title: 'Arcana DID Token'
description: 'Arcana Auth SDK provides decentralized identifier or DID after user login. Learn how to access it and verify it in the app.'
arcana:
  root_rel_path: ..
---

# Decentralized Identifier (DID)

[Decentralized identifiers (DIDs)](https://www.w3.org/TR/did-core/) let Web3 app users be identified without a central authority.

A DID is a unique, privacy-preserving identifier built with blockchain technology, cryptography, and decentralized networks. It eliminates the need for centralized registries and identity providers, giving users full control.

{{config.extra.arcana.sdk_name}} uses the DID protocol, Ethereum blockchain, and [elliptic curve cryptography](https://en.wikipedia.org/wiki/Elliptic-curve_cryptography) to create verifiable proofs for user authentication and authorization.

## DID Token Structure

The DID token is encoded as a Base64 JSON string tuple representing [proof, claim]:

* **Proof:** A digitally signed string that is used to prove the validity of a given claim.
* **Claim:** Data representing the user's access assertion.

###`userDIDToken`

The {{config.extra.arcana.sdk_name}} returns `userDIDToken` once an app user logs in successfully via the configured social login provider by using any of the supported methods of the `AuthProvider`:

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