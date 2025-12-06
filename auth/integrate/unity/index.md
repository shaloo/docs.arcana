# Integrate Unity App

Integrate 'Unity' apps with [Arcana Auth SDK](../../../concepts/authsdk/) and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-Unity/) the 'Unity' app and configure SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

## Steps

### 1. Setup

#### Setup Unity

- Install [NuGetForUnity](https://github.com/GlitchEnzo/NuGetForUnity).

- In the NuGet Toolbar at the top, click **NuGet > Manage NuGet packages**.

  Manage NuGet Packages

- Install the following packages by STA: `Nethereum.Web3`, `WebsocketSharp.Core`

- Use the Unity Editor Project Settings window to edit package settings for your project. Click **Edit > Project Settings > Package Manager**.

  - [Edit Project Settings](https://docs.unity3d.com/Manual/class-PackageManager.html) with URL **https://npm-registry.arcana.network/** and set the scope to `com.cysharp.unitask, dev.voltstro`

    Edit Project Settings

  - Add another new scoped registry with URL **https://unitynuget-registry.azurewebsites.net** and set the scope to `org.nuget`.

    Add Scoped Registry

- In the NuGet window, use the NuGet Toolbar at the top, and click **Window > Package Manager > Add Package by Name**.

  Add Package by Name

- Add the following packages: `com.cysharp.unitask`, \`\`dev.voltstro.unitywebbrowser.engine.cef\`

  - **Windows**: `dev.voltstro.unitywebbrowser.engine.cef.win.x64`
  - **Linux**: `dev.voltstro.unitywebbrowser.engine.cef.linux.x64`
  - **MacOS**: `dev.voltstro.unitywebbrowser.engine.cef.macos.x64`

See [Unity Web Browser package list](https://projects.voltstro.dev/UnityWebBrowser/latest/articles/user/packages/#package-list) for details.

- Download the Arcana Auth Unity SDK package: [https://npm-registry.arcana.network/](https://npm-registry.arcana.network/-/web/detail/arcana-auth-sdk). Unzip the contents and copy them to the **Assets** folder of the Unity Project.

- Search for **ArcanaSDK** prefab in the 'Project Window' of the Unity Editor. Click **Assets > ArcanaSDK > Prefabs > ArcanaSDK**. Drag this prefab into the project 'Hierarchy' and configure the prefab as shown here:

  Configure Arcana Prefab

#### Install Auth SDK

```
npm install --save @arcana/auth

```

```
yarn add @arcana/auth

```

### 2. Initialize Auth SDK

```
using ArcanaSDK;

await arcanaSDK.InitializeSDK(env, "unique_clientID_for_registed_app");

```

## What's Next?

After integrating an app with the Arcana Auth Unity SDK, developers can add code to [onboard users](../../onboard/unity/) and [enable Web3 wallet operations](../../web3-ops/unity-wallet-ops/) for authenticated users to sign transactions.

## See also

**'Unity'** integration example: See `sample-auth-unity` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

[Try Demo App](https://demo.arcana.network)
