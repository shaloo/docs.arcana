# User Login with Google

In this guide, you will learn how a React/Next.js app integrated with the Arcana Auth SDK and Arcana Auth React SDK can onboard users with a custom login UI through Google authentication.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Use the [Arcana Developer Dashboard](../../../../../../concepts/dashboard/) to [register the app](../../../../../../setup/config-auth/register-app/) and obtain a unique Client ID required for integrating the app with the Arcana Auth SDK.
- Carefully [follow the instructions to configure Google](../../../../../../setup/config-social/google-oauth/) as the authentication provider.
- Use the instructions and [integrate the React app](../../../../../integrate/react-nextjs/) with the Arcana Auth SDK and the Arcana Auth React SDK before adding code to onboard users.

## Steps

*Using Google to onboard users in a React/Next.js app requires a single line of code.*

## Step 1: Use `loginWithSocial`

App.js

```
import { useAuth } from "@arcana/auth-react";

function App() {
  const { loading, isLoggedIn, loginWithSocial } = useAuth()

  // custom login UI
  const onConnectClick = async () => {
    try {
      await loginWithSocial('google'); 
    } catch (err) {
      console.log({ err });
      // Handle error
    }
  };

  if (loading) {
    return <p>Loading...</p>;
  }
  if (!isLoggedIn) {
    return (
      <button onClick={onConnectClick}>
        Connect with Google
      </button>
    );
  }
}

export default App

```

**That is all.**

The React/Next.js app is all set for onboarding users via Google.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## What's Next?

Authenticated users can instantly access the in-app Arcana wallet UI for signing blockchain transactions. Use the `AuthProvider` EIP-1193 standard Ethereum provider to call JSON/RPC functions and Web3 wallet operations in the app. [Learn more...](../../../../../web3-ops/evm/)

## See also

- [Authentication Types](../../../../../../concepts/authtype/).
- [Arcana Auth React SDK Reference Guide](https://auth-react-sdk-ref-guide.netlify.app/)
- [Handling authentication errors](../../../../../auth-error-msg/)
- [Auth Examples](https://github.com/arcana-network/auth-examples)
