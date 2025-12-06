# Supported Chains and Tokens

The Arcana CA SDK supports [unified balance](../../concepts/ca/unified-balance/) and [chain-abstracted transactions](../../concepts/ca/chain-abstraction/) for the chains and tokens\* listed below.

To execute a chain-abstracted transaction, you need enough unified balance of the token type on the source chain. This balance must cover both the gas fee and the transaction amount on the destination chain.

\* *Every chain may not support all tokens. The list of supported chains and tokens may differ for the Coral and the Folly testnet. The chains supported by the SDK and those supported in the standalone, CA wallet used in the demos may not always be the same.*

## Chains and Tokens

Supported Tokens

- USDC and USDT tokens are supported if available on the chain. We support Circle-issued tokens if Circle is present on chain, canonical otherwise.
- ETH is supported as an ERC-20 token if it's managed or issued by the operator or leader of the chain.
- The native token for a chain is always supported.

### Ethereum

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |

| Tokens | Folly | | --- | --- | | ETH | ✅ | | USDC | ✅ |

### Optimism

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |

| Tokens | Folly | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |

### BSC

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ | | BNB | ✅ |

### Polygon

| Tokens | Coral | | --- | --- | | USDC | ✅ | | USDT | ✅ | | POL | ✅ |

| Tokens | Folly | | --- | --- | | USDC | ✅ | | POL | ✅ |

### Kaia

| Tokens | Coral | | --- | --- | | USDT | ✅ | | KAIA | ✅ |

### Base

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |

| Tokens | Folly | | --- | --- | | ETH | ✅ | | USDC | ✅ |

### Fuel

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |

No Fuel support in `ca-wagmi` SDK

The Arcana CA Wagmi SDK doesn't support **Fuel** blockchain yet. Chain abstraction works for other [supported chains and tokens](./) in Wagmi-based Web3 apps.

### Arbitrum

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |

| Tokens | Folly | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |

### Avalanche

| Tokens | Coral | | --- | --- | | USDC | ✅ | | USDT | ✅ | | AVAX | ✅ |

### Sophon

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ | | SOPH | ✅ |

### Scroll

| Tokens | Coral | | --- | --- | | ETH | ✅ | | USDC | ✅ | | USDT | ✅ |
