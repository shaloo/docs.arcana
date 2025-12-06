# Unity Web3 Wallet Operations

Use `AuthProvider`, the standard EIP-1193 Ethereum provider offered by the Arcana Auth SDK, to call Web3 wallet operations in Unity apps.

## Supported Web3 Operations

Call `Request` to make Web3 Wallet operation requests from within the app context. Provide the 'method' parameter for any supported Web3 wallet operations.

Supported Wallet Operations

The supported methods in the `Request` function may vary depending on the selected blockchain network, EVM chains, or non-EVM chains, such as Solana or MultiversX. See the [supported JSON/RPC Web3 operations](../evm/) for a list of chain-specific methods supported via the `Request` call of the Arcana Auth Unity SDK.

```
responseTextField.text = "";
if (parameters.text != null)
{
  response = (await arcanaSDK.Request(new RequestParams {
      Method = method.text,
      Params = JsonConvert.DeserializeObject<object[]>(parameters.text)
  })).ToString();
}
else
{
  response = (await arcanaSDK.Request(new RequestParams {
      Method = method.text,
  })).ToString();
}

```
