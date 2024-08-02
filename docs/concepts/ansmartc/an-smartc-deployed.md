---
alias: concept-deployed-contracts
title: 'Deployed Contracts'
description: 'Learn about the various smart contracts implemented as part of the Arcana Network protocol.'
arcana:
  root_rel_path: ../..
---

# Deployed Contracts

=== "Summary"

    The table below lists various {{config.extra.arcana.company_name}} smart contracts based on the contract type and purpose.

    |{{config.extra.arcana.company_name}} Contract | Type/Category | Purpose |
    |:---| :--- | :------------|
    | `Arcana.sol` [V1 or V2] | Beacon Proxy/Core System |  Main logic contract for {{config.extra.arcana.company_name}} Store operations primarily associated with managing user data privacy and access control. |
    | `Factory.sol` | UUPS Proxy/Core System | Smart contract generator per app that registers with {{config.extra.arcana.company_name}}|
    | `ArcanaBeacon.sol` | UUPS Proxy/Core System | Smart contract to manage the per app association between the latest `Arcana.sol` main logic contract and the app |
    | `BeaconProxy.sol` | Beacon Proxy/dApp | This is a per app smart contract that stores the data related to the program state. It interacts with `ArcanaBeacon.sol` smart contract to refer to the latest {{config.extra.arcana.product_name}} product core logic contract. |
    | `Forwarder.sol` | UUPS Proxy/Core System | Manages meta transactions for app users. Forwards Gateway proxy calls (on behalf of the app) to `Arcana.sol` main logic contract |
    | `NodeList.sol` | Core System | Keeps track of ADKG nodes and their epochs.|

=== "Contract Details"

    **`Arcana.sol`**

    The `Arcana.sol` contract is crucial for the {{config.extra.arcana.product_name}} protocol. It handles UI configuration for managing blockchain transaction signing experience. It’s an upgradable beacon proxy and shares metadata with other contracts via pass-through data mechanisms. 

    **`Factory.sol`**

    When a new app registers with {{config.extra.arcana.company_name}}, the factory contract activates. This singleton UUPS proxy contract generates app-specific `BeaconProxy.sol` contracts and implements core system logic.

    **`BeaconProxy.sol`**

    During registration with {{config.extra.arcana.dashboard_name}}, each app gets a BeaconProxy contract. The {{config.extra.arcana.company_name}} Factory.sol deploys it. The BeaconProxy always points to the latest `Arcana.sol` version, managed by `ArcanaBeacon.sol`.

    **`ArcanaBeacon.sol`**

    The ArcanaBeacon contract points to the latest {{config.extra.arcana.product_name}} core logic, whether V1, V2, or Vn. It’s a UUPS proxy upgradable contract, ensuring the {{config.extra.arcana.product_name}} Protocol remains upgradeable.

    **`Forwarder.sol`**

    The UUPS proxy upgradable `Forwarder.sol` manages meta transactions, which are Ethereum transactions containing another transaction. Meta transactions allow external entities like the {{config.extra.arcana.company_name}} Gateway to pay gas fees, thus easing onboarding for new users. The Gateway uses them for {{config.extra.arcana.product_name}} data and access. `Forwarder.sol` works with an ERC-2771 compatible contract to forward transactions from the Gateway to the core `Arcana.sol` contract.

    **`NodeList.sol`**

    `NodeList.sol` manages the {{config.extra.arcana.product_name}} DKG protocol. It tracks public ADKG node information, epoch details, the buffer size for ‘pre-generated’ keys, and validator node whitelisting.

## Contract Flows

The workflows below show how {{config.extra.arcana.company_name}} smart contracts implement the {{config.extra.arcana.product_name}} protocol:

1. Data access flow
2. New app registration flow

=== "Data Access"

    ![Arcana Data Access Flow]({{config.extra.arcana.img_dir}}/diagrams/d_an_sc_stg_flow_light.{{config.extra.arcana.img_svg}}#only-light)
    ![Arcana Data Access Flow]({{config.extra.arcana.img_dir}}/diagrams/d_an_sc_stg_flow_dark.{{config.extra.arcana.img_svg}}#only-dark)

    * All app user operation-related calls made via the client-side {{config.extra.arcana.sdk_name}} are intercepted by the {{config.extra.arcana.company_name}} Gateway.

    * The Gateway executes the meta transactions with relevant data and signatures.

    * Forwarder forwards the transaction via the per-app `BeaconProxy.sol` smart contract. 

    * The BeaconProxy requests the current {{config.extra.arcana.company_name}} core system contract, `Arcana.sol`, from the `ArcanaBeacon.sol` contract.

    * After receiving the address of the latest {{config.extra.arcana.company_name}} core system contract from the `ArcanaBeacon` contract,  the BeaconProxy delegates the forwarded call to the {{config.extra.arcana.company_name}} system contract.

    * {{config.extra.arcana.company_name}} contract actually executes the transaction.

=== "New App Registration"

    ![New app Registration Flow]({{config.extra.arcana.img_dir}}/diagrams/d_an_sc_newdapp_flow_light.{{config.extra.arcana.img_png}}#only-light)
    ![New app Registration Flow]({{config.extra.arcana.img_dir}}/diagrams/d_an_sc_newdapp_flow_dark.{{config.extra.arcana.img_png}}#only-dark)

    * When a new app is registered at the {{config.extra.arcana.dashboard_name}}, it interacts with the {{config.extra.arcana.company_name}} Gateway to initialize the program state of the app.
    * The `Factory.sol` smart contract is invoked to create a new `BeaconProxy.sol` contract that is solely associated with this newly registered app. Each app has its own BeaconProxy contract deployed.

    * The `BeaconProxy.sol` contract stores the per-app data related to the program state.

    * The BeaconProxy communicates with the `ArcanaBeacon` contract to obtain the address of the latest {{config.extra.arcana.company_name}} core system contract. This ensures that each app contract knows and utilizes the latest supported {{config.extra.arcana.product_name}} protocol.
