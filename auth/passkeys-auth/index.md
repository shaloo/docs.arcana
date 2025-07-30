Apps using Arcana Auth SDK can enable passkey login in two ways:

- Allow new users to sign up with passkeys, making it the only login option.
- Let existing users set up passkeys as an alternative login method, alongside other social login options.

## Passkey Sign-up

To sign up with passkeys, use `registerWithPasskey()`, followed by `loginWithPasskey()`. This will allow users to sign up and log in one step. Users must provide a unique identifier for passkey registration such as a name, email, device ID, biometrics data, PIN, or pattern. This sign-up flow is ideal for apps that only allow passkey onboarding. [See details...](../onboard/passkey-auth/passkey-signup/)

## Passkey Login

To use passkeys as an alternative login, users first need to onboard through another method, like social login. Once logged in, they can set up a passkey for future logins. Use `linkPasskey()` to create and associate passkey with the app or website. Next time, when user chooses passkey option to log in, the app can call `loginWithPasskey()`, triggering the device or browser to display a UI where the user can choose the previously set passkey. This flow works best for apps that support multiple onboarding methods. [See details...](../onboard/passkey-auth/passkey-login/)
