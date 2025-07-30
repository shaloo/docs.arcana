# User Login with Firebase

In this guide, you will learn how a React/Next.js app integrated with the Arcana Auth SDK and Firebase SDK can onboard users via custom login UI and Firebase as the authentication provider.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Use the [Arcana Developer Dashboard](../../../../../../concepts/dashboard/) to [register the app](../../../../../../setup/config-auth/register-app/) and obtain a unique Client ID required for integrating the app with the Arcana Auth SDK.
- Carefully [follow the instructions to configure Firebase](../../../../../../setup/config-idm/firebase-auth/) as the authentication provider.
- Install the Firebase SDK and integrate the app as explained in the Firebase documentation for [iOS apps](https://firebase.google.com/docs/ios/setup), [Android apps](https://firebase.google.com/docs/android/setup) and [web apps](https://firebase.google.com/docs/web/setup). Use [Firebase authentication](https://firebase.google.com/docs/auth) as per the Web3 app type, mobile or web app. Once a user is authenticated by Firebase, the developer must obtain the token and user identifier and provide it as input to the `loginWithBearer` function of the Arcana Auth SDK for onboarding users to Web3.
- Install the Arcana Auth SDK and [integrate the app](../../../../../integrate/vanilla-html-css-js/) with the Arcana Auth SDK by using the appropriate integration method as per the app type. After that follow the steps listed below and add code to onboard users to Web3 and enable them to sign blockchain transactions.

## Steps

*Using Firebase to onboard users in a Web3 app that is integrated with the Arcana Auth SDK requires a single line of code.*

### Call `loginWithBearer` function

Make sure that all the prerequisites listed above are met. The app should be successfully registered, configured, and integrated with both the Firebase SDK as well as the Arcana Auth SDK, before adding code to onboard users via Firebase.

App.vue

```
import { initializeApp } from 'firebase/app'
import { getAuth, createUserWithEmailAndPassword, signInWithEmailAndPassword } from 'firebase/auth'
import { AuthProvider, BearerAuthentication } from '@arcana/auth'

const config = {
  apiKey: "AIzaSyBddysLWM9CcpNEVLbUz52YwyQL_uytQX0", // Obtain this after registering app at Firebase console
  authDomain: "arc4n4-docx.firebaseapp.com", // Project ID Domain setting in the Firebase console
  projectId: "some-projectid-example-arc4n4-docx",
  storageBucket: "some-storage-arc4n4-docx.appspot.com",
  messagingSenderId: "2xxxx318486297382",
  appId: "4:3184ddddddd7382:web:8b639axxxxxxxx39f85fe7",
  measurementId: "G-EGccccccLDR"
};

const firebaseApp = initializeApp(config)
const firebaseAuth = getAuth(firebaseApp)

//Create Arcana Auth Provider
// Get client ID 'xar_live_xxxxxx' from Arcana Developer Dashboard

const auth = new AuthProvider("xar_live_123940ytyoxxxxxxx343o404",{
  network: "mainnet", //change it to testnet or mainnet
}) 
export default {
  name: 'App',
  data: () => ({
    email: '',
    password: ''
  }),
  mounted () {
    AP.init().then((k) => console.log(k)).catch(e => console.error(e)) //Initialize the Auth Provider
  },
  methods: {
    async ultimate (upm) {
        if (await AP.isLoggedIn()) {
          window.alert('Already logged in')
          return
        }
        await auth.loginWithBearer(BearerAuthentication.firebase, {
        uid: upm.user.uid,
        token: upm.user.accessToken
        })
    },
    async login () { //Sign in existing Firebase users
        const data = await signInWithEmailAndPassword(firebaseAuth, this.email, this.password)
        console.log('Data:', data)
        return this.ultimate(data)
    },
    async register () {  //Sign up new users with Firebase Auth
        const data = await createUserWithEmailAndPassword(firebaseAuth, this.email, this.password)
        console.log('Data:', data)
        return this.ultimate(data)
    }  
  }
}

...

```

Refer to the [Sample Firebase Vue app integration example](https://github.com/arcana-network/auth-examples) to see how the `loginWithBearer` function is used.

After onboarding users, developers can add code to access the other Arcana Auth SDK functions in the app. See [Arcana Auth SDK Usage Guide](../../../../../auth-usage-guide/) for details.

**That is all.**

Your app is all set for authenticating users via Firebase. Authenticated users can instantly access the Arcana wallet to sign blockchain transactions.

No Aggregate Login with Firebase

The [aggregate login feature](../../../../../../concepts/aggregatelogin/) does not work for third-party IAM providers such as Firebase.

If a user has the same email ID registered with say a social login provider and with Firebase, logging into an app using Firebase will create a new unique user account even if the user uses the same email as the one used with a social login provider or via the passwordless option. What this means is that the wallet address for the same user will be different when Firebase is used to log in and subsequently a social login provider or passwordless login is used by the same user having the same email ID.

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
- [Handing authentication errors](../../../../../auth-error-msg/)
- [Get Firebase User token](https://firebase.google.com/docs/reference/js/auth.user.md#usergetidtoken)
- [Using Firebase Auth](https://firebase.google.com/docs/auth)
- [Auth Examples](https://github.com/arcana-network/auth-examples)
