# Arcana Auth-Core SDK Usage

The Arcana Auth-Core SDK is a client-side tool for developers to assign Web3 keys to authenticated users for signing blockchain transactions. Use this SDK instead of the Arcana Auth SDK for key assignment or when building a completely whitelisted solution.

When initializing Arcana Auth-Core SDK, the developer sets the redirect URL. The SDK performs OAuth2 login with the chosen provider and returns the login token from the provider. At the specified redirect URL, the developer uses this token to fetch the user's private key.

Limited Feature SDK

The Arcana Auth-Core SDK has limited capabilities as compared to the Arcana Auth-Core SDK:

- No built-in plug-and-play login UI feature
- No built-in Arcana wallet UI
- No support for Global keys, only app-specific keys (default) are allowed.
- No support for enhanced wallet security via MFA.

Contact [support](mailto:support@arcana.network) to access the latest release.

[SDK Reference](https://auth-core-sdk-ref-guide.netlify.app/)

## Installation

### npm

```
npm install --save @arcana/auth-core

```

### yarn

```
yarn add @arcana/auth-core

```

### CDN

```
<script src="https://cdn.jsdelivr.net/npm/@arcana/auth-core"></script>

```

```
<script src="https://unpkg.com/@arcana/auth-core"></script>

```

## Usage

### Import

```
const { AuthProvider, SocialLoginType, CURVE } = window.arcana.auth_core;
// or
import { AuthProvider, CURVE } from '@arcana/auth-core';

```

### Initialize `AuthProvider`

```
const auth = new AuthProvider({
   curve: CURVE.ED25519, // defaults to CURVE.SECP256K1
   appId: `${appId}`,
   redirectUri: ''    
});

```

### Initiate Social Login

```
await auth.loginWithSocial(SocialLoginType.google);

```

### Initiate Passwordless Login

```
const result = await auth.loginWithPasswordlessStart(`${emailAddress}`, PasswordlessOptions);

```

### Get Login Status

```
const loggedIn = auth.isLoggedIn(); /* boolean response */

```

### Get User Info

After successful login, the user information is saved in memory. Before the page `unload` event, the user information gets stored in `session-storage`. After a successful page reload, it is fetched again to memory and removed from the `session-storage`.

```
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

```
const publicKey = await auth.getPublicKey({
  verifier: SocialLoginType.google,
  id: `abc@example.com`,
}); 

```

For details regarding `SocialLoginType`, see [Exported Enums](#exported-enums).

### Clear Login Session

```
await auth.logout();

```

## TypeScript Usage

### Exported Enums

```
enum SocialLoginType {
  apple = 'apple',
  google = 'google',
  discord = 'discord',
  twitch = 'twitch',
  github = 'github',
  twitter = 'twitter',
  telegram = 'telegram',
  passwordless = 'passwordless',
}

```

### Exported Types

```
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

```
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

```
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
