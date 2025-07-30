# Arcana Auth: Release Notes

**Release Date: July 12, 2023**

The latest release of the Arcana Auth SDK product consists of the following components:

- Arcana Auth SDK

  - [`auth`](https://www.npmjs.com/package/@arcana/auth)
  - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)
  - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)
  - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)

- [Arcana Developer Dashboard](https://dashboard.arcana.network/)

- [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

## Enhancements

______________________________________________________________________

### Third-party Cookies

Earlier, the Arcana Auth SDK had issues if the browser incognito mode was used or if third-party cookies were disabled in the browser settings. The latest enhancements include support for both these cases.

Also, it is no longer required for a user to re-login in case the browser is refreshed in a 30-minute window since the last login. Developers can use the `canReconnect` and `reconnect` methods of the `AuthProvider` to enable this automatic re-login for the user, in a secure manner.

See [usage guide](../../auth/auth-usage-guide/#usage) for more details.

### Support for Wagmi 1.x.y and Viem

The [`auth-wagmi` package](https://www.npmjs.com/package/@arcana/auth-wagmi) is now upgraded to version 2.0.0 and supports the latest Wagmi release v1.3.9 which uses Viem. For details, see [Wagmi 1.x.y migration guide](https://wagmi.sh/core/guides/migrate-from-v1-to-v2) and [sample integration code 'sample-auth-rainbow-viem'](https://github.com/arcana-network/auth-examples).

### Wagmi/RainbowKit App Connect

When using the `auth-wagmi` package for RainbowKit apps, it is recommended that developers specify the `name` field as 'Login with Email/Social' and put the Arcana logo as shown in the code below.

utils/getArcanaAuth.js

```
import { AuthProvider } from "@arcana/auth";

let auth = null;

export const getAuthProvider = () => {
  if (!auth) {
    auth = new AuthProvider(
      "xar_dev_19527cdf585cd31d0bd06bfc1b008accea781404"
    );
  }
  return auth;
};

```

utils/wallet.js

```
import { getAuthProvider } from "./getArcanaAuth";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { newArcanaLogo } from "./logo";

export const ArcanaRainbowConnector = ({ chains }) => {
  return {
    id: "arcana-auth",
    name: "Login with Email/Social",
    iconUrl: newArcanaLogo,
    iconBackground: "#101010",
    createConnector: () => {
      const connector = new ArcanaConnector({
        chains,
        options: {
      auth: getAuthProvider(),
        }
      });
      return {
        connector,
      };
    },
  };
};

```

Sample App: RainbowKit

For more details, see [sample RainbowKit app integration with Auth](https://github.com/arcana-network/auth-wagmi/tree/main/examples/rainbowkit-integration).

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides.

Check out the [sample dApp integration examples](https://github.com/arcana-network/auth-examples) for various dApp types, wallet connectors and frameworks.

## Upgrade to the Latest Arcana Auth SDK

______________________________________________________________________

If you have integrated the app with the Arcana Auth SDK v1.0.11 package you can choose to either continue to use it with the latest Arcana Auth SDK release.

To enable Steam or Firebase authentication, you must upgrade to the release v1.0.5 or higher. To upgrade, follow the [migration guide](../../migration/main-auth-v1.0.6-migration/).

Please note, in case are using an older version of the Arcana Auth SDK prior to v1.0.11 then refer to the appropriate [Migration Guides](../../migration/archives/) and upgrade to the latest version.

## Previous Releases

See the [release notes archive](../archives/) for details.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
