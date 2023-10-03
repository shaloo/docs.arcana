---
alias: configure-wallet-chains
title: 'Manage Chains'
description: 'Web3 app developers can update the pre-configured list of supported blockchains shown out of the box in the wallet and assign one of the chains as the default chain.'
arcana:
  root_rel_path: ../..
---

# Manage Chains

The {{config.extra.arcana.product_name}} product supports EVM-compatible blockchain networks. A set of [[state-of-the-arcana-auth#supported-blockchains|pre-configured chains]] is available by default and displayed in the {{config.extra.arcana.dashboard_name}} and the {{config.extra.arcana.wallet_name}} UI. Ethereum is selected as the default chain.

This default pre-configured list of displayed chains can be updated by the developers via the {{config.extra.arcana.dashboard_name}} or programmatically. Authenticated users have limited capability to update this list only for the current login session.

!!! caution "User Chain Settings"

      Authenticated Web3 app users can access {{config.extra.arcana.wallet_name}} in the app. The built-in UI allows users to modify the default chain setting or add a new one. User-made changes to the blockchain list only last for the current session; they don't persist after logout. However, any extra chains added by the app developer remain across user logins.

## Prerequisites

* Make sure you can access the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* The [[configure-auth| app must be registered]] using the [[concept-arcana-dashboard| {{config.extra.arcana.dashboard_name}}]].

## Steps

*Managing the displayed list of pre-configured chains for authenticated users in {{config.extra.arcana.wallet_name}} UI within the Web3 app is simple!*

Log in to the {{config.extra.arcana.dashboard_name}} and click your registered app entry from the 'Manage Apps' screen. Click **Configure** in the LHS navigation area. Select **Chain Management** to configure the default subset of supported chains.

![Chain Management Nav](/img/an_db_chains_mngt_nav.png){.an-screenshots}

The chain configuration UI is displayed:

![Chain Management Settings](/img/an_db_chain_mngt_options.png){.an-screenshots}

The same list appears in {{config.extra.arcana.wallet_name}} UI for users of Web3 apps integrated with {{config.extra.arcana.sdk_name}}. The **Ethereum Mainnet** set as the default chain.

<img src="/img/an_db_default_subset_wallet_chains.gif" width="30%" alt="Default subset of chains in wallet UI"/>

### Step 2: Edit Default Chain

To switch the default chain from Ethereum to another one in the list simply select the new chain in the {{config.extra.arcana.dashboard_name}}, click "..." ellipses and select the chain as the default. The figure below illustrates Polygon as the default chain instead of Ethereum.

![Change default chain](/img/an_db_set_default_chain.gif){.an-screenshots}

### Step 3: Add Chain

Click **Add Chain** button on the top right of the 'Chain Management' dashboard screen. Any newly added chain is automatically set as the default chain displayed in the wallet UI.

{% include "./text-snippets/add_chain_specs.md" %}

![Configure new chain](/img/an_db_configure_new_chain.gif){.an-screenshots}

!!! caution "Supported Chains"

      Only EVM-compatible chains can be added by the developers in the [[state-of-the-arcana-auth#supported-blockchains|pre-configured list]] of displayed blockchain networks. To learn more, see [[state-of-the-arcana-auth#supported-blockchains|supported blockchains]].

Once you click **Save**, the newly added chain will be displayed in the dashboard and also shown in the wallet UI once a user logs into the app.

![Updated chain list](/img/an_db_view_updated_chain_list_polygon.png){.an-screenshots}

![Display new chain in wallet](/img/an_db_config_new_chain_show_wallet.gif){ .width_35pc}

**That's all!** :material-party-popper:

## What's Next?

Besides managing the pre-configured list of chains via the {{config.extra.arcana.dashboard_name}} configuration settings, a developer can also add new chains programmatically to the wallet via the `wallet_addEthereumChain` method. To do that, the app must be integrated with the {{config.extra.arcana.sdk_name}} and the `AuthProvider` initialized before calling any of the SDK functions. For details refer to the [[web-auth-usage-guide#wallet_addethereumchain|{{config.extra.arcana.sdk_name}} Usage Guide]].

## See also

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
