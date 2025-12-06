# Solana Wallet Ops

Solana chain is a bit different from typical EVM chains in how it [supports Solana JSON-RPC calls](https://docs.solana.com/api/http) and Web3 wallet operations.

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-Solana/) the Solana app and configure SDK usage [settings for social login](../../../setup/) providers, [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).
- Install the [required SDK packages](../../sdk-installation/) as per the app type, [integrate the SDK](../../integrate/solana/) and create `AuthProvider`. Make sure you also initialize the `Solana Provider`.

```
import { AuthProvider } from '@arcana/auth'

```

```
const auth = new AuthProvider(
  "xar_test_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", // App client ID
  { 
    alwaysVisible: false,     // default: true, wallet always visible
    connectOptions: {
      compact: true           // default: false, regular plug-and-play login UI
    },
    position: 'left',         // default: right
    setWindowProvider: true,  // default: false, window.ethereum not set
    theme: 'light',           // default: dark
})

```

```
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

```

Solana apps can use the `auth.provider` to make standard JSON RPC calls in the context of an authenticated user.

```
const provider = auth.provider;

```

Use the Solana provider for issuing Solana Web3 wallet operations in the context of an authenticated user.

```
const solanaP = auth.solana;

```

## Supported Web3 Wallet Operations

### Get Public Key

```
import SolanaWeb3 from "@solana/web3.js";

const provider = auth.provider;

const accounts = await auth.provider.request({
  method: "getAccounts",
  params: [],
});

const publicKey = new SolanaWeb3.PublicKey(accounts[0])

console.log(publicKey);

```

The `publicKey` is returned as a string: ["your-public-key-in-string-format"].

## Supported JSON/RPC Functions

- `signMessage`
- `signTransaction`
- `signAllTransactions`
- `signAndSendTransaction`

### `SignMessage`

```
  const message = `Sign below to authenticate with CryptoCorgis to avoid digital dognappers`;
  const encodedMessage = new TextEncoder().encode(message);
  // To get a proper signature, the second parameter in signMessage call 
  // can be either "hex" or "utf8", depending on what kind of message we are signing. 
  // For plaintext, use "utf8"; 
  // For hex message, use "hex"
  try {
    const signature = await solanaP.signMessage(encodedMessage, "hex");
    window.solanaSig = signature;
    console.log(signature);
  } catch (e) {
    console.error(e);
  }

```

#### Signature Format

```
  {
    signature: Uint8Array // Encode it by using `bs58.encode(signature)` 
                          // to get the string format. See npm library: bs58 
    publicKey: BN // Use `new SolanaWeb3.PublicKey(publicKey)` 
                  // to get the 'BN' string format. See npm library: @solana/web3.js
  }

```

### `SignTransaction`

```
try {
  const pk = new SolanaWeb3.PublicKey(auth.solana.publicKey)
  const connection = new SolanaWeb3.Connection(
    SolanaWeb3.clusterApiUrl("testnet") // can be "devnet", "testnet" or "mainnet-beta"
  );

  const minRent = await connection.getMinimumBalanceForRentExemption(0);

  const blockhash = await connection.getLatestBlockhash().then((res) => res.blockhash);

  const payer = auth.solana

  const instructions = [
    SolanaWeb3.SystemProgram.transfer({
      fromPubkey: pk,
      toPubkey: pk,
      lamports: minRent // lamports is the minimum unit of solana, like wei is for Ethereum. 1 SOL = 10^9 Lamports
    })
  ];

  // Compiles the message to V0 format
  const messageV0 = new SolanaWeb3.TransactionMessage({
    payerKey: pk,
    recentBlockhash: blockhash,
    instructions
  }).compileToV0Message();

  const transaction = new SolanaWeb3.VersionedTransaction(messageV0);

  // sign your transaction with the required `Signers`
  const signature = await payer.signTransaction(transaction);
} catch (e) {
    console.error(e);
}

```

#### Signature Format

```
{
signatures: [Uint8Array],
message: {
    header: {
      numRequiredSignatures: 1,
      numReadonlySignedAccounts: 0,
      numReadonlyUnsignedAccounts: 1
    },
    staticAccountKeys: [
      StaticAccountKey1, // In string format
      StaticAccountKey2 // In string format
    ],
    recentBlockhash: LatestBlockHashSubmittedWhileSigning, // In string format
    compiledInstructions: [
      {
        programIdIndex: 1,
        accountKeyIndexes: [
          0,
          0
        ],
        data: Uint8Array // Data that was signed
    ],
    addressTableLookups: [] // Not sure what is this, will need to check, but we can pass this during signing
  }
}

```

### `SignAllTransactions`

```
try {
  const pk = new SolanaWeb3.PublicKey(auth.solana.publicKey);
  const connection = new SolanaWeb3.Connection(
    window.solanaWeb3.clusterApiUrl("testnet")
  );

  const minRent = await connection.getMinimumBalanceForRentExemption(0);

  const blockhash = await connection.getLatestBlockhash().then((res) => res.blockhash);

  const payer = auth.solana;

  const instructions = [
    SolanaWeb3.SystemProgram.transfer({
      fromPubkey: pk,
      toPubkey: pk,
      lamports: minRent,
    }),
  ];

  const messageV0 = new SolanaWeb3.TransactionMessage({
    payerKey: pk,
    recentBlockhash: blockhash,
    instructions,
  }).compileToV0Message();

  const transaction = new SolanaWeb3.VersionedTransaction(messageV0);

  // sign your transaction with the required `Signers`
  const signatures = await payer.signAllTransactions([
    transaction,
    transaction,
    transaction,
  ]); // Should/can send multiple different transactions, 
      // right now sending 1 transaction multiple times just as an example

} catch (e) {
    console.error(e);
}

```

The signature format here is same as above with a minor difference:

```
[Signature0, Signature1, Signature2, and so on]

```

### `SignAndSendTransaction`

```
try {
  const pk = new SolanaWeb3.PublicKey(auth.solana.publicKey);
  const connection = new SolanaWeb3.Connection(
    SolanaWeb3.clusterApiUrl("testnet")
  );

  const minRent = await connection.getMinimumBalanceForRentExemption(0);

  const blockhash = await connection.getLatestBlockhash().then((res) => res.blockhash);

  const payer = auth.solana; // Arcana Solana API

  const instructions = [
    SolanaWeb3.SystemProgram.transfer({
      fromPubkey: pk,
      toPubkey: pk,
      lamports: minRent,
    }),
  ];

  const messageV0 = new SolanaWeb3.TransactionMessage({
    payerKey: pk,
    recentBlockhash: blockhash,
    instructions,
  }).compileToV0Message();

  const transaction = new SolanaWeb3.VersionedTransaction(messageV0);

  // sign your transaction with the required `Signers`
  const txHash = await payer.signAndSendTransaction(transaction);
}  catch (e) {
    console.error(e);
}

```

#### Response Format

```
{
  publicKey: BN,
  signature: Uint8Array // This is the transaction hash itself
                        // we can verify this in solana explorer, 
                        // need to convert it to string first using `bs58.encode(signature)`
}

```
