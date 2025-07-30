# Verify Arcana JWT Token

Apps integrating with the Arcana Auth SDK receive a unique JWT token. This token is generated upon successful user authentication via these `AuthProvider` methods:

- Plug-and-play login UI: `connect()`
- Custom login UI: `loginWithSocial()`, `loginWithLink()`(deprecated), `loginWithOTPStart`, `loginWithOTPComplete`, and `loginWithBearer()`

The Arcana JWT token is generated with an asymmetric key. What this means is that after a successful user login, the app developers must use the public key in order to verify the received token.

Use the appropriate public key listed below to verify the token depending upon whether the app is deployed on the Arcana Testnet or Mainnet.

## Token Verification: Dev

```
-----BEGIN PUBLIC KEY-----
MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAES2oy0bmXvYh1dIVU017/WW17Wdet
Clx9+8HxPvGHegrBaoZadbeKhfBSfQbxBcdzpDe+3EqUVwvwH3hMIoqa3A==
-----END PUBLIC KEY-----

```

## Token Verification: Testnet

```
-----BEGIN PUBLIC KEY-----
MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAETjlG1BIL2x0LwJH5iIxXXfJaokUb
5EyhK8/TCwlQbVPFy6N40kD4Bnbs4JRJOEssp5/YSgUnrR8JrB0QgC+NpA==
-----END PUBLIC KEY-----

```

## Token Verification: Mainnet

```
-----BEGIN PUBLIC KEY-----
MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE0UWoYfR6ii+6PTfWPDtY8jKLJtL1
8+Nu+qDkaMjFXVlWg6oVpHdBMBvsmia2aQsrjKrYHdmMz5bntsEAu+7QdA==
-----END PUBLIC KEY-----

```
