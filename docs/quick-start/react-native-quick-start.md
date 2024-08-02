---
alias: react-native-quick-start
title: 'Get Started: React-Native Apps '
description: 'Integrate Arcana Auth in React-Native apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'React-Native'"
  app_example_submodule: "`sample-auth-react-native`"
---

# Get Started: React-Native Apps

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.react_native_sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

!!! an-note "React-Native Version"

    We support React-Native [v0.71.8](https://reactnative.dev/versions) or higher

## 1. Install

{% include "./code-snippets/auth_react_native_install.md" %}

!!! an-tip "Auto-Linking"

    You are **not required** to manually link this module, as it supports React Native auto-linking.

## 2. Integrate

```jsx
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

```javascript

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

=== "SendTransaction"

    ```js

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

=== "EIP 1193 Request"

    ```js
    // EIP 1193 request method
    const request = async (method, params) => {
      if(authRef !== null){
        return await authRef.current.request({ method, params });
      }
    };
    ```

## 3.  Advanced Usage

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{% include "./text-snippets/adv_react_native_usage.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/react_native_sdk_quicklinks.md" %}
