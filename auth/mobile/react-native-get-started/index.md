# Get Started: React-Native Apps

'React-Native' Web3 apps can onboard users via social login by integrating with the Arcana Auth React-Native SDK!

## Prerequisites

- React-Native [v0.71.8](https://reactnative.dev/versions) or higher

## 1. Register & Configure

- App must be [registered](../../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../../setup/config-auth/) such as [social login](../../../concepts/social-login/), [wallet user experience](../../../concepts/anwallet/), etc.

## 2. Install SDK

For 'React-Native' Web3 apps, install the [`auth-react-native`](https://www.npmjs.com/package/@arcana/auth-react-native) package.

```
npm i @arcana/auth-react-native
(cd ios && pod install)

```

**Note:** You are **not required** to manually link this module, as it supports React Native auto-linking.

Use latest SDKs

Use the latest Arcana Auth React-Native SDK release **v0.0.4** available at [npm](https://www.npmjs.com/package/@arcana/auth-react-native).

## 3. Integrate

Use the unique client ID assigned to the app during registration to integrate with the SDK.

```
import React, { useState } from "react";
import { Button, View } from "react-native";
import Auth from "@arcana/auth-react-native";

export default function App() {
  const authRef = React.useRef(null);

  return (
    <View >
      <Auth clientId="xar_test_xxx" theme="light" ref={authRef} />
    </View>
  );
}

```

```
<Auth clientId="xar_test_xxx" theme="dark" />

```

### Onboard Users

Call `Auth` functions and onboard users through the configured authentication providers.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

**Google Login**\*

```
// For logging in
const loginWithGoogle = () => {
  if(authRef !== null){
    authRef.current.loginWithSocial('google').then(() => {
      // logged in
    }).catch(err => {
      // already logged in
      // or error during login
    }) 
  }
}

```

**Logout**

Add code to provide user log out option via the `logout` method or let authenticated users log out using the wallet UI logout option in the 'User Profile' tab.

```
// Logout User from session
const logout = () => {
  if(authRef !== null){
    authRef.current.logout().then(() => {
      // on logout
    });
  }
};

```

**Show/Hide Wallet**

Once the user logs into the app, they can instantly access the Arcana wallet. Developers can choose to show and hide the wallet as required by the app.

```
// For showing wallet
const showWallet = () => {
  if(authRef !== null){
    authRef.current.showWallet();
  }
}

// For hiding wallet
const hideWallet = () => {
  if(authRef !== null){
    authRef.current.hideWallet();
  }
}

```

```
// For getting logged in user info
const getUserInfo = async () => {
  if(authRef !== null){
    return authRef.current.getUserInfo();
  }
};

```

```
// For getting current account
const getAccount = async () => {
  if(authRef !== null){
    return await authRef.current.getAccount();
  }
};

```

```
return (
    <View >
      <Button
        title={"Get User Info"}
        onPress={() =>
          getUserInfo()
        }
      />
      <Button
        title={"Send Transaction"}
        onPress={() =>
          sendTransaction({ to: '', value: '', data: '' })
        }
      />
        <Button
        title={"Get Account"}
        onPress={() =>
          getAccount()
        }
      />

        <Button
        title={"Send Request"}
        onPress={() =>{
          sendRequest({ method:"", params:[] })
        }}
      />
      <Button
        title={"log out"}
        onPress={() => logout()}
      />
      <Auth
          clientId="xar_test_...."
          theme="dark"
          ref={authRef}
      />
    </View>
  );

```

### Sign Transactions

Use `authRef` EIP-1193 provider to call JSON-RPC functions and Web3 wallet operations.

```
// For sending transaction
const sendTransaction = async data => {
  if(authRef !== null){
    return await authRef.current.sendTransaction(data);
  }
};

// For getting current account balance
const getBalance = async () => {
  if(authRef !== null){
    return await authRef.current.getBalance();
  }
};

// EIP 1193 request method
const request = async (method, params) => {
  if(authRef !== null){
    return await authRef.current.request({ method, params });
  }
};

```

## 4. Deploy

**That's all!**

The 'React-Native' app is ready to onboard users and allow them to sign blockchain transactions.

## See also

- **'React-Native'** integration example: See `sample-auth-react-native` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth React-Native SDK Quick Links

- [Release notes](../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-react-native/releases)
- [Download auth-react-native](https://www.npmjs.com/package/@arcana/auth-react-native)
