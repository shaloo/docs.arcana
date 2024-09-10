# User Login with Google

In this guide, you will learn how a {{page.meta.arcana.app_type}} app integrated with the {{config.extra.arcana.sdk_name}} can easily onboard users via custom login UI and Google as the authentication provider.

## Prerequisites

* Make sure you can access the  {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* Use the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) to [[register-app-auth|register the app]] and obtain a unique {{config.extra.arcana.app_address}} required for integrating the app with the {{config.extra.arcana.sdk_name}}.

* Carefully [[config-auth-google|follow the instructions to configure Google]] as the authentication provider.
  
* Use the appropriate integration method as per the app type and [[integrate-vanilla-app|integrate the app]] with the {{config.extra.arcana.sdk_name}} before accessing the user onboarding function of the {{config.extra.arcana.sdk_name}}.
    
## Steps

*Using Google to onboard users in a Web3 app that is integrated with the {{config.extra.arcana.sdk_name}} is simple!*

Just a single line of code!

## Step 1: Call `loginWithSocial` function

Make sure that all the prerequisites listed above are met. The app should be successfully registered, configured, and integrated with the {{config.extra.arcana.sdk_name}}, before adding code to onboard users via Google.

{% include "./code-snippets/auth_social_login.md" %}

Check if a user is logged in:

{% include "./code-snippets/auth_isloggedin.md" %}

Add code in the app to log out an authenticated user:

{% include "./code-snippets/auth_logout.md" %}

**That is all!**  :material-party-popper:

The Web3 app is all set for onboarding users via Google. 

{% include "./text-snippets/jwt_token.md" %}
     
## What's Next?

Authenticated users can instantly access the in-app {{config.extra.arcana.wallet_name}} UI for signing blockchain transactions. Use the `AuthProvider` EIP-1193 standard Ethereum provider to call JSON/RPC functions and Web3 wallet operations in the app. [[evm-web3-wallet-ops|Learn more...]]

## See also

* [Authentication Types]({{page.meta.arcana.root_rel_path}}/concepts/authtype/index.md)
* [[web-auth-error-msg|Handling authentication errors]]
* [Auth Examples](https://github.com/arcana-network/auth-examples)
