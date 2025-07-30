# Get Started: Unity Apps

Early Preview Release

This feature of the Arcana Auth SDK is available **only** for Arcana Testnet as an **early preview**. Use it with caution. We are actively working on adding more functionality and fixes before making a formal release.

Integrate Web3 'Unity' gaming apps with Arcana Auth SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

## Prerequisites

- [Register the app](../../setup/config-auth/register-app/) and configure auth usage settings via the Arcana Developer Dashboard. Get a unique Client ID before integrating the app.
- [Configure social login providers](../../setup/config-auth/) to onboard users and customize the user experience for blockchain signing via the wallet settings.

## 1. Unity Setup, Auth Install

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

## 2. Integrate

```
using ArcanaSDK;

await arcanaSDK.InitializeSDK(env, "unique_clientID_for_registed_app");

```

### Onboard Users

```
// After initializing the SDK

if (loginMethod == LoginMethod.Passwordless)
  arcanaSDK.LoginWithOTP(email);
else
  arcanaSDK.LoginWithSocial(loginMethod);

```

### Sign Transactions

Use `Request` method to initiate Web3 Wallet operation requests.

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

**That's all!**

The 'Unity' app is ready to onboard users and allow them to sign blockchain transactions.

## 3. Advanced Usage

`AuthProvider` Optional Parameters

Besides Client ID input parameter, you can optionally customize these settings in the `AuthProvider` constructor:

______________________________________________________________________

**`position`:** wallet position within the app context - `left`|`right`

**`theme`:** wallet theme - `light`|`dark`

**`connectOptions`:** [compact mode](../../concepts/plug-and-play-auth/#compact-modal) for the built-in plug-and-play login UI - `true`|`false`

```
connectOptions: {
      compact: true // default - false
},

```

______________________________________________________________________

See [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) for details.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See also

**'Unity'** integration example: See `sample-auth-unity` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)
