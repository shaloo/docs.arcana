---
alias: ca-sdk-installation
title: 'Install CA SDK'
description: 'Multiple flavors of the Arcana CA SDK depending upon the app type. Use the correct SDK package for installation. For Web apps, use the CA SDK. For Wagmi apps, use the CA Wagmi SDK.'
arcana:
  root_rel_path: ..
---

# Install {{config.extra.arcana.ca_sdk_name}}

{{config.extra.arcana.company_name}} [[concept-chain-abstraction|chain abstraction]] unified balance feature is available for supported [[ca-stack#app-types|app types]]. Install and use the appropriate {{config.extra.arcana.company_name}} SDK packages for your app type.

{% include "./text-snippets/ca_sdk_flavors.md" %}

## {{config.extra.arcana.company_name}} CA SDKs

### Web Apps (Vue, Vite, HTML/CSS/JS)

{% include "./code-snippets/casdk_install.md" %}

### Wagmi Apps

{% include "./code-snippets/ca_wagmi_sdk_install.md" %}