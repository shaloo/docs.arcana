# Network Switching

The Arcana wallet UI shows a subset of supported blockchain networks. Users can switch the active wallet network by clicking the dropdown next to the network icon in the UI. They can also add to the network list or edit the entries.

Web3 app developers can programmatically modify the pre-configured network list and set a default network during app setup via Arcana Developer Dashboard. This is done using the `wallet_addEthereumChain` and `wallet_switchEthereumChain` JSON/RPC methods supported by the Arcana Auth SDK.

The `wallet_switchEthereumChain` method switches the active chain only after the user approves the network switch transaction.

Wallet Chain Edit Persistence

The list of networks configured by the developer, either programmatically or via the dashboard, persists across user login sessions.

User changes to blockchain networks through the Arcana wallet UI are stored locally and lost when the user logs out.

Switching Blockchain Networks

Switching chains in the wallet typically doesn’t change the wallet address when switching to another EVM-compatible chain. However, switching to a non-EVM-compatible blockchain supported by Arcana Auth SDK will assign a new set of keys and a different wallet address.
