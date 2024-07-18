??? an-note "User Onboarding Considerations"

    1. **Log in Options:** What options are available to the user for onboarding, social login and passwordless? Configure required social authentication providers via the dashboard.

    2. **Built-in or Custom Login UI:** Does the Web3 app have a custom login UI or do they need to use the built-in, plug-and-play login UI modal offered by the {{config.extra.arcana.sdk_name}}?

    3. **Session Management:** Does the authenticated user stay logged in if they accidentally close the browser tab? If yes, what is the acceptable Web3 app security window for the session? After how long should the session expire and a user re-login is necessitated for security?

    4. **Reconnect:** Does the Web3 app allow users to stay connected or require re-authentication after a certain time has elapsed? Use `isConnected`,  `canReconnect` and `reconnect` functions.