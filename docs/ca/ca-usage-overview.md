---
alias: ca-usage-overview
title: 'Overview'
description: 'CA SDK Use Model.'
arcana:
  root_rel_path: ..
---

# Overview

Chain Abstraction allows Web3 app users to spend assets on **any** chain through [[concept-unified-balance|unified balance]]. 

Web3 app developers can enable unified balance for app users by integrating the app with the **{{config.extra.arcana.ca_sdk_name}}**.

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