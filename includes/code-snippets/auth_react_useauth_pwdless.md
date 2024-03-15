```js title="App.js" hl_lines="1 4 13 22-28"
import { useAuth } from "@arcana/auth-react";

function App() {
  const { loading, isLoggedIn, loginWithLink } = useAuth()

  // Add UI code to accept user's email as input
  // userEmail <- string input
  // validate userEmail

  // custom login UI
  const onConnectClick = async () => {
    try {
      await loginWithLink(`${userEmail}`); 
      // CAUTION: loginWithLink is deprecated 
      // use loginWithOTPStart, loginWithOTPComplete
      // const login = await auth.loginWithOTPStart(`${email}`)
      // await login.begin()

      // if(login.isCompleteRequired) {
        // await loginWithOTPComplete(`${otp}`, onMFARequired() => {
          // Hide overlay(if used) so that user can recover device share via wallet ui
        //})
      //}
    } catch (err) {
      console.log({ err });
      // Handle error
    }
  };

  if (loading) {
    return <p>Loading...</p>;
  }
  if (!isLoggedIn) {
    return (
      <button onClick={onConnectClick}>
        Connect with Email
      </button>
    );
  }
}

export default App
```