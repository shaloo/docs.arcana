# Telegram Setup

These are the configuration instructions to onboard users in Web3 apps via Telegram.

Only App-Specific Keys

Global Keys option is not supported for apps that use Telegram as the social login provider.

### Prerequisites

- Log in to the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- [Register](../../config-auth/register-app/) the app by creating a new app entry in the dashboard.

Client ID

A default [Testnet configuration profile](../../../deploy/deploy-app/) is associated with every registered app. A unique **Client ID** is assigned for the Testnet profile. Only passwordless login is enabled by default.

A newly registered app can be deployed at the Arcana Testnet. Developers must create a Mainnet configuration profile to [deploy it on the Mainnet](../../../deploy/migrate-testnet-mainnet/). A new, unique Client ID is assigned to the Mainnet profile.

Unique App Identifier: ClientID

## App-specific Keys

Follow these steps to configure the **Social Auth** settings and enable user onboarding via Telegram. It requires developers to use the Arcana Developer Dashboard and the [Telegram BotFather](https://telegram.me/BotFather).

### 1. Get Telegram Bot Token

Use Telegram app, go to [Telegram BotFather](https://telegram.me/BotFather). Use `/newbot` to create a bot corresponding to the Web3 app that you wish to integrate with the Arcana Auth SDK. Ignore bot creation if you already have one. Go to your Bot by selecting `/mybots`.

Use `/token` command to generate **Telegram token** for the selected bot. This token is used to access the HTTP API. Keep your token secure and store it safely, it can be used by anyone to control your bot.

Add Bot Token

Note the token value, it will be required in the next step while completing the app configuration using the Arcana Developer Dashboard.

**Link App Domain to Bot**

Once you have chosen a bot, send the `/setdomain` command to @Botfather to link your website's domain to the bot. This is required for successful redirect to your app after the user logs in via Telegram. [Learn more...](https://core.telegram.org/widgets/login)

Link App Domain

### 2. Update Social Auth

Go to the Arcana Developer Dashboard. Click **Configure > Social Auth** and select Telegram icon to update settings. Paste the **Token** assigned by @BotFather in the 'Bot Token field.

Add Telegram Bot Token

Save the **Social Auth** settings.

*You are all set with the Telegram configuration.*

Plug-and-play login feature not supported for Telegram

The [plug and play feature](../../../concepts/plug-and-play-auth/) of the Arcana Auth SDK does not support social login via Telegram. Developers must build a custom login UI and add code to onboard users. For details, see [onboarding users via Telegram and custom login UI](../../../auth/onboard/vanilla/custom-ui/build-social/telegram-oauth/).
