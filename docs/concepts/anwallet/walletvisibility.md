---
alias: concept-wallet-visibility
title: 'Wallet Visibility'
description: 'Learn how to manage wallet UI visibility in the context of the app using the Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Wallet Visibility

Web3 app developers can control {{config.extra.arcana.wallet_name}} visibility by setting the `alwaysVisible` flag when instantiating the `AuthProvider` during app integration with the {{config.extra.arcana.sdk_name}}.

=== "`alwaysVisible=true`"

    By default, `alwaysVisible` is set to `true` and the wallet is displayed immediately after a user logs into the app that is integrated with the {{config.extra.arcana.sdk_name}}. As the wallet is always visible in the context of the app, an authenticated user has full access to all the Web3 wallet operations supported by the {{config.extra.arcana.wallet_name}}.

    <figure markdown="span">
      <img alt="Wallet In-app Visibility: Enabled" src="{{config.extra.arcana.img_dir}}/an_wallet_full_ui_mode.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
      <figcaption>Wallet In-app Visibility: Enabled</figcaption>
    </figure>

=== "`alwaysVisible=false`"

    If `alwaysVisible` is set to `false`, then the {{config.extra.arcana.wallet_name}} UI does not show up on the application window immediately after a user logs in. The {{config.extra.arcana.wallet_name}} UI is displayed only when a blockchain transaction is triggered that requires the user's approval or if the app issues the `showWallet()` method.

    <figure markdown="span">
      <img alt="Wallet In-app Visibility: Disabled" src="{{config.extra.arcana.img_dir}}/an_wallet_widget_mode.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
      <figcaption>Wallet In-app Visibility: Disabled</figcaption>
    </figure>

{% include "./text-snippets/warn_appmode_alwaysvisible_ux.md" %}

