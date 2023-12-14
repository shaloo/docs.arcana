!!! tip "Arcana Gasless SDK Use Cases"  

      The standalone {{config.extra.arcana.gasless_sdk_name}} addresses the following use cases:

      Depending upon the use case, installation and integration of one or more SDKs may be required.
   
      | Use Case  | Install  Package(s) | Requires {{config.extra.arcana.sdk_name}} | 
      |   :---     | :---    |  :---   |  :--- | 
      | Gasless Apps (No user onboarding, no {{config.extra.arcana.wallet_name}}, that work with only third-party browser-based wallets) | `{{config.extra.arcana.gasless_sdk_pkg_name}}` | None | |
      | Multi-wallet Gasless Apps that require user onboarding and/or {{config.extra.arcana.wallet_name}} | `{{config.extra.arcana.gasless_sdk_pkg_name}}` | `{{config.extra.arcana.auth_sdk_pkg_name}}` |
      | Web3 apps that require user onboarding and/or gasless operations via {{config.extra.arcana.wallet_name}} **only** (No third-party wallets) | `{{config.extra.arcana.auth_sdk_pkg_name}}` | None | 


      !!! note "Auth Companion SDKs"