# Arcana Auth SDK

## Onboarding Users

______________________________________________________________________

Is it possible to onboard users via social login as well as via a wallet when using the Arcana Auth SDK?

Yes.

Besides social login, Arcana Auth SDK allows user onboarding via any supported third-party browser-based Web3 wallets.

Apps using wallet connectors, [Wagmi](../../quick-start/wagmi-quick-start/), and [RainbowKit](../../quick-start/rainbowkit-quick-start/), [Web3-React](../../quick-start/web3-react-quick-start/), and [WalletConnect](../../quick-start/walletconnect-quick-start/) SDKs can enable Arcana wallet to sign blockchain transactions.

Is social login via a Microsoft account or Hotmail supported?

No.

Arcana Auth SDK does not support passwordless login through a Hotmail account. Also users cannot log in using Microsoft accounts.

Can a Web3 app use the Arcana Auth SDK only for onboarding users and disable the Arcana wallet feature altogether?

There is no way to selectively turn off the Arcana wallet features. However, if the application **does not perform any blockchain transactions**, the wallet feature can be disabled by setting the [wallet visibility mode](../../concepts/anwallet/walletvisibility/) to `false` while integrating the app with the Arcana Auth SDK. In this case, the Arcana wallet will not be visible to the authenticated user as long as **no blockchain transaction is triggered**.

If you need to completely disable the Arcana wallet feature in the app, you can request a private build of the Arcana wallet by [contacting Arcana](../../support/) with the use case details.

Will the Arcana Network's distributed key generation algorithm be affected if a node with a key share becomes temporarily inaccessible?

No.

