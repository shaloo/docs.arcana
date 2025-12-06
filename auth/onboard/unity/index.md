# Unity App: Onboard Users

Learn how to onboard users via [social login](../../../concepts/social-login/) in a Web3 Unity gaming app integrated with the [Arcana Auth Unity SDK](../../../concepts/authsdk/) and allow authenticated users to access the Arcana wallet within the app context.

## Prerequisites

- The Unity Web3 gaming App must be [integrated with the Arcana Auth Unity SDK](../../integrate/unity/).

## Onboarding Users

*Follow these steps to onboard users in a Unity Web3 gaming app with the Arcana Auth Unity SDK and allow authenticated users to access the Arcana wallet.*

Call `LoginWithSocial` or `LoginWithOTP` to onboard the user. Choose one of the [supported user onboarding options](../../../web3-stack/auth/) such as Google, Steam, etc.

```
// After initializing the SDK

if (loginMethod == LoginMethod.Passwordless)
  arcanaSDK.LoginWithOTP(email);
else
  arcanaSDK.LoginWithSocial(loginMethod);

```

That is all.

The Unity Web3 gaming app can now onboard users via the configured social login providers.

## What's Next?

After adding code to onboard users in a Unity Web3 gaming app, developers can add code to [enable Web3 wallet operations](../../web3-ops/unity-wallet-ops/) for authenticated users to sign transactions.

## See also

- [Authentication Types](../../../concepts/authtype/)
- [Unity Quick Start Guide](../../../quick-start/unity-quick-start/)
