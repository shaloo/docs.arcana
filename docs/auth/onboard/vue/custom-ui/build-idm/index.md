---
alias: index-vue-build-iam-providers
title: 'Build Custom IAM Auth'
description: 'List of custom IAM Providers that are supported by Arcana Auth and how to build user authentication for onboarding Vue Web3 app users in apps integrated with the Arcana SDK.'
arcana:
  root_rel_path: ../../../../..
---

# Build Custom IAM Auth

Developers can choose to **not** use the plug-and-play login UI and instead build a custom login UI to onboard users.

In this case, developers must build custom login UI themselves. This custom login UI must call appropriate user onboarding functions offered by the {{config.extra.arcana.sdk_name}} for every custom IAM provider that they wish to provide as an onboarding option to the users.

[[vue-build-iam-cognito-auth|Cognito :fontawesome-brands-aws:]]{ .md-button }

[[vue-build-iam-firebase-auth|Firebase :material-firebase:]]{ .md-button }