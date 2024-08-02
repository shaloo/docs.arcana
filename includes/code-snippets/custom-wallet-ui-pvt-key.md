When using the default, built-in {{config.extra.arcana.wallet_name}} UI, authenticated users can securely access and copy the private key via the user profile tab of the wallet.

    Apps that choose to use a custom wallet UI, can build this feature in the UI and enable authenticated users to securely access the private key via the `_arcana_getPrivateKey` function issued in the authenticated user's context to fetch the key locally.

    ```js

    // Only valid when custom wallet UI is selected in the dashboard
    // during app registration

    async function onClickGetUserPrivateKey() {
      const authProvider = window.ethereum //assuming setWindowProvider is set when AuthProvider was instantiated 
      try {
        const userPkey = await authProvider.request({
          method: '_arcana_getPrivateKey',
          params: []
        });
        // Do something with the key in custom wallet UI
        // For e.g., display it in the app context, allow user to copy it
      } catch(error) {
            console.log(error);
      };
    }
    ```