??? an-note "Flutter SDK Usage"

    === "Login"

        **Social Login**

        ```js
        auth.loginWithSocial("google").then((_) => {
        // On login Success
        }).catchError(...);
        ```

        **OTP Login**

        ```js
        auth.loginWithOTP("${email_id}").then((_) => {
        // On login Success
        }).catchError(...);
        ```

        **Logout**

        ```js
        auth.logout().then((_) => {
        // On logout
        });
        ```

    === "User Info"

        **Get User Address**

        ```js
        auth.getAccount().then((account) => ...);
        ```

        **Get User Details**

        ```js
        auth.getUserInfo().then((UserInfo info) => ...);
        ```

    === "Wallet Visibility"

        **Show/Hide Wallet UI**

        ```js
        auth.showWallet();
        ```

        ```js
        auth.hideWallet();
        ```

        **Check Wallet Visibility**

        ```js
        var isVisible = auth.isVisible();
        ```

    === "Cache"

        **Clear Cache**

        ```js
        auth.clearCache();
        ```