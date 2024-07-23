??? an-note "User Onboarding Considerations"

    1. **Log in Options:** What options are offered by the app to the onboard users via social login? *Configure the required [[index-configure-auth|social login providers]] via the dashboard.*

    2. **Built-in or Custom Login UI:** Does the Web3 app have a custom login UI or do they need to use the built-in, [[concept-plug-and-play-auth|plug-and-play login UI]] modal offered by the {{config.extra.arcana.sdk_name}}? *Choose the appropriate onboarding functions of the `AuthProvider`.*

    3. **Session Management:** Does the authenticated user stay logged in if they accidentally close the browser tab? If yes, what is the acceptable Web3 app security window for the session? After how long should the session expire and a user re-login is necessitated for security? *Configure the [[dashboard-user-guide#configure-session-type|session management settings]] via the dashboard.*

    4. **Reconnect:** Does the Web3 app allow users to stay connected or require re-authentication after a certain time has elapsed? *Use `isConnected`,  `canReconnect` and `reconnect` functions of the `AuthProvider`.*