# Usage & Billing

This guide explains the payment model for using [social login](../social-login/) feature offered by the Arcana Auth SDK in Web3 apps.

## Pricing

Testnet usage is free.

### Mainnet

Each developer account enjoys a promotional free usage tier. Beyond this free tier, usage costs apply to all apps registered with Arcana under a developer account and are invoiced together.

For more details on the current billing rates and free tier limits contact [Arcana support](../../support/).

## Billing Metrics

Arcana Auth SDK monitors app usage with the following metrics:

- **Aggregate App Usage**: This metric tracks the 'Monthly Active Users (MAU)' across all apps registered with Arcana per developer account on the Mainnet. Total MAU data includes free and paid usage.

  Monthly Active Users (MAU)

- **Per App Usage**: This metric monitors the 'Daily Active Users (DAU)' and 'Monthly Active Users (MAU)' for individual apps on the Testnet. Data is also available for Mainnet usage per app.

  Monthly Active Users (MAU)

Testnet Usage is Free

Billing applies only to Arcana Mainnet usage.

## Billing Setup

Using the Arcana Developer Dashboard, developers can configure their Arcana account by providing essential information. Billing requires the following details:

- Organization
- Billing Address Details
- Payment Method

Adding Payment Method

It is a mandatory requirement to enter and save a valid address in your developer account prior to providing payment method details through the Arcana Developer Dashboard.

Once generated, developers can access their billing history and view the current outstanding invoice.

Testnet and Free Tier (Mainnet) Usage

Payment setup isn't needed for Testnet usage or for using the Mainnet's free tier. Web3 apps can integrate with Arcana Auth SDK for Testnet without it. However, after exhausting the free tier, setting up payment is essential for uninterrupted user onboarding on Arcana Mainnet.

## Billing Cycle

Arcana Mainnet usage beyond the free tier is billed **monthly**. Invoices are generated on the last day of each month, summarizing the collective app usage and charges for all apps under a developer account. Access invoice and usage specifics through Arcana Developer Dashboard by clicking on the user icon on the top right and selecting **Invoices**.

View Invoices

## Outstanding Dues

Outstanding dues must be paid in full; partial payments are not accepted.

Invoices factor in all promotional and free-tier MAU usage across registered apps for a developer account. Payment is due upon monthly invoice generation, with a notification sent to the developer. Payment is automatically deducted via the configured method. If payment fails, there's a 21-day grace period, with retry attempts every 7 days. During this period, registered apps function normally. After the grace period, if payment remains unsuccessful, the developer account is suspended, barring user access to registered apps.

Inactivity and non-payment for 3 months **may** result in app deletion and account termination.

## Billing Notifications

For billing notifications, refer to the bell icon on the top right of the Arcana Developer Dashboard screen.

Billing Notifications

The following billing notifications are displayed:

| Event | Notification | Notes | | --- | --- | --- | | Billing | Add card details for processing the payment. | The first time a developer logins, this message is displayed in the notifications section. | | Billing | Invoice for the current month has been generated. | Once the free-tier is over, at the end of every billing cycle, the dues are computed and an invoice is created. Developer is notified of the same. | | Billing | Payment successfully processed for this month. | Once the free-tier is over, monthly invoices are raised and payment automatically deducted from the specified payment method. | | Billing | Payment has been declined. | This notification will be displayed if the specified payment method fails when the invoice dues are processed, or if there are any payment errors due to insufficient funds. |
