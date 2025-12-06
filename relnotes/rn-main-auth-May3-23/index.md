# Arcana Auth: Release Notes

**Release Date: Apr 19, 2023**

(*Mainnet Update on May 3, 2023*)

The latest release of the Arcana Auth SDK consists of the following components:

- [Arcana Auth SDK v1.0.3](https://www.npmjs.com/package/@arcana/auth/v/1.0.3)
- [Arcana Developer Dashboard](https://dashboard.arcana.network/)
- Arcana wallet UI

No Arcana Auth SDK upgrade required

Note, in the latest Arcana Auth SDK release, there is **no change** in the Arcana Auth SDK package. Developers can continue to use Arcana Auth SDK v1.0.3 release.

## New Product Features

______________________________________________________________________

### Multi-Factor Authentication (MFA)

The latest Arcana Auth SDK provides enhanced wallet security for more robust user authentication through multi-factor authentication. Web3 app users can choose to enable it when they log into an app. Once enabled, it cannot be turned off. For details, see [how Arcana MFA](../../concepts/mfa/) works in apps that integrate with the Arcana Auth SDK.

See the [MFA user's guide](../../user-guides/mfa/mfa-ug/) to learn more about how the app users can enable MFA for their app accounts and use the enhanced wallet security.

### Billing & Invoices

Arcana Auth SDK now supports [billing and invoicing features](../../concepts/billing/) for Arcana Mainnet usage. Developers can use Arcana Developer Dashboard to enter billing information and payment methods and to see any pending invoices or past payment details.

## Product Enhancements

______________________________________________________________________

### Better Login Performance

Users can now log in to Web3 apps even quicker than before with the recent speed boost in the latest Arcana Auth SDK release.

### Wallet Balance Precision

The Arcana wallet UI now displays the wallet balance numeric value with the precision of 4 decimal places instead of 2 earlier.

## Bug Fixes

______________________________________________________________________

- The specified RPC URL for the wallet blockchain was not getting used when `AuthProvider` was instantiated. It is fixed and the specified `chainConfig` values are used instead of the default ones.

  ```
  const auth = new AuthProvider(
    "xar_dev_2cbfe3fc82840d8f4191935e1811b0c2e33619f8",
    {
      network: "dev",
      chainConfig: {
        chainId: CHAIN.ETHEREUM_GOERLI,
        rpcUrl: "https://goerli.blockpi.network/v1/rpc/public "
      },
      alwaysVisible: true,
      position: "right",
      theme: "dark"
    }
  );

  ```

- While deleting an app from the Arcana Developer Dashboard, the developer can now see the app name in the text before confirming the delete operation.

- An issue with creating the Arcana Mainnet configuration profile by copying the Testnet profile due to logo copy failure has been fixed.

- An issue with updating and saving a new blockchain configuration using the wallet UI has been fixed.

- Deleted apps continued to show up in the 'Manage Apps' screen of the Arcana Developer Dashboard. This issue is now fixed.

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

## Use Latest Arcana Auth SDK

______________________________________________________________________

If you have integrated the app with the Arcana Auth SDK v1.0.3 package already, then **you are all set.**

But if you are using an older version of the Arcana Auth SDK prior to v1.0.3 then refer to the [Migration Guides](../../migration/archives/) and upgrade to the Arcana Auth SDK v1.0.3 release.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
