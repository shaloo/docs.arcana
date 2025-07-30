# User Login with Telegram

In this guide, you will learn how a Vue app integrated with the Arcana Auth SDK can onboard users via custom login UI and Telegram as the social authentication provider.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Use the [Arcana Developer Dashboard](../../../../../../concepts/dashboard/) to [register the app](../../../../../../setup/config-auth/register-app/) and obtain a unique Client ID required for integrating the app with the Arcana Auth SDK.
- [Follow the instructions to configure Telegram](../../../../../../setup/config-social/telegram-oauth/) as the authentication provider.
- Use the appropriate integration method as per the app type and [integrate the app](../../../../../integrate/vanilla-html-css-js/) with the Arcana Auth SDK before accessing the user onboarding function of the Arcana Auth SDK.

## Steps

*Using Telegram to onboard users in a Web3 app that is integrated with the Arcana Auth SDK requires a single line of code.*

## Step 1: Call `loginWithBearer` function

Make sure that all the prerequisites listed above are met. The app should be successfully registered, configured, and integrated with the Arcana Auth SDK, before adding code to onboard users via Telegram.

```
window.onload = () => {
    const btn = document.getElementById("telegram-login");
    btn.onclick = () => {
        const url = new URL("/auth", "https://oauth.telegram.org");
        url.searchParams.append("bot_id", "7097916610");
        url.searchParams.append("scope", "profile");
        url.searchParams.append("origin", "https://zcnk5z-5000.csb.app");
        url.searchParams.append("return_to", "https://zcnk5z-5000.csb.app/redirect");
        setTimeout(() => (window.location.href = url.toString()), 50);
    };
};

```

```
const { AuthProvider } = window.arcana.auth;

window.onload = async () => {
    const auth = new AuthProvider( //Use ClientID to create AuthProvider
        "xar_dev_92ecc87db08e4c13b1fcd9b37ca9bf54fa874355"
    );
    await auth.init();  //Initialize the Auth Provider
    const u = new URL(window.location.href);
    if (u.hash) {
        const p = new URLSearchParams(u.hash.substring(1));
        const t = p.get("tgAuthResult");
        if (t) {
            cleanURL();
            //Initiate social login, must set app domain in Telegram bot for successful login
            await auth.loginWithBearer("telegram", { token: t }); 
        }
    }
};

function cleanURL() {
    const cleanUrl = window.location.origin + window.location.pathname;
    window.history.replaceState(null, "", cleanUrl);
}

```

Check if a user is logged in:

```
const connected = await auth.isLoggedIn()

```

Add code in the app to log out an authenticated user:

```
await auth.logout()

```

**That is all.**

The Web3 app is all set for onboarding users via Telegram.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## What's Next?

Authenticated users can instantly access the in-app Arcana wallet UI for signing blockchain transactions. Use the `AuthProvider` EIP-1193 standard Ethereum provider to call JSON/RPC functions and Web3 wallet operations in the app. [Learn more...](../../../../../web3-ops/evm/)

## See also

- [Authentication Types](../../../../../../concepts/authtype/)
- [Handling authentication errors](../../../../../auth-error-msg/)
- [Auth Examples](https://github.com/arcana-network/auth-examples)
