---
alias: ca-sdk-installation
title: 'Install CA SDK'
description: 'Multiple flavors of the Arcana CA SDK depending upon the app type. Use the correct SDK package for installation. For Web apps, use the CA SDK. For Wagmi apps, use the CA Wagmi SDK.'
arcana:
  root_rel_path: ..
---

# Install {{config.extra.arcana.ca_sdk_name}}

{{config.extra.arcana.company_name}}'s [[concept-ca|Chain Abstraction]] SDK enables [[concept-unified-balance|unified balance]] feature for Web3 app users and lets them spend on any chain.

Web3 app developers must install the appropriate {{config.extra.arcana.company_name}} CA SDK package according to the Web3 app type listed in the table below.

{% include "./text-snippets/ca_sdk_flavors.md" %}

## {{config.extra.arcana.company_name}} CA SDKs

### Web Apps (Vue, Vite, HTML/CSS/JS)

{% include "./code-snippets/casdk_install.md" %}

### Wagmi Apps

{% include "./code-snippets/ca_wagmi_sdk_install.md" %}
