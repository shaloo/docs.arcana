# Arcana Auth SDK: Deployed Contracts

| Arcana Auth SDK Contract | Type/Category | Purpose | | --- | --- | --- | | `Arcana.sol` [V1 or V2] | Beacon Proxy/Core System | Main logic contract for Arcana Store operations primarily associated with managing user data privacy and access control. | | `Factory.sol` | UUPS Proxy/Core System | Smart contract generator per app that registers with Arcana | | `ArcanaBeacon.sol` | UUPS Proxy/Core System | Smart contract to manage the per app association between the latest `Arcana.sol` main logic contract and the app | | `BeaconProxy.sol` | Beacon Proxy/dApp | This is a per app smart contract that stores the data related to the program state. It interacts with `ArcanaBeacon.sol` smart contract to refer to the latest Arcana Auth SDK authentication core logic contract. | | `Forwarder.sol` | UUPS Proxy/Core System | Manages meta transactions for app users. Forwards Gateway proxy calls (on behalf of the app) to `Arcana.sol` main logic contract | | `NodeList.sol` | Core System | Keeps track of ADKG nodes and their epochs. |

**`Arcana.sol`**

The `Arcana.sol` contract is crucial for the Arcana Auth SDK protocol. It handles UI configuration for managing blockchain transaction signing experience. It’s an upgradable beacon proxy and shares metadata with other contracts via pass-through data mechanisms.

**`Factory.sol`**

When a new app registers with Arcana Auth SDK, the factory contract activates. This singleton UUPS proxy contract generates app-specific `BeaconProxy.sol` contracts and implements core system logic.

**`BeaconProxy.sol`**

During registration with Arcana Developer Dashboard, each app gets a BeaconProxy contract. The Arcana Auth SDK Factory.sol deploys it. The BeaconProxy always points to the latest `Arcana.sol` version, managed by `ArcanaBeacon.sol`.

**`ArcanaBeacon.sol`**

The Arcana Beacon contract points to the latest Arcana Auth SDK core logic, whether V1, V2, or Vn. It’s a UUPS proxy upgradable contract, ensuring the Arcana Auth SDK Protocol remains upgradeable.

**`Forwarder.sol`**

The UUPS proxy upgradable `Forwarder.sol` manages meta transactions, which are Ethereum transactions containing another transaction. Meta transactions allow external entities like the Arcana Gateway to pay gas fees, thus easing onboarding for new users. The Gateway uses them for Arcana Auth SDK related data and access. `Forwarder.sol` works with an ERC-2771 compatible contract to forward transactions from the Gateway to the core `Arcana.sol` contract.

**`NodeList.sol`**

`NodeList.sol` manages the Arcana Auth SDK protocol functionality related to the asynchronous distributed key generation (ADKG). It tracks public ADKG node information, epoch details, the buffer size for ‘pre-generated’ keys, and validator node whitelisting.

## Contract Flows

The workflows below show how Arcana smart contracts implement the Arcana Auth SDK protocol:

1. Data access flow
1. New app registration flow

- All app user operation-related calls made via the client-side Arcana Auth SDK are intercepted by the Arcana Gateway.

- The Gateway executes the meta transactions with relevant data and signatures.

- Forwarder forwards the transaction via the per-app `BeaconProxy.sol` smart contract.

- The BeaconProxy requests the current Arcana core system contract, `Arcana.sol`, from the `ArcanaBeacon.sol` contract.

- After receiving the address of the latest Arcana core system contract from the `ArcanaBeacon` contract, the BeaconProxy delegates the forwarded call to the Arcana system contract.

- Arcana contract actually executes the transaction.

- When a new app is registered at the Arcana Developer Dashboard, it interacts with the Arcana Gateway to initialize the program state of the app.

- The `Factory.sol` smart contract is invoked to create a new `BeaconProxy.sol` contract that is solely associated with this newly registered app. Each app has its own BeaconProxy contract deployed.

- The `BeaconProxy.sol` contract stores the per-app data related to the program state.

- The BeaconProxy communicates with the `ArcanaBeacon` contract to obtain the address of the latest Arcana core system contract. This ensures that each app contract knows and utilizes the latest supported Arcana Auth SDK protocol.
