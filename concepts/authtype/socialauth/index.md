# Authentication Providers

Apps integrating with the Arcana Auth SDK can use the built-in [plug-and-play login UI](../../plug-and-play-auth/) or a [custom login UI](../../custom-login-ui/) to onboard users through any of the supported authentication providers:

- Social Providers
- Custom IAM Providers

## Social Providers

The Arcana Auth SDK supports popular Web2 [social login](../../social-login/) providers for onboarding users and verifying their identities.

- Apple
- Cognito
- Discord
- Firebase
- GitHub
- Google
- Steam
- Telegram
- Twitch
- Twitter

## Custom IAM Providers

The following IAM providers are supported for user authentication:

- Cognito
- Firebase

These third-party IAM providers may require separate configuration of the underlying user authentication mechanisms such as social logins, OpenID, etc.

Passwordless Login

Besides these providers, users can log into a Web3 app in a passwordless manner by verifying the OTP received over email. Passwordless login is enabled by default in all apps using the Arcana Auth SDK.
