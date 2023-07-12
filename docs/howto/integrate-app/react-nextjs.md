---
alias: integrate-react-nextjs-app
title: 'Integrate React/NextJS App'
description: 'Integrate Web3 apps built using the React/NextJS frameworks with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

# Integrate React/NextJS App

In this guide, you will learn how to integrate a React/NextJS application with the [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) by leveraging the Auth React wrapper. The Auth React wrapper utilizes React Hooks for setting the Auth component props with requisite initialization values needed for configuring the {{config.extra.arcana.sdk_name}} and the {{config.extra.arcana.wallet_name}}.

## Prerequisites

* Developers need to first log into the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* Use the {{config.extra.arcana.dashboard_name}} to [[configure-auth|register and configure the app]] before integrating it with the {{config.extra.arcana.sdk_name}}. 

* Click on the *Social Auth* tab in the {{config.extra.arcana.dashboard_name}}. Configure and select one or more [[state-of-the-arcana-auth#user-onboarding-options|supported authentication providers]] for onboarding the app users.

    !!! tip "Configure Authentication Providers"

          You may be required to configure additional provider details for different authentication providers. In the case of Google, the developer must use Google Developer Console to set up the app and generate a Google assigned [[config-auth-google|client ID for Google OAuth]]. This Google ClientID will be configured in the {{config.extra.arcana.dashboard_name}} **Social Auth** settings before integrating the app.

          For details, see [[index-configure-auth|how to configure authentication providers]].

* Save the **{{config.extra.arcana.app_address}}** assigned to the app displayed in the {{config.extra.arcana.dashboard_name}}. It is required while integrating the app with the {{config.extra.arcana.sdk_name}} and creating the `AuthProvider`. 

## Steps

*Integrating a React/NextJS app with the {{config.extra.arcana.sdk_name}} is simple!*

### Step 1: Install `{{config.extra.arcana.auth_sdk_pkg_name}}`

To integrate with the {{config.extra.arcana.product_name}} React components, install the {{config.extra.arcana.sdk_name}} via the `{{config.extra.arcana.auth_sdk_pkg_name}}` package.

{% include "./code-snippets/auth_install.md" %}

### Step 2: Install `{{config.extra.arcana.react_sdk_pkg_name}}`

Next, install the Auth React component wrapper via the `{{config.extra.arcana.react_sdk_pkg_name}}` package. 

{% include "./code-snippets/auth_react_install.md" %}

### Step 3: Update `index.js`

A typical React application consists of `index.js` and `App.js` files. First update the `index.js` file. 

Import the `AuthProvider` from the `{{config.extra.arcana.auth_sdk_pkg_name}}` package. Instantiate the `AuthProvider` and get a Web3 provider. 

Next, import the `ProviderAuth` component from the `{{config.extra.arcana.react_sdk_pkg_name}}` package and render it using the Web3 provider as props.

```js title="index.js"
import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { AuthProvider } from "@arcana/auth";
import { ProvideAuth } from "@arcana/auth-react";
import App from "./App";

const rootElement = document.getElementById("root");
const root = createRoot(rootElement);
const provider = new AuthProvider(
  "xar_dev_5fd5338ee82834d59eee58f37b676bdabdfa41e9", //required
); //See SDK Reference Guide for optional parameters

root.render(
  <StrictMode>
    <ProvideAuth provider={provider}>
      <App />
    </ProvideAuth>
  </StrictMode>
);
```

### Step 4: Update `App.js`

Finally to integrate the app with the {{config.extra.arcana.sdk_name}}, update the `App.js` file by importing `Auth` and `useAuth` from the `{{config.extra.arcana.react_sdk_pkg_name}}` package, rendering it in the `App` function. You can configure the wallet layout settings using `Auth` component props. 

Once the user logs in successfully set the route to the post-login page in your application.

```js title="App.js"
import { Auth, useAuth } from "@arcana/auth-react";

const onLogin = () => {
  // Route to authenticated page
}
function App() {
  const auth = useAuth();
  return (
    <div>
      {auth.loading ? (
        "Loading"
      ) : auth.isLoggedIn ? (
        <p>Logged In</p>
      ) : (
        <div>
          <Auth externalWallet={true} theme={"light"} onLogin={onLogin}/>
        </div>
      )}
    </div>
  );
}

export default App;
```

That is all! :material-party-popper:

The React/Next.js app is now successfully integrated with the {{config.extra.arcana.sdk_name}} using the Auth-React wrapper. Refer to the [Auth Examples](https://github.com/arcana-network/auth-examples) for working integration examples.

## What's Next?

After integrating an app with the {{config.extra.arcana.sdk_name}}, developers can add code to [[index-onboard-users|onboard users]] and [[index-arcana-wallet|enable Web3 wallet operations]] for authenticated users to sign blockchain transactions.

## See also

* [[react-code-sample|React app integration]]
* [[index-onboard-users|Onboard Users]]
* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
