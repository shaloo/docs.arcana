!!! an-warning "Apps using IAM Providers"

      Apps usually use {{config.extra.arcana.sdk_name}} for user onboarding and blockchain transaction signing. Authentication providers must be set up in the {{config.extra.arcana.dashboard_name}} before integrating with the SDK.

      Some apps might use third-party IAM providers like AWS Cognito for authentication but still use {{config.extra.arcana.sdk_name}} to access {{config.extra.arcana.wallet_name}}. The setup is different since third-party IAM providers support authentication verifiers like Google directly.

      Developers only need to set up the IAM provider in the {{config.extra.arcana.dashboard_name}}. They don't need to configure authentication verifiers that work directly with the IAM providers. Use the IAM provider's console, like Cognito Developer Console, to set up authentication verifiers like Google, not the {{config.extra.arcana.dashboard_name}}.