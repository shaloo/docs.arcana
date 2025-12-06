# Arcana Auth-Core SDK

The Arcana Auth-Core SDK is a client-side tool for developers to assign Web3 keys to authenticated users for signing blockchain transactions. Use this SDK instead of the Arcana Auth SDK for key assignment or when building a completely whitelisted solution.

When initializing Arcana Auth-Core SDK, the developer sets the redirect URL. The SDK performs OAuth2 login with the chosen provider and returns the login token from the provider. At the specified redirect URL, the developer uses this token to fetch the user's private key.

Limited Feature SDK

The Arcana Auth-Core SDK has limited capabilities as compared to the Arcana Auth-Core SDK:

- No built-in plug-and-play login UI feature
- No built-in Arcana wallet UI
- No support for Global keys, only app-specific keys (default) are allowed.
- No support for enhanced wallet security via MFA.
