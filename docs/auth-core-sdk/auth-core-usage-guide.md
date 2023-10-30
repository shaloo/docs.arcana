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

## Installation

### Using NPM/Yarn

```sh
npm install --save @arcana/auth-core
yarn add @arcana/auth-core
```

### Using CDN

```html
<script src="https://cdn.jsdelivr.net/npm/@arcana/auth-core"></script>
```

```html
<script src="https://unpkg.com/@arcana/auth-core"></script>
```

## Usage

### Import

```js
const { AuthProvider, SocialLoginType } = window.arcana.auth;
// or
import { AuthProvider } from '@arcana/auth-core';
```

### Initialize

```js
const auth = await AuthProvider.init({
   appId: `${appId}`,
   flow: 'redirect', /* can be 'popup' or 'redirect' */
   redirectUri:''    /* can be ignored for redirect flow if same as login page */
});
```

### Initiate social login

```js
await auth.loginWithSocial(SocialLoginType.google);
```

### Initiate passwordless login

```js
const result = await auth.loginWithOtp(`${emailAddress}`, PasswordlessOptions);
```

PasswordlessOptions:

- `{ withUI: true }` - the user is redirected to `email-sent` or `error` page
- `{ withUI: false }` - gets a `json` response back with no redirection
- defaults to `{ withUI: true }`

### Get login status

```js
const loggedIn = auth.isLoggedIn(); /* boolean response */
```

The user info is saved in memory after successful login, before `unload` event of the page it gets stored in `session-storage` and is refetched to memory and removed from `session-storage` after successful page reload.

### Get user info

```js
const userInfo = auth.getUser();
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

### Get public key

```js
const publicKey = await auth.getPublicKey({
  verifier: SocialLoginType.google,
  id: `${email}`,
}, PublickeyOutput); 
```

PublickeyOutput:

- value can be 'point', 'compressed' or 'uncompressed'
- `point` output will be an object with `{ x: string, y: string }`
- `compressed` output will be a `string` like `0x03...`
- `uncompressed` output will be a `string` like `0x04...`
- defaults to `uncompressed`

### Clear login session

```js
await auth.logout();
```

## Typescript Usage

### Exported enums

```ts

enum PublicKeyOutput {
  point = 'point',
  compressed = 'compressed',
  uncompressed = 'uncompressed',
}

enum SocialLoginType {
  google = 'google',
  discord = 'discord',
  twitch = 'twitch',
  github = 'github',
  twitter = 'twitter',
  passwordless = 'passwordless',
}

```

### Exported types

```ts

interface KeystoreInput {
  id: string;
  verifier: LoginType;
}

interface InitParams {
  appId: string;
  network?: 'dev' | 'testnet'; /* defaults to testnet  */
  flow?: 'popup' | 'redirect'; /* defaults to redirect */
  debug?: boolean;             /* defaults to false    */
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

interface PasswordlessOptions {
  withUI?: boolean;
}

```

## Flow modes

### **Redirect**

`login.js`

```js
window.onload = async () => {
  const auth = await AuthProvider.init({
    appId: `${appId}`,
    flow: 'redirect',
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
  const auth = await AuthProvider.init({
    appId: `${appId}`,
    flow: 'redirect',
    redirectUri:'path/to/redirect' 
  });

  
  if(auth.isLoggedIn()) {
    const info = auth.getUser();
  }
}
```

- Skip `redirectUri` in params if the it is same as login page. For example:
  
  `index.js`

  ```js
  window.onload = async () => {
    const auth = await AuthProvider.init({
      appId: `${appId}`,
      flow: 'redirect',
    });

    if(auth.isLoggedIn()) {
      /* already logged in, get user info and use */
      const info = auth.getUser();
    } else {
      /* add handler to handle login function */
      googleLoginBtn.addEventListener('click', async () => {
        await auth.loginWithSocial(SocialLoginType.google);
      });
    }
  }
  ```

### **Popup**

`login.js`

```js
window.onload = async () => {
  const auth = await AuthProvider.init({
    appId: `${appId}`,
    redirectUri:'path/to/redirect' 
  });

  googleLoginBtn.addEventListener('click', async () => {
    await auth.loginWithSocial(SocialLoginType.google);
    if(auth.isLoggedIn()) {
      const info = auth.getUser();
      // Store info and redirect accordingly
    }
  });
}
```

`redirect.js`

```js
window.onload = async () => {
  AuthProvider.handleRedirectPage(<origin>);
};
```

### Variables

- `origin` - Base url of your app.
