# Why Auth SDK?

At Arcana, our mission is to build an ecosystem of components that enables developers to build Web3 applications quickly, securely, and with complete data privacy and ownership for application users.

This is totally unlike Web2, where user data is owned by the applications and corporations. Web2 users have no control over who sees or accesses their data.

## Privacy-Preserving Applications

If you are building Web3 apps that require complete data privacy, and security, the Arcana SDKs does the heavy lifting for you to onboard users using popular authentication providers and passwordless options. It allows authenticated users to sign blockchain transactions, manage tokens, and more without having to bother about the Web3 secret and key management complexities.

At Arcana, we take security, privacy, and ownership seriously. We are actively working towards tracking and plugging in any vulnerabilities in our solution.

Take a quick look at the overview of the [architecture and key components](../auth-architecture/) of the {{ no such element: dict object['product_name'] }} and see [Arcana Network Technical White Paper v1.0](https://www.notion.so/arcananetwork/Arcana-Technical-Docs-a1d7fd0d2970452586c693e4fee14d08) for implementation details.

## Build Web3 Apps Faster

As a Web3 app developer, you can focus on core application logic while delegating essential tasks related to end-user onboarding, signing blockchain transactions, and managing the security and privacy of user access to the {{ no such element: dict object['product_name'] }} product.

### 1. Onboard App Users Effortlessly

Developers can plug in the popular Web2 sign-up/login mechanisms in the Web3 apps and lower the barrier to entry for Web3 users.

To onboard users in a Web3 app, the Arcana Auth SDK allows developers to select and configure user authentication providers for the app. Developers can choose the default, built-in plug-and-play user authentication UI via `connect` function of the Arcana Auth SDK. Or, they can customize and build a custom user authentication UI, add a few lines of code to call `loginWithSocial`, `loginWithLink`(deprecated), `loginWithOTPStart` and `loginWithOTPComplete` functions to onboard users.

Read more about the [plug-and-play feature](../../../concepts/plug-and-play-auth/), and [how to onboard users](../../onboard/vanilla/use-plug-play-auth/) via the built-in, plug-and-play login UI or [custom login UI](../../onboard/vanilla/custom-ui/build-pwdless-auth/).

Before you can integrate an app with the Arcana Auth SDK, developers must use the Arcana Developer Dashboard and configure onboarding options and user experience for signing blockchain transactions. Learn about [authentication providers](../../../concepts/authtype/), and [how to configure authentication providers](../../../setup/config-auth/) using the Arcana Developer Dashboard.

### 2. Sign blockchain transactions securely

Allow authenticated Web3 application users to securely sign blockchain operations without bothering about managing secrets and keys. No centralized authority manages user keys in the {{ no such element: dict object['product_name'] }} DKG subsystem. Use the embedded, non-custodial Arcana wallet provided by the Arcana Auth SDK to let the authenticated users review and sign blockchain transactions.

Read more about the [Arcana wallet features](../../../concepts/anwallet/) and [how to transact using the Arcana wallet](../../web3-ops/evm/). Check out the [Arcana wallet User Guide](../../../user-guides/wallet-ui/) to learn more about various Web3 wallet operations that can be accessed by the application users.

## Flexibility & Choice

Tailor the user experience for your Web3 applications as per your use case and target audience. Learn more about the \[\[use-cases|{{ no such element: dict object['product_name'] }} Use Cases\]\].

## See Also

- [Social Login Demo App](https://demo.arcana.network)
- [Arcana Auth SDK Usage Guide](../../auth-usage-guide/)
- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)
