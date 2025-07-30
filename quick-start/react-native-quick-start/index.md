# Get Started: React-Native Apps

Integrate 'React-Native' apps with Arcana Auth React-Native SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

## Prerequisites

- App must be [registered](../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../setup/config-auth/) such as [social login](../../concepts/social-login/), [wallet user experience](../../concepts/anwallet/), etc.

React-Native Version

We support React-Native [v0.71.8](https://reactnative.dev/versions) or higher

## 1. Install

```
npm i @arcana/auth-react-native
(cd ios && pod install)

```

Auto-Linking

You are **not required** to manually link this module, as it supports React Native auto-linking.

## 2. Integrate

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

### Onboard Users

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

### Sign Transactions

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

```

```
// EIP 1193 request method
const request = async (method, params) => {
  if(authRef !== null){
    return await authRef.current.request({ method, params });
  }
};

```

## 3. Advanced Usage

`AuthProvider` Optional Parameters

Besides Client ID input parameter, you can optionally customize these settings in the `AuthProvider` constructor:

______________________________________________________________________

**`position`:** wallet position within the app context - `left`|`right`

**`theme`:** wallet theme - `light`|`dark`

**`connectOptions`:** [compact mode](../../concepts/plug-and-play-auth/#compact-modal) for the built-in plug-and-play login UI - `true`|`false`

```
connectOptions: {
      compact: true // default - false
},

```

______________________________________________________________________

See [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) for details.

React-Native SDK Usage

**Google Login**

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

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See also

**'React-Native'** integration example: See `sample-auth-react-native` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth React-Native SDK Quick Links

- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-react-native/releases)
- [Download auth-react-native](https://www.npmjs.com/package/@arcana/auth-react-native)
