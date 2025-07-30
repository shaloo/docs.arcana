# Passkeys Auth Setup

Learn how to configure user login via [Passkeys](../../concepts/authtype/auth-passkeys/) for apps that integrate with the Arcana Auth SDK and allow authenticated users to sign blockchain transactions.

## Prerequisites

To log into the Arcana Developer Dashboard, you’ll need an account with a supported social login or use email for passwordless access.

- Google
- GitHub
- Twitch
- Discord

Use <https://dashboard.arcana.network> to log in with one of the available options.

Developer Dashboard Login Page

Aggregate Login

The [aggregate login](../../concepts/aggregatelogin/) feature in the Arcana Auth SDK merges login identities from social providers into one Arcana account if the email ID is the same across these providers. Developers can log into the Arcana Developer Dashboard using any supported provider and still access the same Arcana account and app settings.

## 1. Register App

Log into the Arcana Developer Dashboard to register the app. Create a new app. Jump to the next section if the app is already registered.

## 2. Configure Passkeys

In the 'Manage Apps' screen, click **Configure** in the LHS navigation. Select **Social Auth** and scroll down until you see the section **Passkeys** on the RHS.

Navigate to Passkey Auth Settings

Specify the **Domain** of the [relying party](../../concepts/authtype/auth-passkeys/#domain). **Save** the Passkeys settings in the dashboard.

Specify Domain

## What's Next?

After configuring passkeys based login, developers must [integrate the Web3 app](../../auth/custom-auth/) with the Arcana Auth SDK, then use `loginWithPasskeys` to onboard users securely via passkey. Use the `AuthProvider` to issue JSON/RPC functions and Web3 wallet operations from within the app context for authenticated users.

## See Also

- [Dashboard User's Guide](../config-dApp-with-db/)
- [How do passkeys work?](../../concepts/authtype/auth-passkeys/)
