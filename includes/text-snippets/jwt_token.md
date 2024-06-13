=== "`loginToken`"

    Upon successful authentication, {{config.extra.arcana.sdk_name}} returns a unique JWT token to the app called the [[concept-arcana-jwt-token|Arcana JWT Token]]. App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object. 
    
    Developers can use this token to [[concept-jwt-token-validation|verify the user]] and subsequently generate another token for app use, if required.

    !!! "To be deprecated"

          In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

=== "`userDIDToken`"

    Upon successful authentication, {{config.extra.arcana.sdk_name}} returns a unique DID token to the app called the [[concept-arcana-jwt-token|Arcana DID Token]]. App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object. 
    
    Developers can use this token to [[concept-did-token#verify-did-token|verify the user]] and subsequently generate another token for app use.   