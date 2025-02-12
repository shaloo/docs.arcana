---
alias: ca-wagmi-quick-start
title: 'Get Started: CA'
description: 'Get Started quickly with Arcana Chain Abstraction and enable unified balance for users in Wagmi apps. Learn how to integrate Arcana CA Wagmi SDK.'
arcana:
  root_rel_path: ..
  app_type: "'CA-Wagmi'"
---

# Get Started: Wagmi Apps

Integrate Web3 apps using the Wagmi framework with the {{config.extra.arcana.ca_wagmi_sdk_name}} to enable unified balance.

!!! an-note "Wagmi Plug & Play Widget"

    The {{config.extra.arcana.ca_wagmi_sdk_name}} supports a plug-and-play UI modal that displays the unified balance within the Wagmi app context. Developers can enable any third-party browser-based wallet through the Wagmi connectors. Authenticated app users can view the unified balance via the plug and play widget.

## 1. Install

{% include "./code-snippets/ca_wagmi_sdk_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-ca-wagmi-sdk.md" %}

### Hooks

The CA Wagmi SDK offers the same API as Wagmi `useSendTransaction()`. Use the `showBalance()` method to display the [[concept-unified-balance|unified balance]] via the plug-and-play widget.

#### `useSendTransaction`

```jsx
import { useSendTransaction } from "@arcana/ca-wagmi"

// The SDK offers the same API as wagmi `useSendTransaction`
const { sendTransaction } = useSendTransaction() 
```

### `useBalance`

```jsx
import { useBalance } from "@arcana/ca-wagmi"

const { showBalance } = useBalance();

// displays a modal with unified balance
showBalance()
```

## See Also

<!---
{% include "./text-snippets/quick-start-common-examples.md" %}
-->

{% include "./text-snippets/ca_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/ca_sdk_demo.md" %}
