??? an-note "Compact Mode"

      While creating the `AuthProvider`, use `connectoOptions` to optionally choose the [[concept-plug-and-play-auth#compact-modal|compact mode]] for the plug-and-play login UI.

      ```js

      connectOptions: {
            compact: true // default - false
      },
      ```
      <figure markdown="span">
        <img src="{{config.extra.arcana.img_dir}}/relnote_1.0.8_compact_login.{{config.extra.arcana.img_png}}" alt="Login UI Options" class="an-screenshots width_50pc"/>
        <figcaption>Login UI Options</figcaption>
      </figure>