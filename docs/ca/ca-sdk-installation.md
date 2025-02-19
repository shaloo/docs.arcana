---
alias: ca-sdk-installation
title: 'Install CA SDK'
description: 'Multiple flavors of the Arcana CA SDK depending upon the app type. Use the correct SDK package for installation. For Web apps, use the CA SDK. For Wagmi apps, use the CA Wagmi SDK.'
arcana:
  root_rel_path: ..
---

# Install {{config.extra.arcana.ca_sdk_name}}

{{config.extra.arcana.company_name}} [[concept-ca|chain abstraction]] unified balance feature is available for any Web3 app. Install and use the appropriate {{config.extra.arcana.company_name}} SDK package according to your Web3 application type listed in the table below.

{% include "./text-snippets/ca_sdk_flavors.md" %}

## {{config.extra.arcana.company_name}} CA SDKs

### Web Apps (Vue, Vite, HTML/CSS/JS)

{% include "./code-snippets/casdk_install.md" %}

### Wagmi Apps

{% include "./code-snippets/ca_wagmi_sdk_install.md" %}