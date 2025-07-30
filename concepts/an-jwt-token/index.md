# Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app. This token is generated upon successful authentication via any of the supported methods of the `AuthProvider`:

- Plug-and-play login `connect()`
- Custom login UI methods such as `loginWithSocial()`, `loginWithLink()` (deprecated), `loginWithOTPStart`,`loginWithOTPComplete` and `loginWithBearer()`

After the user selects a social login provider and authenticates with the provider, the Arcana Auth SDK receives the JWT token from the selected provider. The Arcana Auth SDK verifies the user via this token first and then creates and returns a new Arcana JWT token to the app. The app must verify the token returned by the Arcana Auth SDK.

## Verify Arcana JWT Token

The JWT token returned by the Arcana Auth SDK expires after 3 minutes.

It is recommended that the app developer must first [verify the token returned by Arcana](../jwt-token-validation/) before generating an app-specific JWT token for further use within the app context.

Developers can use `getUser()` method to access the JWT token returned by the Arcana Auth SDK via the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) return value.

```
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

## App-specific JWT Token

After verification of the JWT token returned by the Arcana Auth SDK, developers must create another app-specific JWT token, if required, and use the subsequent token in the app.

For example, if the app developer needs to implement *Role Based Access Control (RBAC)* and authorize the authenticated user for some specific actions, they can first [verify the token returned by Arcana](../jwt-token-validation/). Upon verification, they can issue a new app-specific JWT that enables RBAC and authorization.

Alternately, for RBAC, developers can use Sign-In with Ethereum ([SIWE](https://www.npmjs.com/package/siwe)) by signing a standard message format parameterized by scope, session details, and security mechanisms (for example, a nonce).

SIWE allows users to log in to applications using their Ethereum wallet and ENS (Ethereum Name Service) profile.
