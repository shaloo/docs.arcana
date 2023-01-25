```js
// After successful initialization, use AuthProvider functions
// For e.g., if you are building user login UI, when user
// chooses to log in via UI, call loginWithSocial function.

const arcanaProvider = await auth.loginWithSocial('google')

// If you are using ethers, you can access provider as shown below:

const provider = new ethers.providers.Web3Provider(arcanaProvider)

// If you are using web3js, then access the provider as shown below:

const provider = new Web3(arcanaProvider)
```
