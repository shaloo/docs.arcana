Chain Abstraction allows Web3 app users to spend assets on **any** chain through [unified balance](../../concepts/ca/unified-balance/).

Web3 app developers can enable unified balance for app users by integrating the appropriate **Arcana** CA SDK flavor.

## Integration Flow

```
flowchart LR
    subgraph Integrate [Select SDK for App Type]
    direction LR
      A00(((Start))) --> F00[App Type]
      F00 -- Web App --> G00[Arcana CA SDK]
      F00 -- Wagmi App --> H00[Arcana CA Wagmi SDK]
      G00 & H00 --> I00(Install & Integrate)
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class E00 an-highlight
```

```
flowchart LR
    subgraph Integrate [Integrate SDK with App]
    direction LR
      A00(((Start))) --> F00[Install SDK]
      F00 -- Integrate App --> G00[Initialize SDK]
      G00 --> H00(Call SDK Functions)
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class E00 an-highlight
```

## See Also

- [Chain Abstraction](../../concepts/ca/chain-abstraction/)
- [CA SDK](../../concepts/ca/casdk/)
- [Download Arcana CA SDK](https://www.npmjs.com/package/@arcana/ca-sdk)
