```js title="auth-wagmi-example/utils/wagmi_client.js" hl_lines="1-2 7-19 35-37"

import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { polygon, polygonMumbai } from "wagmi/chains";
import { configureChains, createClient, Chain } from "wagmi";
import { publicProvider } from "wagmi/providers/public";

/* Using Custom UI for user login via Google */
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth,        
      login:  {
          provider: 'google', //See 'Custom Login UI' section in the documentation for other supported providers.
        } // Optional, specify here during ArcanaConnector instantiation or in the setLogin function
    },
  });
};

// Custom UI Alternative 
// Use setLogin function after creating the connector.

/*
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth             
    },
  });
};

connector.setLogin({
  provider: 'google'
})
*/

...
```
