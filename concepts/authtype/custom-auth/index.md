# Custom Auth

The custom Auth feature enables Web3 apps to use the Arcana Auth SDK for secure key assignment. Authenticate users with a Custom Auth service, issue JWT tokens, and send them to the SDK. The SDK verifies users, retrieves key shares, and generates the private key for blockchain transactions on the client side.

Global Key Apps not supported!

Custom Auth feature is supported only if the app is configured for [app-specific key type](../../keyspace-types/).

## Authentication Flow

1. Log in to the Arcana Developer Dashboard and register the app to get a unique Client ID. Then [configure Custom Auth settings](#custom-auth-settings) in the dashboard.

   ```
   graph TD
       DFLA{{ Developer }} --Login --> setup

       subgraph setup[Arcana Developer Dashboard]
       direction LR  
           SP1[1.Register App] --> CLID((Unique ClientID))
           SP2[2.Configure App] --> SP3[Edit/Save Custom Auth Settings]
       end
       classDef an-highlight stroke:#3169b3,stroke-width:0.25rem; 
       class CLID an-highlight

   ```

1. Add code in the app for using a Custom Auth service and obtains a JWT after user authentication.

   ```
   graph LR
       IAP{{ Developer }}
       MMM(Custom Authentication Service)
       subgraph app[App]
       direction LR
       CL[Custom Login]
       end
       IAP --> CL -->  MMM --->|JWT Token| CL

       linkStyle 2 stroke: #3169b3;
   ```

1. Next, install Arcana Auth SDK, integrate app with the SDK, initialize `AuthProvider` and then use the JWT obtained after the Custom Auth processing to call the `loginWithCustomProvider()` method.

   ```
   graph TD
       DFLA{{ Developer }} --install --> authsdk
       DFLA --ClientID -->AUTHP
       DFLA --JWT Token -->COA
       subgraph app[App]
           AUTHP[Create/Init AuthProvider] --> authsdk
           COA[Call loginWithCustomOAuth] --> authsdk
           subgraph authsdk[Arcana Auth SDK]
           direction TB 
               SDK1[AuthProvider Interface] 
           end
       end
       linkStyle 1,2 stroke: #3169b3;
       authsdk --Verify JWT Claims --> STD[Standard JWT/JWK Validation]
       authsdk --Fetch Key Shares --> BEP[Arcana Auth Protocol] <--> BEK[DKG]
   ```

1. The Arcana Auth SDK checks the JWT using dashboard settings. After verification, it gets the user's key shares from the Arcana backend and generates the key locally in the app. This key lets users securely sign blockchain transactions.

   ```
   graph LR
       BED[Arcana Auth Protocol] --Custom Auth Settings--> BEC{Gateway} 
       BEC <--> BEA[Arcana Auth Protocol] <--> BEDKG[DKG]
   ```

## Custom Auth Settings

The following Custom Auth settings can be specified via the Arcana Developer Dashboard.

### JWKS Endpoint

A JWKS Endpoint is a read-only URL exposed by the Custom Auth server or any other server that manages the cryptographic keys or JSON Web Keys (JWK) as per the [IETF RFC7517](https://datatracker.ietf.org/doc/html/rfc7517) and [IETF RFC7519](https://datatracker.ietf.org/doc/html/rfc7519) standards. JWKs are used to validate the integrity of a JWT and the encoded data by the Arcana Auth SDK.

### User Identifier String

The 'User Identifier String' links a unique identifier with the user's key. Developers can choose the string from one of the options:

- Sub: The user identifier string identifies the principal that is the subject of the JWT.
- Email: JWT Token claim email identifier for the user
- Custom: A custom string used for JWT Token claim.

### Issuer

The issuer claim identifies the principal that issued the JWT. For example, it could be the app identifier or deployed app URL.

*Example:* `Issuer: "https://myapp.example.com"`

### Audience

The audience claim identifies the recipients that the JWT is intended for.

*Example:* `Audience: "arcana-login-nnnnnn"`

### JWK Validation (Optional)

Claims are pieces of information asserted about a subject or user. A JWT can contain a claim called name that asserts that the name of the user authenticating is "John Doe." JWT Validation entities specified by the developer via the Arcana Developer Dashboard are key, value pairs. These are used to validate the JWT provided by the developer to the Arcana Auth SDK via the `loginWithCustomProvider()` method for authenticated users.

*Examples*

`purpose: 'login'`

`keyUse: 'arcana'`
