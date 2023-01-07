---
slug: /walletuimodes
id: idwalletuimodes
title: Wallet Visibility
sidebar_custom_props:
  cardIcon: ▶️
arcana:
  root_rel_path: ../..
---

The **Arcana wallet visibility mode** setting governs the user experience for signing blockchain transactions. It allows the application developers to easily control whether they want the wallet UI to be always visible in the context of their application or to show up only when a blockchain transaction is triggered.

To manage the [Arcana wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet) visibility, the applications must [integrate with the Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md). During integration, the application must specify the appropriate `alwaysVisible` input parameter while instantiating the `AuthProvider` and choose one of the wallet visibility modes:

* Widget Mode
* Full UI Mode

## Full UI Mode

`alwaysVisible = true`

By default, `alwaysVisible` is set to `true` ensuring that the wallet is always displayed on the application window after Auth SDK initialization and user login.

Developers can choose to position the wallet widget on the screen using the `position` parameter. By default, it shows up on the bottom right of the screen. The wallet shows the user's account balance and provides the interface to add/switch networks and send/receive native/custom tokens. Users can minimize and return to the wallet screen using this always-visible widget on the application screen.

<img alt="wallet full ui mode" src="/img/an_wallet_full_ui_mode.png" width="85%"></img>

## Widget Mode

`alwaysVisible = false`

If `alwaysVisible` is set to `false`, then the wallet screen does not show up on the application window after Auth SDK initialization and user login, until a user action triggers a blockchain transaction. 

Each blockchain transaction requires user review and approval. This review request is displayed using the wallet screen and stays visible until the user takes an action. Once the user takes action, the request disappears and the user cannot access the wallet screen until another blockchain transaction is triggered.  Users cannot add or switch networks or view their wallet balance or initiate send/receive of native/custom tokens via the wallet in this mode.

<img alt="wallet widget mode" src="/img/an_wallet_widget_mode.png" width="85%"></img>

## User Experience

The table below summarizes how `alwaysVisible` parameter specified during Auth SDK initialization in the application code controls the user experience. For step-by-step instructions see [how to configure Arcana wallet visibility mode]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md) guide.

| Wallet UI Mode | Flag | User Experience|
| :------ | :----- | :----------- |
| Full UI | `alwaysVisible = true` <br></br>(default)  | 1. Arcana Wallet is always visible on the application screen. |
|         |  | 2. Users can minimize the wallet and it shows as a small widget on the application screen. |
|         |  | 3. Users can access any of the supported [wallet features]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletfeatures.md) using the Arcana wallet screen at any point in time. |
|         |  | 4. When a user action triggers a blockchain transaction, the wallet screen switches to the notification screen, and the user can approve or reject the request. If the wallet is minimized, a red dot is shown and when the user selects it, the wallet notification screen comes up. It displays the current blockchain request waiting for user action. If the user was using the wallet screen to perform other operations such as switching the network, when a notification arrives, in that case, a red dot shows on the notification tab of the wallet. Other requests queue up until the user takes action on the first one.|
| Widget | `alwaysVisible = false` | 1. Arcana wallet is not visible on the application screen by default. It shows up only when a user action triggers a blockchain transaction. The user request notification screen is displayed for user action. Once the user takes an action, the wallet screen disappears.|
|       |  | 2. Users cannot minimize the wallet if this mode is selected by the application.|
|       |  | 3. Users cannot access any of the supported [wallet features]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletfeatures.md) through the wallet.|
|       |  | 4. When a user action triggers a blockchain transaction, the Arcana wallet screen pops up. It disappears after the user takes an action. If there are other blockchain transactions that show up while the user has not reviewed the current request, those will stay hidden and queued up. After the user action for the first action, subsequent actions will result in the Arcana wallet screen showing up for other requests one by one.  For multiple blockchain transactions, the user will see a series of pop-ups, and then after a user action, those will disappear. There is no way for the user to ignore them or perform another action on the application.|

