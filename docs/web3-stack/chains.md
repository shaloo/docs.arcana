---
alias: web3-stack-chains
title: 'Chains'
description: 'Chains supported in the Arcana Auth SDKs.'
arcana:
  root_rel_path: ..
---
  
# Chains

The {{config.extra.arcana.wallet_name}} supports transactions on both EVM and non-EVM chains. However, not all supported chains allow gasless transactions. See the {{config.extra.arcana.gasless_sdk_name}} section below for details.

### {{config.extra.arcana.sdk_name}}

{% include "./text-snippets/wallet_supported_networks.md" %}

### {{config.extra.arcana.gasless_sdk_name}}

The {{config.extra.arcana.gasless_sdk_name}} uses Biconomy's gasless infrastructure and allows gasless transactions on the chains supported by Biconomy: {% include "./text-snippets/biconomy/gasless_supported_networks.md" %}.