# Multi-Factor Authentication

Arcana Auth SDK enhances wallet security with multi-factor authentication (MFA).

MFA adds an extra verification step when accessing the wallet from a new browser or device. It stores a local share of the private key on the user's device. If lost, users can recover it using security questions or a recovery pin during login from a new device or browser. Once recovered, this information is not needed again for the same device or browser.

MFA improves security by requiring more than just an email or social identifier. Even if an attacker gains access, they cannot bypass MFA without the security questions or recovery pin. Additionally, MFA protects user keys even if the [ADKG subsystem](../adkg/) is compromised.

## Enabling MFA

The MFA feature requires no SDK usage configuration from the developer. Users can choose to enable MFA for the Arcana wallet at the first login or later by entering security questions and a recovery PIN.

MFA: Under the Hood

### Security Questions

Users can select any 5 security questions from the provided options or create custom questions. These questions and answers together serve as a seed to generate a share of the user's private key.

### Recovery Pin

Users must also create a 6-digit alphanumeric PIN. This PIN encrypts and stores one of the multiple verification factors used by MFA. It serves as a backup, stored securely with Arcana, in case the user changes devices or loses the locally stored encrypted component in their browser's cache.

Cannot Disable MFA

MFA, once enabled, cannot be disabled to ensure maximum security.

## User Experience with MFA

Without MFA, users experience no change when logging into a Web3 app from different devices or browsers using Arcana Auth SDK. They can log in and access the Arcana wallet as usual. However, if their social provider account is compromised, their access to the wallet and keys is at risk.

With MFA enabled, users face a different login process **only when they use a new device or browser**. They must either answer three security questions or enter a security PIN when logging into the Web3 app to access the Arcana wallet.
