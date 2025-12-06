# General

Can any Web3 app user access the in-app Arcana wallet?

No.

The in-app Arcana wallet is accessible by the authenticated users only for Web3 apps that integrate with the Arcana Auth SDK.

Web3 users cannot download and install the in-app Arcana wallet, unlike other standalone, browser-based third-party wallets.

CA wallet

Arcana also offers a standalone [CA wallet](../../concepts/ca/chain-abstraction/). This is a limited feature wallet. It is used for showcasing chain abstracted transactions in a [select set of supported apps](../../web3-stack/ca_wallet_stack/).

How can a Web3 user access in-app Arcana wallet?

Web3 developers must integrate apps with the Arcana Auth SDK to enable the in-app Arcana wallet.

To integrate:

- [Register the app](../../setup/config-auth/register-app/) and [configure (optional)](../../setup/config-auth/) the SDK usage settings through the Arcana Developer Dashboard.
- Download and install the [Arcana Auth SDK](https://www.npmjs.com/package/@arcana/auth).
- Use the unique Client ID assigned to the registered app in the dashboard in the integration code.
- Initialize the SDK and use the Arcana Auth SDK functions to [onboard users](../../auth/onboard/vanilla/use-plug-play-auth/).

Developers can control the user experience for signing blockchain transactions. Use the appropriate [wallet visibility](../../concepts/anwallet/walletvisibility/) settings during SDK integration. You can also display/hide the wallet with `showWallet()`.

## Integrating Auth SDK

How can Web3 developers enable [social login](../../concepts/social-login/)?

Follow these steps:

- Login to the Arcana Developer Dashboard using familiar Web2 login.
- Register the Web3 app in the dashboard.
- Configure or use the default user onboarding SDK settings in the dashboard.
- [Download](https://www.npmjs.com/package/@arcana/auth) and install the SDK
- [Integrate the Web3 app](../../auth/integrate/wagmi/) with the SDK. Process may vary depending upon the app type.

How can Web3 apps access the standard EIP-1193 provider from the `AuthProvider`?

The Web3 app integration code must:

- First create an `AuthProvider` object.
- Initialize it with `init()` method.
- Call `Web3Provider` if using the `ethers` library or call `provider`, if using the `web3.js` library.

```
// ethers
const provider = new ethers.providers.Web3Provider(auth.provider)
// web3js
const provider = new Web3(auth.provider)

```

## Application Frameworks

What application frameworks are supported by the Arcana Auth SDK?

Developers can integrate the Arcana Auth SDK with any Web3 app built using vanilla HTML/CSS and Javascript or any of these frameworks:

- React
- Next.js
- Vite
- Vue

[Learn more...](../../auth/integrate/vanilla-html-css-js/)

## Wallet Connectors

Which wallet connector frameworks are supported for Arcana wallet?

Arcana wallet supports Wagmi, RainbowKit, WalletConnect, Web3-React wallet connect frameworks.

How can developers enable Arcana wallet for wallet connectors?

To enable, developers must integrate the Web3 app with the Arcana Auth SDK.

Install the specific packages required for the wallet connector. Then integrate the app with the SDK.

- Web3 apps using Wagmi, RainbowKit or WalletConnect must install and integrate with the `auth`, `auth-wagmi` packages.
- Apps using Web3-React must install and integrate with the `auth`, `auth-web3-react` packages.
- How to [integrate Wagmi apps](../../auth/integrate/wagmi/)?
- How to [integrate RainbowKit apps](../../auth/integrate/rainbow/)?
- How to [integrate WalletConnect apps](../../auth/integrate/walletconnect/),
- How to [integrate Web3-React apps](../../auth/integrate/web3-react/).

## User Onboarding

How do I onboard users via social login in a Web3 app?

1. Login to the Arcana Developer Dashboard.
1. Register the Web3 app with Arcana.
1. Use default SDK user onboarding settings or configure authentication providers in the **Social Auth** section.
1. Install and integrate the app with the Arcana Auth SDK.
1. Add code to onboard users. For example, see how to onboard users via [Google](../../auth/onboard/vanilla/custom-ui/build-social/google-oauth/).

Is there a passwordless login option to onboard the users?

The option to onboard users in a Web3 app via passwordless login works without any configuration.

Developers can register the Web3 app via the Arcana Developer Dashboard. Then install and integrate the app with the Arcana Auth SDK.

Initialize the Arcana Auth SDK, use the `connect` method. This will bring up the built-in, [plug-and-play login UI](../../auth/onboard/vanilla/use-plug-play-auth/). This default login UI allows passwordless login.

Alternatively, developers can also add custom login UI and call the Arcana Auth SDK methods for passwordless login.

See [how to enable passwordless login](../../auth/onboard/vanilla/custom-ui/build-pwdless-auth/) for details.

## Deployment

Does each registered app have a single unique Client ID?

No.

Two unique Client IDs are assigned for every registered app.

One is for the Testnet configuration profile and another for the Mainnet configuration profile.

What is the difference between Testnet and Mainnet?

Arcana Testnet and Mainnet are two **different** blockchain networks.

The features offered by the Arcana Auth SDK available on Testnet may be different from the ones available on the Mainnet.

Following are the key differences between Arcana Testnet and Mainnet:

- **Client ID**: To deploy the app on Testnet, the developer must specify the Client ID assigned to the Testnet configuration profile after app registration, when creating the `AuthProvider`. Similarly, for Mainnet deployment, the Client ID assigned to the Mainnet configuration profile should be used.

- **Key/Wallet Address**: The authenticated user is assigned a unique key/wallet address for Testnet app deployment. The same user is assigned a different key/wallet address when this app is deployed on the Mainnet.

- **Billing**: App usage is tracked for both the Arcana Testnet as well as the Mainnet. However, only Mainnet usage is billed.

What is the difference in the in-app Arcana wallet behavior when an app is deployed on Testnet vs. the Mainnet?

If a user logs into the app that is integrated with the Arcana Auth SDK and deployed on the Arcana Testnet, they will see a warning on the main 'Token Assets' tab of the built-in Arcana wallet UI. The warning indicates that the app is deployed on the Testnet.

There is no such warning displayed in the Arcana wallet UI when the app is deployed on the Mainnet.

How does a developer migrate an app deployed on the Arcana Testnet to Mainnet?

See [how to migrate an app deployed on Testnet to Mainnet](../../deploy/migrate-testnet-mainnet/) for details.

Are there any configuration changes that must be done when migrating an app deployed on Testnet to the Mainnet?

Yes. Following are the configuration changes required for migrating app deployment from the Testnet to the Mainnet:

**1. Create a Mainnet Configuration Profile**: To deploy the app on Mainnet, developers need to first create a Mainnet configuration profile by either copying the Testnet profile or creating a fresh one from scratch.

**2. Redirect URI**: After creating the 'Mainnet' profile, developers **must** also update the social login provider 'Redirect URI' settings via the respective provider developer consoles or dashboards.

Copy the 'Redirect URI' displayed for the 'Mainnet' profile and update this value in the social login provider's developer console. For e.g., for Google, update the Redirect URI in the Google Developer Console. [Learn more...](../../setup/config-social/google-oauth/)

**3. Update Client ID**: The Client ID specified as the input parameter while integrating the app with the Arcana Auth SDK is the one assigned to the default Arcana Testnet profile. This works fine when the app is deployed on the Testnet. For deploying the app on the Mainnet, the developer must create the Mainnet configuration profile and carefully copy the newly assigned Mainnet Client ID. Use the Mainnet Client ID as the input parameter while integrating the app with the Arcana Auth SDK. This will ensure that the app gets deployed on the Mainnet and not on the Testnet. For details, see [how to migrate an app deployed on the Testnet to the Mainnet.](../../deploy/migrate-testnet-mainnet/)
