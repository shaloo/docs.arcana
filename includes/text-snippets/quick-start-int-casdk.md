{% include "./code-snippets/import_ca.md" %}

{% include "./code-snippets/new_ca.md" %}

{% include "./code-snippets/init_ca.md" %}

!!! an-caution "Initialize First!"

    The app must use `await` until the `init()` call is complete, before invoking any of the other {{config.extra.arcana.ca_sdk_name}} functions listed in {% include "./text-snippets/casdkref_url.md" %}.