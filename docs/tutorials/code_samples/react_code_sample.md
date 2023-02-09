---
slug: /reactcodesample
id: idreactcodesample
sidebar_custom_props:
  cardIcon: 📃 
arcana:
  root_rel_path: ../..
---

# Using React Auth Wrapper

You need to first install the Arcana Auth SDK and Auth React component wrapper and configure user onboarding options using the Arcana Dashboard.

To integrate the Arcana Auth SDK and use the Auth React wrapper component, you need to update the `index.js` and `App.js` files as listed below:

```js title="index.js" hl_lines="5 6 11 15 17"
import { StrictMode } from "react";
import { createRoot } from "react-dom/client";

import App from "./App";
import { AuthProvider } from "@arcana/auth";
import { ProvideAuth } from "@arcana/auth-react";

const rootElement = document.getElementById("root");
const root = createRoot(rootElement);

const provider = new AuthProvider(process.env.REACT_APP_ARCANA_APP_ID); //See SDK Reference Guide for optional parameters

root.render(
  <StrictMode>
    <ProvideAuth provider={provider}>
      <App />
    </ProvideAuth>
  </StrictMode>
);
```

```js title="App.js" hl_lines="2 6 24"
import React from "react";
import { Auth } from "@arcana/auth-react";

export default function App() {
  const [theme, setTheme] = React.useState("light");
  const [externalWallet, showExternalWallet] = React.useState(false);
  return (
    <Wrapper>
      <LeftSection>
        <Section>
          <Heading>Theme</Heading>
          <Button onClick={() => setTheme("light")}>Light mode</Button>
          <br />
          <Button onClick={() => setTheme("dark")}>Dark mode</Button>
        </Section>
        <Section>
          <Heading>External Wallet</Heading>
          <Button onClick={() => showExternalWallet(true)}>Show</Button>
          <br />
          <Button onClick={() => showExternalWallet(false)}>Hide</Button>
        </Section>
      </LeftSection>
      <RightSection>
        <Auth externalWallet={externalWallet} theme={theme} />
      </RightSection>
    </Wrapper>
  );
}
```
## See Also

* [Auth SDK Errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)
* [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}