```js title="auth-wagmi-example/utils/wagmi_client.ts" hl_lines="1-2 7-20 36-39"

import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { polygon, polygonMumbai } from "wagmi/chains";
import { configureChains, createClient, Chain } from "wagmi";
import { publicProvider } from "wagmi/providers/public";

/* Using Custom UI for Passwordless user login */
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth,        
      login:  {
          provider: 'passwordless', 
          email: 'abc@example.com' //optional
        } // Optional, specify login details here or during ArcanaConnector instantiation or in the setLogin function
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
  provider: 'passwordless',
  email: 'abc@example.com' //optional
})
*/

...
```
