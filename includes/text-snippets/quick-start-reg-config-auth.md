
Log into the {{config.extra.arcana.dashboard_name}}:

{% include "./text-snippets/db_portal_url.md" %}

In the **Manage Apps** dashboard screen, click the first card and create a new app entry to [[register-app-auth|register app]]. Each app is assigned a unique **{{config.extra.arcana.app_address}}** at registration. The {{config.extra.arcana.app_address}} is required for integrating the app with the {{config.extra.arcana.sdk_name}}.

A default Testnet configuration profile is associated with the registered app. In the **Manage Apps** dashboard screen, select the registered app card and click 'Testnet' configuration settings. Choose **Social Auth** to [[index-configure-auth|configure user onboarding providers]]. Optionally [[configure-gasless|enable gasless transactions in {{config.extra.arcana.wallet_name}}]] to incentivize app users.