Arcana's [ADKG](../../concepts/adkg/) algorithm can still generate the key using the key shares from the other nodes that are accessible. The algorithm is designed to tolerate a certain number of nodes being inaccessible, depending on the total number of participating nodes. For more details, see [Arcana's Technical Whitepaper](https://www.notion.so/Arcana-Technical-Docs-a1d7fd0d2970452586c693e4fee14d08).

Does the authenticated user see the same wallet address if they use different authentication providers to log into a Web3 app integrated with the Arcana wallet?

Yes. This is made possible by the [aggregate login](../../concepts/aggregatelogin/) feature of the Arcana Auth SDK.

*For this feature to work, the user* **must** *have the same email ID registered with the different authentication providers.*

Arcana Auth SDK uses the email ID to uniquely identify the user even if the user uses different social login providers or the passwordless email option to log in to a Web3 app. It associates a single key for such a user which results in the user seeing the same wallet address. If the user has different email IDs associated with different social login providers then each login is treated as a unique, different user and the same user will see a different wallet address when logging into the same Web3 app.

Does the authenticated user see the same wallet address across multiple Web3 applications that integrate with the Arcana Auth SDK?

Arcana Auth SDK allows Web3 app developers to tailor the wallet address experience for their users. It provides two 'Keyspace' options at the time of application registration:

- App-Specific Keys
- Global Keys

If a developer selects the **Global Keys** option, then the user gets assigned the same key across all applications that integrate with the Arcana Auth SDK and chooses the same **Global Keys** option. The same key means the wallet address of the user is the same across different Web3 apps that integrate with the Arcana Auth SDK. This is true across apps that use EVM-compatible chains. If two apps use global keys but one of them is on an EVM-compatible chain and the other is not, then the keys will be different across such apps. The Arcana's ADKG subsystem will assign the user different sets of keys for such apps resulting in different wallet addresses across such apps.

For more details, see [app-specific vs. global keys](../../concepts/keyspace-types/)

Does the **global keys** feature work across EVM-compatible and not EVM-compatible chains?

**No**.

The global keys feature enables an authenticated user to have the same wallet address across different Web3 apps in the Arcana ecosystem.

However, an authenticated user will see \*\*different wallet addresses across two chains configured in a single Web3 app if one of them is EVM-compatible whereas the other is not. Also, in the case of two Web3 apps, one of which uses an EVM-compatible chain and the other that uses chains that are not EVM-compatible, the authenticated user's wallet address will be different for each app.

Why is the Global Keyspace option not enabled if I select the 'Custom Wallet UI' option during app registration in the Arcana Developer Dashboard?

If a Web3 app developer chooses the 'Custom Wallet UI' instead of the built-in Arcana wallet UI, during app registration via Arcana Developer Dashboard, only 'app-specific keys' are allowed. This is for [keyspace security](../../concepts/keyspace-types/#security).

Global keys allow users to have the same private key across all the apps that integrate with the Arcana Auth SDK. With custom wallet UI, global keys are disallowed to mitigate the security risk of a malicious app hacking into user keys and gaining access to not just one but all such apps with 'Global Keys' enabled.

Are incognito/private windows in browsers and 'third-party cookies blocked' option supported by the Arcana Auth SDK?

Yes.

The Arcana wallet supports Chrome browser `Incognito Window` as well as `Private Window` in the case of Safari browsers. Earlier, if third-party cookies were disabled, the built-in, plug-and-play login pop-up modal did not show up in some cases. These use cases are now addressed by the SDK.

Developers can use the `canReconnect` and `reconnect` [functions of the `AuthProvider`](https://authsdk-ref-guide.netlify.app/classes/authprovider) to check before allowing users to reconnect whereby users do not need to re-login if they refresh the page or close the tab and re-open it again within a 30-minute window.

Does Arcana Auth SDK return a JWT token to verify users post social login?

Yes. See [Arcana JWT Token](../../concepts/authtype/) for details.

How does the app access an authenticated user's information such as name, email, login token, the wallet address?

Apps can use the [`getUser()`](https://authsdk-ref-guide.netlify.app/classes/authprovider#getUser) method to obtain the user's name, email, login token ([Arcana JWT Token](../../concepts/an-jwt-token/), [DID Token](../../concepts/an-did-token/)), wallet address, etc. See [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/) for details.

For Twitter, the `getUser()` function of the `AuthProvider` does not always return the user's email?

You can create a Twitter account using your phone number without needing to provide an email address. If you do this, the getUser() function won't give you the user's email address.

However, web3 app developers have the [option to configure settings on the Twitter developer dashboard](https://developer.twitter.com/en/docs/twitter-api/v1/accounts-and-users/manage-account-settings/api-reference/get-account-verify_credentials#:~:text=Request%20a%20User's%20Email%20Address,email%20address%20access%20to%20function) to request users' email addresses. If they do this, Arcana Auth SDK can access and retrieve the user's email through Twitter, and it will be included in the result when you use the getUser() function.

Does login via Passkey share any user or device information with the website or application?

No.

With [passkeys](../../concepts/authtype/auth-passkeys/), the user's biometric information, secrets, or private keys are never revealed to the website or the app where user is trying to sign in. User digital credentials do not leave the user's personal device. Also, the passkey protocols are carefully designed so that no information shared with sites can be used as a tracking vector.

[See FIDO standard](https://fidoalliance.org/how-fido-works/), [Apple Passkeys security](https://support.apple.com/en-in/102195), [Microsoft Passkey Support](https://support.microsoft.com/en-us/account-billing/signing-in-with-a-passkey-09a49a86-ca47-406c-8acc-ed0e3c852c6d), [Google Passkey Security](https://developers.google.com/identity/passkeys/faq) for details.

Is there any expiration limit on passkeys?

No.

If required, users can delete passkeys associated with a website or application and create new ones.

Can users create accounts with passkeys on Arcana Auth SDK?

Yes.

Web3 apps using Arcana Auth SDK can use passkeys for signups and login or as an alternative login mechanism.

Refer to [Passkey Support](../../concepts/authtype/auth-passkeys/) for details.

Does the Arcana Auth SDK support role based access control (RBAC)?

Yes.

After the user authenticates through the chosen [social login](../../concepts/social-login/) provider, the Arcana Auth SDK receives the JWT token from the provider. It verifies the user with this token, and then creates and returns an Arcana JWT token to the app.

If the app developer needs to implement *Role Based Access Control (RBAC)* and authorize the authenticated user for some specific actions, they can first [verify the JWT token returned by Arcana](../../concepts/jwt-token-validation/). Upon verification they can issue a new app-specific JWT that enables RBAC and authorization.

Alternately, developers can use Sign-In with Ethereum ([SIWE](https://www.npmjs.com/package/siwe)) by signing a standard message format parameterized by scope, session details, and security mechanisms (e.g., a nonce).

SIWE allows users to log in to applications using their Ethereum wallet and ENS (Ethereum Name Service) profile.

## Arcana wallet

______________________________________________________________________

How does the in-app Arcana wallet allow developers to manage UX for signing blockchain transactions?

Apps can integrate with the Arcana Auth SDK to enable an embedded, non-custodial Web3 Arcana wallet for every authenticated app user.

To integrate an app, developers must register and configure the app with Arcana, and then install the `auth` package and create a new `AuthProvider`. While instantiating the `AuthProvider` developers can manage the user experience for signing blockchain transactions through the input parameter `alwaysVisible`. This parameter controls whether the Arcana wallet UI is automatically displayed in the application's context right after a user authenticates or it shows up only when the app triggers a blockchain transaction that requires the user's approval.

For details, see [Arcana wallet visibility modes](../../concepts/anwallet/walletvisibility/).

Does the Arcana Auth SDK set `window.ethereum` value in the app's context?

By default, Arcana wallet does not set the `window.ethereum` value in the app's context. To explicitly set this value, during the integration of the app with the Arcana wallet, when `AuthProvider` is instantiated, developers must specify the `setWindowParameter=true`. For details, see the [Arcana wallet Usage Guide](../../auth/auth-usage-guide/).

How is the in-app Arcana wallet different from self-custodial wallets?

Arcana wallet is a non-custodial wallet. Here is how it differs from the self-custodial wallets:

| Self-custodial wallets | Arcana's non-custodial wallet | | --- | --- | | Users need to be responsible for and remember their passphrases. | Users are not required to remember any passphrase. | | Users need to manage keys themselves in case of self-custody wallets. | Arcana wallet offers a sweet spot, users don't have to manage keys as in the self-custody wallet and yet their keys can be generated in a distributed manner via the Arcana wallet, a non-custodial wallet. | | Users who are new to Web3 typically find self-custodial wallets very challenging to use. | Arcana wallet offers a really simple Web2-like onboarding experience for new Web3 users without sacrificing security and ownership. |

## User Key Privacy

______________________________________________________________________

If Arcana is storing nothing related to the user's private keys, how does Arcana provide the same wallet to a user when the user signs in for the second time?

The Arcana Auth SDK maintains a UserID -> Public Key mapping, that is how the user is identified across successive login sessions and the correct wallet is assigned for the authenticated user. This mapping is stored in the DKG nodes.

How does the Arcana Auth SDK ensure that the key shares are fetched by the correct user only?

A user can log in only after the social login provider authenticates or if the user provides the OTP shared via email during passwordless onboarding. Providers share JWT/other identifiers with Arcana Auth SDK once the user authenticates. So unless the user themselves share their social ID / OTP, only an authenticated user will be allowed to access their key shares. The token (idToken) is verified with the DKG nodes before the key shares are sent back to the user. The token can be used only once per user login session.

Can a malicious entity reconstruct the user's private key if they get all the requisite key shares?

There are several safeguards against this and we are continuously evolving the ADKG protocol to make it more robust and fast.

One of the methods is MFA. When the MFA feature is enabled, it further strengthens the security by using multiple factors to generate the private key besides the key shares. A local share is created for the user at the first login that lives on the user's device. This local key component stored on the user's device is required to get the actual private key. If a user changes the device, they are validated via PIN setup during MFA or security answers before the local share is re-created on the new device.

Irrespective of whether MFA is enabled or not, the reconstruction of the private key happens only after ensuring that the user is:

- authenticated through one of the configured social login providers,
- verified by DKG before sharing the key shares.

The verification token ID changes for every user session so a malicious entity cannot reuse it. Also, note that the same set of key shares is not returned for every user session by the DKG nodes. Only a random subset of shares is needed to construct the private key.

In a future version of the ADKG protocol, the key shares will be periodically refreshed to safeguard against an eventuality if some of them are somehow stolen by a malicious user.
