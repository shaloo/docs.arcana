# Get Started: Auth-Core

Integrate Web3 apps with [Arcana Auth-Core SDK](../../concepts/auth-core-sdk/) and assign keys to authenticated users. Build custom login UI to onboard users. Add code for a custom, in-app wallet UI and allow authenticated users to sign blockchain transactions securely.

Limited Auth Capabilities

- **No** built-in [plug-and-play login UI](../../concepts/plug-and-play-auth/) feature
- **No** built-in Arcana wallet UI
- **No** support for [Global keys, only app-specific keys](../../concepts/keyspace-types/) (default) allowed.
- **No** support for [enhanced wallet security](../../concepts/mfa/) via MFA.

## Prerequisites

- App must be [registered](../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../setup/config-auth/) such as [social login](../../concepts/social-login/), [wallet user experience](../../concepts/anwallet/), etc.

Wallet UI Mode Setting

To use the Arcana Auth-Core SDK, developers must implement a [Custom Wallet UI](../../concepts/custom-wallet-ui/)custom wallet UI.

The *Wallet UI Mode* Arcana Developer Dashboard configuration setting chosen by the developer during app registration **is ignored** for apps integrated with the Arcana Auth-Core SDK.

Wallet UI Mode

## 1. Install SDK

```
npm install --save @arcana/auth-core

```

```
yarn add @arcana/auth-core

```

## 2. Integrate

```
const { AuthProvider, SocialLoginType, CURVE } = window.arcana.auth_core;
// or
import { AuthProvider, CURVE } from '@arcana/auth-core';

```

```
const clientId = "xar_test_d24f70cd300823953dfa2a7f5b7c7c113356b1ad"; // obtained after app registration via dashboard
const auth = new AuthProvider({
   curve: CURVE.ED25519, // defaults to CURVE.SECP256K1
   appId: clientId,
   redirectUri: ''   /* can be ignored for redirect flow if same as login page */ 
});

```

### Onboard Users

#### Social Login

```
await auth.loginWithSocial(SocialLoginType.google);
// Check if a user is logged in
const loggedIn = auth.isLoggedIn();
// Get User Account Details
const userInfo = auth.getUserInfo();
...

```

Configure Social Login

The login providers specified in [`SocialLoginType`](../../auth/auth-core-usage-guide/#exported-enums) parameter must be [configured](../../setup/config-auth/) via the dashboard.

### Sign Transactions

Use `AuthProvider`, a standard Ethereum EIP-1193 provider, and allow authenticated users to sign blockchain transactions. Build a custom wallet UI and wire it to appropriate [Web3 wallet operations](../../auth/web3-ops/evm/) on [configured chains](../../setup/config-wallet-chains/).

```
import { AuthProvider, CURVE } from '@arcana/auth-core';
import { ethers } from 'ethers'

const auth = await AuthProvider.init({
   appId: `${clientId}`, /* obtained after registering the app with the Arcana Developer Dashboard */
   curve: CURVE.ED25519, // defaults to CURVE.SECP256K1
   redirectUri:'SPECIFY_URI'    /* can be ignored for redirect flow if same as login page */
});

...

const login = async () => {
const arcanaProvider = await auth.loginWithSocial(SocialLoginType.google);
if (auth.isLoggedIn()) {
    const info = await auth.getUserInfo();
}
};

...

googleLoginBtn.addEventListener('click', () => {
  login('google');
});
  ¯
...

try {

  const provider = new ethers.providers.Web3Provider(arcanaProvider)
  await provider.getBlockNumber() //Or perform any other Web3 operation such as sign message, send transaction
    // 14983200
} catch (e) {
    // log error
}
...

```

## Advanced Usage

UI Flow Mode

When instantiating the `AuthProvider` you can configure it to use appropriate [UI flow](../../auth/auth-core-usage-guide/#flow-modes) such that the authenticated user is redirected to a different app page after login, if required.

Passwordless Onboarding

In addition to [social login](#social-login), onboard users via passwordless option.

```
const result = await auth.loginWithPasswordlessStart({
  email: 'abc@example.com'
});

```

Then on the redirect page, **handle passwordless login** as follows:

```
await auth.handleRedirect();

```

Onboarding via Cognito, Firebase

Web3 apps integrating with Arcana Auth-Core SDK cannot use Cognito or Firebase for onboarding users. These providers are **not supported** in the current release.

Contact our [Arcana support](../../support/) if you need this feature.

Status and User Information

**Check Login Status**

```
const loggedIn = auth.isLoggedIn(); /* boolean response */

```

**Get User Info**

After successful authentication, the [user information](../../auth/auth-core-usage-guide/#exported-types) is saved in memory. It gets copied in the current session storage before the *page unload* event. User information is fetched again to memory and removed from the session storage after a successful page reload.

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

**Get Public Key**

```
const publicKey = await auth.getPublicKey({
  verifier: SocialLoginType.google,
  id: `abc@example.com`,
}); 

```

**Logout**

```
await auth.logout();

```

## See Also

**'Auth-Core'** integration example: See `sample-auth-core` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth-Core SDK Quick Links

- [Arcana Auth-Core SDK Usage Guide](../../auth/auth-core-usage-guide/)
- [Arcana Auth-Core SDK Reference](https://auth-core-sdk-ref-guide.netlify.app/)
- [Changelog](https://github.com/arcana-network/auth-core/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-core) *Private, Limited Access*
