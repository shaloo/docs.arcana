# IAM Providers Setup

[Cognito](cognito-oauth/) [Firebase](firebase-auth/)

Apps using IAM Providers

Apps usually use Arcana Auth SDK for user onboarding and blockchain transaction signing. Authentication providers must be set up in the Arcana Developer Dashboard before integrating with the SDK.

Some apps might use third-party IAM providers like AWS Cognito for authentication but still use Arcana Auth SDK to access Arcana wallet. The setup is different since third-party IAM providers support authentication verifiers like Google directly.

Developers only need to set up the IAM provider in the Arcana Developer Dashboard. They don't need to configure authentication verifiers that work directly with the IAM providers. Use the IAM provider's console, like Cognito Developer Console, to set up authentication verifiers like Google, not the Arcana Developer Dashboard.
