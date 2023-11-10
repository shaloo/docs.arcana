```js title="App.js" hl_lines="1 4 9 19-25"
import { useAuth } from "@arcana/auth-react";

function App() {
  const { loading, isLoggedIn, loginWithSocial } = useAuth()

  // custom login UI
  const onConnectClick = async () => {
    try {
      await loginWithSocial({{page.meta.arcana.social_provider}}); 
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
        Connect with {{page.meta.arcana.social_provider_name}}
      </button>
    );
  }
}

export default App
```