```js title="auth-wagmi-example/utils/wagmi_client.ts" hl_lines="1-2 7-15"

import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { polygon, polygonMumbai } from "wagmi/chains";
import { configureChains, createClient, Chain } from "wagmi";
import { publicProvider } from "wagmi/providers/public";

const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth,
    },
  });
};
...
```
