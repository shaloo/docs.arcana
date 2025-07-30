# Custom Wallet UI

Developers have two options to enable the embedded, non-custodial Arcana Web3 wallet functionality within the app's context:

- You can use the built-in, ready-to-use Arcana wallet UI *(default)*
- Alternatively, you have the choice to create a custom wallet user interface

You must decide to implement the custom wallet UI **before** installing and integrating with the Arcana Auth SDK. At the time of registering the app through Arcana Developer Dashboard, enter the app name, default chain and then select *Wallet UI Mode* value as `Custom UI` instead of the `Arcana UI`. In this case, the onus of creating user interface for signing blockchain transaction, displaying the user's account information, Web3 assets such as tokens, NFTs, etc., lies with the developer.

One time setting

Custom Wallet UI option is selected at the time of registering the app and cannot be reverted later.

See [how to enable custom wallet UI](../../auth/custom-wallet-ui/) during app registration before integrating with the Arcana Auth SDK.
