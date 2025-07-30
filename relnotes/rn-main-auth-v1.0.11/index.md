# Arcana Auth: Release Notes

**Release Date: July 3, 2024**

Version: **v1.0.11**

- Arcana Auth SDK

  - Web Apps
    - [`auth`](https://www.npmjs.com/package/@arcana/auth)
    - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)
    - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)
    - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)
  - Mobile Apps
    - [`arcana_auth_flutter`](https://pub.dev/packages/arcana_auth_flutter)
    - [`auth-react-native`](https://www.npmjs.com/package/@arcana/auth-react-native)
  - Gaming Apps
    - [`arcana-auth-sdk`](https://npm-registry.arcana.network/)

- [Arcana Developer Dashboard](https://dashboard.arcana.network/)

- [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

In addition to the Arcana Auth SDK, now we also provide Arcana Auth-Core SDK for greater flexibility in using authentication features and custom wallet UI support.

- [Arcana Auth-Core SDK](https://www.npmjs.com/package/@arcana/auth-core)

## What is New?

______________________________________________________________________

- Added support for apps that authenticate users via [Custom Auth](../../concepts/authtype/custom-auth/). Learn [how to configure Custom Auth settings](../../setup/config-custom-auth/) in the Arcana Developer Dashboard. Assign keys to authenticated users for signing blockchain transactions in apps that use custom authentication servers by following these [step-by-step instructions](../../auth/custom-auth/).
- New **Login Session Management** feature in the Arcana Developer Dashboard allows developers to specify whether a user session persists if the browser is closed. This enhances user experience and makes session security configurable. Learn more about [supported session types](../../concepts/session_type/) and [configuration settings](../../setup/config-dApp-with-db/#login-session-management).
- The [`UserInfo`structure](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) now provides a [DID identifier](../../concepts/an-did-token/) for user verification. The `loginToken` will be deprecated in a future release.
- Bug fixes and performance enhancements related to user login.

## What has changed?

______________________________________________________________________

This release has **no usage changes**. To migrate to the latest release, re-install and upgrade to the latest SDKs.

## Get Started

______________________________________________________________________

*Ready to dive in?*

Check out:

- Arcana Auth SDK Quick Start Guides

- [Unity Auth Integration Example](https://github.com/arcana-network/auth-unity/tree/main/UnitySampleProject)

- [Integration examples](https://github.com/arcana-network/auth-examples)

## Previous Releases

Are you using an older version of the Arcana Auth SDK?

Refer to the [release notes archive](../archives/) and [Migration Guides](../../migration/archives/). Upgrade to the latest version.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
