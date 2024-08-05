---
alias: concept-arcana-jwt-token
title: 'Arcana JWT Token?'
description: 'Arcana Auth SDK verifies the token returned by the social login provider and then returns an Arcana JWT Token to the app. Learn more.'
arcana:
  root_rel_path: ..
---

# Arcana JWT Token

Upon successful authentication, {{config.extra.arcana.sdk_name}} returns a unique JWT token to the app. This token is generated upon successful authentication via any of the supported methods of the `AuthProvider`:

* Plug-and-play login `connect()` 
* Custom login UI methods such as `loginWithSocial()`, `loginWithLink()` (deprecated), `loginWithOTPStart`,`loginWithOTPComplete` and `loginWithBearer()`

!!! an-note "User validation"

      After the user authenticates through the chosen social login provider, the {{config.extra.arcana.sdk_name}} receives the JWT token. It verifies the user with this token, and then creates and returns an Arcana JWT token to the app.

Developers can use `getUser()` method to access the JWT token via the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) return value. This token expires after 3 minutes. 

!!! an-tip "JWT Token"

      It is recommended that the app developer must first [[concept-jwt-token-validation|verify the token returned by Arcana]]. After verification, developers must create another app-specific JWT token, if required, and use the subsequent token in the app.

```js
/* Make sure
   1. AuthProvider is created and initialized via .init() call
   2. User is onboarded via plug and play login UI .connect() call 
      or 
      with custom login UI loginWithSocial, loginWithLink (deprecated), `loginWithOTPStart` and `loginWithOTPComplete`, loginWithBearer calls
*/
try {
  const userInfo = await auth.getUser();
  const jwtToken = userInfo.loginToken;
  console.log("Arcana JWT Token: ", jwtToken);
} catch (e) {
  console.log(e);
}
```
