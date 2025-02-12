---
alias: ca-usage-overview
title: 'Overview'
description: 'CA SDK Use Model.'
arcana:
  root_rel_path: ..
---

# Overview

The **{{config.extra.arcana.ca_sdk_name}}** integrates with Web3 apps to enable [[concept-unified-balance|unified balance]] through chain abstraction. 

## Usage

=== "Install & Integrate"
    ```mermaid
    flowchart LR
        subgraph Integrate [Integrate SDK with App]
        direction LR
          A00(((Start))) --> F00[Install SDK]
          F00 -- Integrate App --> G00[Initialize SDK]
          G00 --> H00(Call SDK Functions)
        end

    classDef an-pink stroke:#ff4e9f,stroke-width:0.25rem;
    class E00 an-pink
    ```

## See Also

* [[concept-ca|Chain Abstraction]]
* [[concept-casdk|CA SDK]]
* [Download {{config.extra.arcana.ca_sdk_name}}]({{config.extra.arcana.ca_sdk_download_url}})