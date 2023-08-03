---
alias: concept-gasless-accounts
title: 'Gasless Accounts'
description: "Gasless Accounts allow developers to enable app users to use the app without paying any gas fees for blockchain transactions. The gas fees are paid by the sponsors through the gas tanks set up for the app."
arcana:
  root_rel_path: ..
---

# Gasless Accounts

Gasless Accounts enable app developers to sponsor gas fees for app users. 

Developers can set up one or more gas tanks that are used to sponsor transaction fees. The gasless accounts are **SCW**-type blockchain accounts, unlike the usual **EOA** address. Once a developer chooses to enable gasless accounts for an app and deploy it, they cannot revert back to the EOA-type user accounts.

## How Gasless Works?

Developers must first configure the gasless accounts and only then integrate the app with the {{config.extra.arcana.sdk_name}}. As part of app configuration via the {{config.extra.arcana.dashboard_name}}, developers need to add gas tanks and add credits to the tank. It is important to have sufficient crypto assets to pay gas fees for the app users. Also, developers must select and configure which app operations are sponsored and which ones must be paid by the individual app users through whitelisting of app operations via the {{config.extra.arcana.dashboard_name}}.

Once the apps are deployed, users can log into the app and begin using it without bothering about having funds in their accounts. New Web3 users can simply authenticate using the familiar Web2-like authentication mechanisms and get started with performing blockchain transactions.

NOTE: The text above to be translated to a diagram.

### App Configuration

Developers have the option to configure gasless accounts in {{config.extra.arcana.sdk_name}}. Once a gas tank is set up, the app users are assigned gasless accounts permanently, even if the tanks are deleted. It is crucial to ensure sufficient credit in the enabled gas tanks. If app operations are not whitelisted, users will incur gas fees despite having gasless accounts.

1. Configure Gas Tank(s)
2. Add/Withdraw Gas Tank Credit
3. Whitelist App ops
4. Integrate App with the {{config.extra.arcana.sdk_name}}, add code to onboard users
5. Deploy App

### User Experience

Apps that integrate with {{config.extra.arcana.sdk_name}} can enable gasless accounts for users. The authenticated users gain instant access to {{config.extra.arcana.wallet_name}} and can sign blockchain transactions without needing funds in their gasless accounts.

The gasless account address works across multiple blockchain networks for the app users. As long as the app operations are whitelisted and gas tanks have sufficient credits, users won't have to pay any gas fees.

However, it's essential for app developers to ensure there are enough credits in the gas tanks to cover gas fees for transactions triggered by users. If the gas tanks run empty, users will be required to pay gas fees through their gasless account.