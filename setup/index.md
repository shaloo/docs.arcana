## Social Providers

[Apple](config-social/apple-oauth/) [Discord](config-social/discord-oauth/) [GitHub](config-social/github-oauth/) [Google](config-social/google-oauth/) [Steam](config-social/steam-oauth/) [Telegram](config-social/telegram-oauth/) [Twitch](config-social/twitch-oauth/) [Twitter](config-social/twitter-oauth/)

## IAM Providers

[Cognito](config-idm/cognito-oauth/) [Firebase](config-idm/firebase-auth/)

Apps using IAM Providers

Apps usually use Arcana Auth SDK for user onboarding and blockchain transaction signing. Authentication providers must be set up in the Arcana Developer Dashboard before integrating with the SDK.

Some apps might use third-party IAM providers like AWS Cognito for authentication but still use Arcana Auth SDK to access Arcana wallet. The setup is different since third-party IAM providers support authentication verifiers like Google directly.

Developers only need to set up the IAM provider in the Arcana Developer Dashboard. They don't need to configure authentication verifiers that work directly with the IAM providers. Use the IAM provider's console, like Cognito Developer Console, to set up authentication verifiers like Google, not the Arcana Developer Dashboard.

## Other Login Options

[Passkeys](config-auth-passkeys/) [Custom Auth](config-custom-auth/)

Passwordless Login

By default, passwordless login is always available for any application that integrates with the Arcana Auth SDK. Unlike social login providers, the passwordless option is enabled by default and requires no configuration.
