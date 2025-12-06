# Keyspace Types

Arcana Auth SDK supports the following key types:

App-specific keys are unique to each Web3 app using the Arcana Auth SDK. If a user logs into two different apps with the SDK, they'll have a unique wallet address in each app.

In Web2, users often reuse passwords. Similarly, Web3 apps using Arcana Auth SDK can enable the same global wallet address across apps with the global keys option.

While global keys streamline user experience, they pose a security risk. If one app is breached, a malicious actor could access the user’s digital assets across all apps using the same global keys.

```
flowchart LR 
    subgraph D [ ]
        A1(((Developer))) 
    end
    subgraph KT [Keyspace Configuration]
    direction LR
        A1--> B1(Dashboard Login) --> C1[App A Settings] -- Configure Keyspace --> D1[Global Keys]
        B1 -->C2[App B Settings] -- Configure Keyspace --> D2[App-Specific Keys]
        B1 -->Cz[App Z Settings] -- Configure Keyspace --> Dz[Global Keys]
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem; 
class D1,Dz an-highlight
```

```
flowchart LR 
    subgraph U [ ]
        A3(((User 1)))
    end
    subgraph ULZ [User 1 Logs in - App Z]
        direction LR
        A3 --> BZ(App Z Login) -- Authenticated --> CZ(Arcana Wallet in App Z) --> DZ[Wallet Address UA1]
    end
    subgraph ULB [User 1 Logs in - App B]
    direction LR
        A3 --> B33(App B Login) -- Authenticated --> C33(Arcana Wallet in App B) --> D33[Wallet Address UB1]
    end
    subgraph ULA [User 1 Logs in - App A]
    direction LR
        A3 --> B3(App A Login) -- Authenticated --> C3(Arcana Wallet in App A) --> D3[Wallet Address UA1]
    end

classDef an-highlight stroke:#3169b3,stroke-width:0.25rem;
class D3,DZ an-highlight
```

## Enabling Global Keys

By default, apps use app-specific keys. Developers can switch to global keys via the Arcana Developer Dashboard. To enable global keys, they must request activation through an online form. Activation may take a few hours for verification. Meanwhile, developers can continue using app-specific keys.

## UX with Global Keys

Switching to global keys in the Arcana Auth SDK changes the user experience with Arcana wallet.

- If users previously had app-specific keys, they’ll see a new wallet address with global keys.
- Blockchain transaction signing will also change. With app-specific keys, a personal sign message pops up within the same app. With global keys, it opens in a new browser tab where users can sign and then close the tab.

Wallet behavior (No clickjacking fix)

Wallet behavior (With clickjacking fix)

## Switching Keyspace

Apps use app-specific keys by default. Developers can switch to global keys using the Arcana Developer Dashboard based on privacy, security, or usability needs.

Note that Switching keyspace will change the user’s wallet address.

## Global Keys Limitations

- Apps that are configured to use the custom wallet UI option instead of using the default, built-in, Arcana Auth SDK UI **cannot** use global keys.
- Apps that are configured to use [Custom Auth](../authtype/custom-auth/) feature **cannot** use global keys.

The reason for these restriction is to reduce a potential [security vulnerability](./#security).

## Security

Arcana follows a strict validation process for enabling global keys. However, using global keys may introduce security risks.

While global keys offer convenience by providing a consistent wallet address across apps, they also create a vulnerability. If one app turns malicious, the user's key could be exposed across all apps using global keys, leading to unauthorized access.
