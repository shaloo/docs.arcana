---
alias: concept-config-profile
title: 'Configuration Profiles'
description: 'Two types of configuration profiles are associated with each registered app, testnet and mainnet. Default is the Testnet profile.'
arcana:
  root_rel_path: ..
---

# Configuration Profiles

A configuration profile stores the {{config.extra.arcana.sdk_name}} usage settings for social login and wallet experience. Each registered app has two profiles:

* Testnet
* Mainnet

Use {{config.extra.arcana.sdk_name}} to view and update these profiles. By default, new apps use a Testnet profile. To create a Mainnet profile, you can either:

* Copy the Testnet profile
* Create a new Mainnet profile

Each app gets one unique {{config.extra.arcana.app_address}} per profile, one for Testnet and one for Mainnet.

When integrating a Web3 app with {{config.extra.arcana.sdk_name}}, specify the Testnet {{config.extra.arcana.app_address}} or Mainnet {{config.extra.arcana.app_address}} based on deployment. Note that wallet addresses will change when switching between Testnet and Mainnet profiles.