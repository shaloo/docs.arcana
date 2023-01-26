---
slug: /ansmartcflows
id: idansmartcflows
title: Arcana Contract Flows
sidebar_custom_props:
  cardIcon: ▶️
---

# Arcana Contract Flows

The interactions between various Arcana smart contracts corresponding for various features offered by the Arcana Auth product are captured by the following two workflows: 

1. Data Access Flow
2. New dApp Registration Flow

## Data Access Flow 

![Arcana Data Access Flow](/img/diagrams/d_an_sc_stg_flow_light.svg#only-light)
![Arcana Data Access Flow](/img/diagrams/d_an_sc_stg_flow_dark.svg#only-dark)

* All dApp user operation-related calls made via the client-side Auth SDK are intercepted by the Arcana Gateway.

* The Gateway executes meta transactions with relevant data and signatures.

* Forwarder forwards the transaction via the per dApp BeaconProxy smart contract. 

* The BeaconProxy requests the current Arcana core system contract, Arcana.sol, from the ArcanaBeacon contract.

* After receiving the address of the latest Arcana core system contract from the ArcanaBeacon contract,  the BeaconProxy delegates the forwarded call to the Arcana system contract.

* Arcana contract actually executes the transaction.

## New dApp Registration Flow

![New dApp Registration Flow](/img/diagrams/d_an_sc_newdapp_flow_light.png#only-light)
![New dApp Registration Flow](/img/diagrams/d_an_sc_newdapp_flow_dark.png#only-dark)

* When a new dApp is registered at the Arcana Developer Dashboard, it interacts with the Arcana Gateway to initialize the program state of the dApp.
* The Factory smart contract is invoked to create a new BeaconProxy contract that is solely associated with this newly registered dApp. Each dApp has its own BeaconProxy contract deployed.

* The BeaconProxy stores the per dApp-specific data related to the program state.

* The BeaconProxy communicates with the ArcanaBeacon contract to obtain the address of the latest Arcana core system contract. This ensures that each dApp contract knows and utilizes the latest supported Arcana Network protocol.
