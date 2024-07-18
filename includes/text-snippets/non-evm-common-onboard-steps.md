{% include "./text-snippets/note-onboarding-considerations.md" %}

### Plug-and-Play Login UI

{% include "./code-snippets/auth_plugnplay.md" %}

<figure markdown="span">
  ![Plug-and-Play Login UI]({{config.extra.arcana.img_dir}}/an_plug_n_play_auth.{{config.extra.arcana.img_png}}){.an-screenshots-noeffects .width_35pc }
  <figcaption>Plug-and-Play Login UI</figcaption>
</figure>

!!! an-warning "No plug-and-play support for Firebase authentication."

      {% include "./text-snippets/warn_firebase_no_pnp.md" %}

### Custom Login UI

#### Social Provider

The example below shows how to onboard users in a custom login UI via {{page.meta.arcana.social_provider}}:

{% include "./code-snippets/auth_social_login.md" %}

#### Passwordless

**Login with link**

{% include "./code-snippets/auth_pwdless.md" %}

**Login with OTP**

{% include "./code-snippets/auth_pwdless_otp.md" %}