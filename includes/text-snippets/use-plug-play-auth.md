# Plug-and-Play Login UI

Use the built-in, [[concept-plug-and-play-auth|plug-and-play login UI modal]] to quickly onboard users in a {{page.meta.arcana.app_type}} app integrated with the {{config.extra.arcana.wagmi_sdk_name}}. 

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

## Prerequisites

* [[register-app-auth|Register]] the Wagmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-wagmi-app|Integrate]] {{page.meta.arcana.app_type}} app, create and initialize the `AuthProvider`.

## Steps

### 1. `connect`

Use the `connect()` function to bring up the plug-and-play pop-up modal in the app context and display the available options for user onboarding. Only those options are displayed that were earlier configured by the developer using the {{config.extra.arcana.dashboard_name}}. The passwordless login option is enabled by default.

{% include "./code-snippets/auth_plugnplay.md" %}

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" style="margin: auto" src="{{config.extra.arcana.img_dir}}/an_plug_n_play_auth.{{config.extra.arcana.img_png}}" alt="Plug-and-Play Login UI" />
  <figcaption>Plug-and-Play Login UI</figcaption>
</figure>

{% include "./text-snippets/pnp-compact-mode.md" %}

{% include "./text-snippets/jwt_token.md" %}.

!!! an-warning "No plug-and-play support for Firebase authentication."

      {% include "./text-snippets/warn_firebase_no_pnp.md" %}

!!! an-warning "No plug-and-play support for Telegram authentication."

      {% include "./text-snippets/warn_telegram_no_pnp.md" %}

## What's Next?

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-gen| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}

