---
alias: auth-core-usage-guide
title: 'Arcana Auth-Core SDK Usage Guide'
description: 'How to install and use the Arcana Auth-Core SDK with sample code and references.'
arcana:
  root_rel_path: ..
---

<!--
Note, from here the content is a pure markdown file with no mkdocs related tags or keywords. It is a copy 
of the file in the `auth-core` repo: https://github.com/arcana-network/auth/blob/main/usage.md
-->

# Auth-Core SDK

Auth-Core SDK enables basic functionality for onboarding users to Web3 apps via social login. It uses the Arcana Keystore APIs to interact with the distributed key generation subsystem in the Arcana Network.

The [Arcana Auth product](https://github.com/arcana-network/auth) is built using the Auth-Core SDK and the [Arcana wallet UI](https://github.com/arcana-network/wallet-ui). It ensures that only authenticated users have access to the private keys for signing blockchain transactions. With Arcana Auth, the app developers cannot access the user's private keys.

Web3 apps that choose to integrate directly with the Auth-Core SDK instead of using Arcana Auth must implement some of the functionality related to handling user authentication via social login. In addition, developers must ensure the security and privacy of the user's keys. See the [Usage section](#usage) below for details.

Note that the 'Global Keys' and enhanced wallet security 'MFA' features available via Arcana Auth are **not** available through the Auth-Core SDK.

## Installation

### npm

```sh
npm install --save @arcana/auth-core
```

### yarn

```sh
yarn add @arcana/auth-core
```

### CDN

```html
<script src="https://cdn.jsdelivr.net/npm/@arcana/auth-core"></script>
```

```html
<script src="https://unpkg.com/@arcana/auth-core"></script>
```

## Usage

### Import

```js
const { AuthProvider, SocialLoginType, CURVE } = window.arcana.auth_core;
// or
import { AuthProvider, CURVE } from '@arcana/auth-core';
```

### Initialize `AuthProvider`

```js
const auth = new AuthProvider({
   curve: CURVE.ED25519, // defaults to CURVE.SECP256K1
   appId: `${appId}`,
   redirectUri: ''    
});
```

### Initiate Social Login

```js
await auth.loginWithSocial(SocialLoginType.google);
```

### Initiate Passwordless Login

```js
const result = await auth.loginWithPasswordlessStart(`${emailAddress}`, PasswordlessOptions);
```

### Get Login Status

```js
const loggedIn = auth.isLoggedIn(); /* boolean response */
```

### Get User Info

After successful login, the user information is saved in memory. Before the page `unload` event, the user information gets stored in `session-storage`. After a successful page reload, it is fetched again to memory and removed from the `session-storage`.

```js
const userInfo = auth.getUserInfo();
/* 
  UserInfo: {
    loginType: 'google',
    userInfo: {
      id: 'abc@example.com',
      name: 'ABC DEF',
      email: '',
      picture: ''
    },
    privateKey: ''
  }
*/
```

For userInfo type details, see [Exported Types](#exported-types).

### Get Public Key

```js
const publicKey = await auth.getPublicKey({
  verifier: SocialLoginType.google,
  id: `abc@example.com`,
}); 
```

For details regarding `SocialLoginType`, see [Exported Enums](#exported-enums).

### Clear Login Session

```js
await auth.logout();
```

## TypeScript Usage

### Exported Enums

```ts

enum SocialLoginType {
  google = 'google',
  discord = 'discord',
  twitch = 'twitch',
  github = 'github',
  twitter = 'twitter',
  passwordless = 'passwordless',
}

```

### Exported Types

```ts

interface KeystoreInput {
  id: string;
  verifier: LoginType;
}

interface InitParams {
  // arcana app id with network hint, ex xar_dev_xyz - xyz is the appId
  appId: string;
  network?: 'dev' | 'testnet'| 'mainnet'; /* defaults to testnet  */
  /**
   * autoRedirect: is redirected via SDK, instead of `loginWithSocial`
   * output being `{ url }`
  */
  autoRedirect: boolean                   /* defaults to true     */
  /** 
   * shouldVerifyState: state is compared internally, the state is stored
   * to local storage on login init
  */
  shouldVerifyState: boolean              /* defaults to true     */ 
  /**
   * revokeTokenPostLogin: Some tokens need to be revoked to get new tokens
   * on subsequent login or to prevent misuse, SDK does this internally. If
   * set to `false` there is a cleanup function that is output of the func
   * `auth.handleRedirectMode()` which should be called after token is used 
   * for secondary purpose
   */
  revokeTokenPostLogin: boolean           /* defaults to true     */
  debug?: boolean;                        /* defaults to false    */
}

interface GetInfoOutput {
  loginType: SocialLoginType;
  userInfo: UserInfo {
    id: string;
    email?: string;
    name?: string;
    picture?: string;
  };
  privateKey: string;
}


```

## Flow Modes

### Redirect

`login.js`

```js
window.onload = async () => {
  const auth = new AuthProvider({
    appId: `${appId}`,
    redirectUri:'path/to/redirect' 
  });

  googleLoginBtn.addEventListener('click', async () => {
    await auth.loginWithSocial(SocialLoginType.google);
  });
}
```

`redirect.js`

```js
window.onload = async () => {
  const auth = new AuthProvider({
    appId: `${appId}`,
    redirectUri:'path/to/redirect' 
  });

  await auth.handleRedirect();

  if(auth.isLoggedIn()) {
    const info = auth.getUserInfo();
  }
}
```

### Variables

- `origin` - Base URL of the app.
