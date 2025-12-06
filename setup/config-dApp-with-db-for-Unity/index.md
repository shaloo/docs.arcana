# Unity Setup

This guide explains how to configure a Unity Web3 app and allow users to sign blockchain transactions using the Arcana wallet.

Use the Arcana Developer Dashboard to first configure user onboarding settings for the Unity app and then integrate the app with the Arcana Auth Unity SDK.

## Prerequisites

To log into the Arcana Developer Dashboard, you’ll need an account with a supported social login or use email for passwordless access.

- Google
- GitHub
- Twitch
- Discord

Use <https://dashboard.arcana.network> to log in with one of the available options.

Developer Dashboard Login Page

Aggregate Login

The [aggregate login](../../concepts/aggregatelogin/) feature in the Arcana Auth SDK merges login identities from social providers into one Arcana account if the email ID is the same across these providers. Developers can log into the Arcana Developer Dashboard using any supported provider and still access the same Arcana account and app settings.

## Register App

To register a Web3 Unity app, log into the Arcana Developer Dashboard, create a new app and select the chain that must show up as the default chain in the wallet.

See [how to register a new App](../config-auth/register-app/) for details.

## Configure App

Refer to the [Arcana Developer Dashboard User's Guide](../config-dApp-with-db/) and configure the branding, social authentication providers and other settings.

## Unity Settings, SDK Installation

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

## Next Steps

After integrating an app with the Arcana Auth Unity SDK, developers can add code to [onboard users](../../auth/onboard/unity/) and [enable Web3 wallet operations](../../auth/web3-ops/unity-wallet-ops/) for authenticated users to sign transactions.

## See Also

- [Unity Auth Integration Example](https://github.com/arcana-network/auth-unity/tree/main/UnitySampleProject)

- Arcana Auth Unity SDK Quick Links

  - [Release notes](../../relnotes/latest-auth-release-note/)
  - [Changelog](https://github.com/arcana-network/auth-unity/releases)
  - [Download SDK](https://npm-registry.arcana.network/)
