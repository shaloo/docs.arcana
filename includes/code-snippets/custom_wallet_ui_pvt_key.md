
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