```js title="auth-wagmi-example/utils/wagmi_client.ts" hl_lines="17-26"

import { ArcanaConnector } from "@arcana/auth-wagmi";
import { AuthProvider } from "@arcana/auth";
import { polygon, polygonMumbai } from "wagmi/chains";
import { configureChains, createClient, Chain } from "wagmi";
import { publicProvider } from "wagmi/providers/public";

const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
    auth
    },
  });
};

const { chains, provider } = configureChains(
  [polygon, polygonMumbai],
  [publicProvider()]
);

export const wagmiClient = createClient({
  autoConnect: true,
  connectors: [connector(chains)],
  provider,
});
```
