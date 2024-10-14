Developers can also let user view the passkeys linked with the app or website and unlink them, if required.

### List Passkeys

In the authenticated user's context, call `getMyPasskeys` to list all the user passkeys associated with the app.

{% include "./code-snippets/auth_passkey_getlist.md" %}

### Unlink Passkeys

Apps can allow users to unlink the passkeys associated with an app. 

To do this, call `getMyPasskeys`in the authenticated user's context. This will list all the passkeys associated with the app. Let the user select a passkey. Specify the id of the selected passkey and call `unlinkPasskey(id)`. This will ensure that on subsequent login attempts, user cannot onboard the app with the unlinked passkey.

{% include "./code-snippets/auth_passkey_unlink.md" %}