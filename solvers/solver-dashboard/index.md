# Solver Dashboard

Solver Dashboard helps solver administrators in setting up solver profiles. They can track and manage solver funds for the configured solver profiles.

What is a Solver?

A [solver](../../concepts/ca/solver/) is a third-party market maker that runs the Arcana provided solver executable. Solvers play a key role in the Arcana chain abstraction (CA) protocol. They provide liquidity and enable users to spend any asset on any destination chain.

The protocol converts user intents into requests for funds (RFF). It publishes these requests on a specified channel. Only a permitted set of solvers can interact with the protocol.

Solvers watch the channel for new requests. They compete to provide the desired liquidity and fulfill user requests.

Solver admins can perform the following actions:

- Configure a solver profile
  - Name
  - URL
- Select a solver profile
- Manage solver funds:
  - Track total balance
  - View and set thresholds
  - View configured liquidity routes
  - View and set fees for each route
  - Track route earnings
- Edit / Delete solver profile

Solver Dashboard

## Prerequisites

To access the Solver Dashboard, the solver admin must:

1. Own an EOA, wallet address
1. Register the EOA with the Arcana protocol
1. Make sure the solver is accessible at a URL such as `ws://ip:port/api/v1/admin-api`

Running a Solver

To run a solver:

- Get the solver executable from Arcana
- [Configure the solver](../solver-config/) settings
- Run the executable on a server; it should be accessible via WebSocket `ws:` or WebSocket with TLS `wss:`

Once the executable runs, the solver is active and participates in the Arcana CA protocol. **The solver admin will require the `wss` URL to set up and manage the solver profile in the solver dashboard.**

## Connect Wallet

To access the dashboard, visit <https://solver.arcana.network/>.

At the initial access, the admin must set up a solver profile by specifying:

- Solver name
- Solver URL

### Solver URL

Solver URL refers to the WebSocket communication channel specified as: `wss://ip:port/api/v1/admin-api` or `ws://ip:port/api/v1/admin-api`

Solver Profiles

Next, solver admins must use a registered EOA to connect the wallet to the solver dashboard and log in.

Connect Wallet

After the wallet connects, the admin can view the total available solver funds. The dashboard also shows thresholds for various supported tokens. Admins can view and configure fees for the supported liquidity routes.

## EOA Addresses

The top RHS on the landing page shows:

- EVM and non-EVM addresses for the connected wallet
- Option to disconnect the wallet

Solver EOA Addresses

## Select Solver

Manage one or more solvers registered for the EOA account. Choose the solver profile via the dropdown list at the top RHS.

The selected solver page shows:

- Wallet balances: total balance, per token balance
- Token threshold setting

Solver Selection

## Wallet Balances

Go to the *Wallet Balance* screen in the left navigation panel. Here you can:

- View chains and tokens configured for the solver
- Check balances and thresholds
- Filter by chain or token type

### Total Balance

The top right of the wallet balance screen shows your total balance. This is the combined liquidity across all chains and tokens in your solver account.

### Chain,Token Balance

Each row displays the token balance for each configured chain and token type.

### Chain,Token Threshold

For each chain, you can view and edit the token thresholds.

Token Threshold

## Fees

Go to the left side navigation panel. Click on *Fees* to view and edit the fees configured for each route and the earnings data per route.

Configuring fees for each specified route serviced by the solver is part of the solver setup. This is the fee charged by solver per route for providing liquidity to Arcana protocol users.

Each solver route shows the following details:

- Source Chain
- Destination Chain
- Token
- Fees

Solver Fees

### Filters

You can filter the fees using these fields:

- Source chain
- Destination chain
- Token

The *Fees* field on the right is editable and solvers can change them as needed. The protocol uses the fees you set in the dashboard. When a user creates an intent, the protocol displays all fee details, including solver fees. This ensures transparency when building the request for funds.

If the admin modifies the fees via the solver dashboard, the solver turns it into a Cosmos SDK transaction. It submits the transaction on chain. The updated fee becomes effective from the next block.

Solver Route Filters

### Route Earnings

You can see the earnings for each route next to the fees field.

Solver Earnings

## Profile

The solver profile page displays all configured solvers. The connected admin EOA manages these solvers. They can edit or delete the configured solver profiles.

Solver Profiles

## Disconnect

Click on the account icon in the top right corner. Then select the option to disconnect your wallet from the Solver Dashboard.
