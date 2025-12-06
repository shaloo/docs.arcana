# Web3 Onboarding

In Web3, decentralized systems use trustless protocols and cryptography for identity verification, which involves complex key management. This makes onboarding to Web3 apps harder for users as they require private keys for signing transactions. Managing these keys is challenging, with no central recovery if lost, unlike Web2's password recovery.

The [Arcana Auth SDK](../authsdk/) simplifies Web3 onboarding by enabling secure Web3 access and blockchain transaction signing. Users can log into apps using familiar Web2 methods and have self-custody of their cryptographic keys.

## Authentication Options

Web3 apps using the Arcana Auth SDK can authenticate users via any of these options:

- [Social Login Providers](socialauth/)
- [Custom Auth](custom-auth/)
- [Passkey Auth](auth-passkeys/)

User Key Security & Privacy

The Arcana Auth SDK uses the asynchronous distributed key generation ([ADKG](../adkg/)) to securely assign key shares to authenticated users. The user's private key is generated from these key shares on the client side. For added security, users can enable multi-factor authentication ([MFA](../mfa/)).
