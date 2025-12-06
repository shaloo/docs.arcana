# Testnet Configuration Profile

Each registered app is associated with Testnet and Mainnet [configuration profiles](../../concepts/config-profiles/). By default, only the Testnet profile is active. See [how to create Mainnet profile](../migrate-testnet-mainnet/) for app deployment on the Mainnet.

## App Deployment: Testnet

You can view or update the default Testnet configuration profile in the Arcana Developer Dashboard. Copy the unique Client ID assigned to the apps' Testnet profile. Integrate the app with the Arcana Auth SDK by creating a new AuthProvider using this Client ID.

```
import {AuthProvider} from "@arcana/auth";

const provider = new AuthProvider(
  "xar_test_87f34a9c7879cd4b726ba36a99e164837d70143a", {  // testnet Client ID
  // network: 'testnet',  // optional
  chainConfig: {
    chainId: '80002',      // selected chain in the wallet network dropdown UI
    rpcUrl: 'https://rpc.ankr.com/polygon_amoy',  // RPC URL of the selected chain in the wallet network dropdown UI
  },
  alwaysVisible: true,
  setWindowProvider: true,
  debug: true,
  position: 'right',
  theme: 'dark',
});

```

```
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

```

Testnet Client ID

Note that the user's wallet address is different when the same app is deployed on Testnet and Mainnet. Wallet banner highlights Testnet use.

Testnet Wallet Address
