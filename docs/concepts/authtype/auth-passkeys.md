---
alias: concept-auth-passkeys
title: 'Passkeys Auth'
description: 'Custom verifier-based user authentication.'
arcana:
  root_rel_path: ../..
  app_type: "'Custom Auth'"
  app_example_submodule: "`sample-auth-custom-auth`"
  pnp_login_ui_tag: "use-plug-play-auth"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Passkeys Auth

The Passkeys Auth feature of the {{config.extra.arcana.sdk_name}} enables Web3 apps to onboard users through a biometric sensor (such as a fingerprint or facial recognition), a PIN, or a pattern supported by the OS or device where the app is running.

Passkey is a digital credential that binds a user account with a website or application.

Passkeys use public key cryptography that reduces the threat from potential data breaches. They are safer than passwords as they reduce the attack surface. Since passkeys are uniquely generated for every account by the user device and work only on the registered websites and apps, they are less vulnerable to phishing.

## How do Passkeys Work?

Passkeys are intended to be used through operating system infrastructure that allows passkey managers to create, backup, and make passkeys available to the applications running on that operating system.

Users aren't restricted to using the passkeys only on the device where they're available. The passkeys available on phones can be used when logging into a laptop, even if the passkey isn't synchronized to the laptop, as long as the phone is near the laptop and the user approves the sign-in on the phone.

Users must **create passkeys** in order to be able to log into Web3 apps using passkeys later. To create a passkey for a website or application, a user must **first** register with that website or application and follow up steps to create a passkey for that website or application. After setting up passkeys for an account, on subsequent log in to the website or app, user can choose passkeys option to sign in. When signing in via passkeys, the browser or operating system will prompt them to select and use the right passkey. To validate and ensure that the rightful owner uses a passkey, the operating system will ask users to unlock their device before supplying the passkey for authentication.

## Security & Privacy

Passkeys are based on [FIDO standards](https://en.wikipedia.org/wiki/FIDO_Alliance), they work on Android, Chrome, Microsoft Windows, Microsoft Edge, MacOS, iOS and Safari.

Note that when signing in via a passkey, there is no biometric information or any sensitive information that is shared with the associated website for authentication. Also, passkeys by themselves do not allow tracking of users or devices across sites. Passkeys use public key cryptography. A public–private key pair is generated when a user creates a passkey for a site or application. This is generated on the user's device. Only the public key is stored by the site. Device based passkey managers protect passkeys from unauthorized access and use. 

Passkeys do not expire but they can be deleted and new ones created, if required.

## Authentication Flow

1. Log in to the {{config.extra.arcana.dashboard_name}} and register the app to get a unique  {{config.extra.arcana.app_address}}. Then [configure Custom Auth settings](#custom-auth-settings) in the dashboard.

    ```mermaid
    graph TD
        DFLA{{Developer}} --Login --> setup
    
        subgraph setup[Arcana Developer Dashboard]
        direction LR  
            SP1[1. Register App] --> CLID((Unique ClientID))
            SP2[2. Configure App] --> SP3[Edit/Save Passkey Usage Settings]
        end
        classDef an-pink stroke:#ff4e9f,stroke-width:0.25rem; 
        class CLID an-pink

    ```

2. Add code in the app for using a passkeys to onboard users and obtains a JWT after user authentication.

    ```mermaid
    graph LR
        IAP{{Developer}}
        MMM(Passkey Authentication Service)
        subgraph app[App]
        direction LR
        CL[Passkey Login]
        end
        IAP --> CL -->  MMM --->|JWT Token| CL

        linkStyle 2 stroke: deeppink;
    ```

3. Next, install {{config.extra.arcana.sdk_name}}, integrate app with the SDK, initialize `AuthProvider` and then use the JWT obtained after the Custom Auth processing to call the `loginWithPasskeys()` method.

    ```mermaid
    graph TD
        DFLA{{Developer}} --install --> authsdk
        DFLA --ClientID -->AUTHP
        DFLA --JWT Token -->COA
        subgraph app[App]
            AUTHP[Create/Init AuthProvider] --> authsdk
            COA[Call loginWithPasskeys] --> authsdk
            subgraph authsdk[Arcana Auth SDK]
            direction TB 
                SDK1[AuthProvider Interface] 
            end
        end
        linkStyle 1,2 stroke: deeppink;
        authsdk --Verify JWT Claims --> STD[Standard JWT/JWK Validation]
        authsdk --Fetch Key Shares --> BEP[Arcana Auth Protocol] <--> BEK[DKG]
    ```

4. The {{config.extra.arcana.sdk_name}} checks the JWT using dashboard settings. After verification, it gets the user's key shares from the {{config.extra.arcana.company_name}} backend and generates the key locally in the app. This key lets users securely sign blockchain transactions.

    ```mermaid
    graph LR
        BED[Arcana Developer Dashboard] --Passkey Usage Settings--> BEC{Gateway} 
        BEC <--> BEA[Arcana Auth Protocol] <--> BEDKG[DKG]
    ```

## Passkeys Usage Settings

The following Passkeys Usage Settings can be specified via the {{config.extra.arcana.dashboard_name}}. 

### TBD
