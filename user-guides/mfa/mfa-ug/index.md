# MFA Setup

Learn how Web3 apps integrated with the Arcana Auth SDK can enable **enhanced wallet security** by setting up [Multi-Factor Authentication (MFA)](../../../concepts/mfa/).

MFA Selection: User's Choice

The MFA feature can only be enabled by the user through the Arcana wallet UI. Developers cannot enable/disable MFA.

## Enable MFA

To enable MFA, log in to the app integrated with the Arcana Auth SDK using one of the available authentication mechanisms. At the very first login, the user is prompted to set up MFA. If the user decides not to enable MFA at the first login, it can be enabled later.

One-time Setting

Once configured, MFA cannot be disabled for the user's wallet account.

### First App Login

Click **Proceed** at the very first login when prompted to set up MFA.

MFA Setup

#### Security Questions

Answer all five security questions. Select pre-configured security questions via the dropdown or create your own by clicking the question field.

Security Questions

Save your Security Answers

When logging in from a new device, MFA will require you to either answer three security questions correctly or provide the PIN. Make sure you save the responses to the security questions and the PIN carefully.

#### Recovery PIN

Provide a 6-digit alphanumeric PIN as an additional recovery method.

MFA PIN Setup

MFA Enabled!

### Subsequent Logins

Log in to the app, access the Arcana wallet UI and click on the 'Profile' tab. Select **Setup Now** under the 'Enhanced Wallet Security' section. Choose **Proceed** to set up security questions, and set up a recovery PIN as described in the previous section.

Setup MFA via Profile Tab

## MFA Recovery

If a user logs into the app using a different device or browser, they will be required to regenerate this local MFA component on the new device. This is essential to confirm the user identity for wallet access.

This verification is done via the MFA prompt when logging on a new device. User can choose one of the options to verify:

- Enter the MFA recovery PIN.
- Answer three security questions correctly.

MFA Recovery

Once the user is verified, the local MFA factor is regenerated and the user will not be asked for it again on the same device or the browser app unless local storage is reset.

MFA Errors

| MFA Phase | Error Message | Cause | Corrective Action | | --- | --- | --- | --- | | MFA Setup | **Share expired. Please log in again to continue.** | If a user logs into the app and chooses to enable MFA, but fails to complete the MFA setup within 24 hours of login initiation, you will see this error. | This error can be resolved by making sure that once initiated, the user completes the MFA setup a few minutes before the session expires. | | MFA Setup | **Security questionnaire errors.** | These errors are displayed when the user is setting up MFA and specifying the security questions and answers. | User must answer all the required questions, each question should be unique and not repeated, an empty string is not allowed for a security question. | | MFA Setup | **PIN validation errors.** | These errors are displayed when the user is setting up the MFA PIN with invalid characters. | Make sure that a 6-digit alphanumeric PIN is provided during MFA setup. The PIN cannot have a space character and should have a minimum of 6 characters and a maximum of 25 characters. | | MFA Recovery | **Incorrect security answer.** | This error is displayed during MFA secret recovery process if the user fails to provide the correct answer to any of the three security questions. | Provide the correct answer or choose a different question for which you remember the answer. Alternatively, try using the correct PIN for completing the MFA secret recovery process. | | MFA Recovery | **Incorrect PIN.** | During MFA recovery, if the user chooses to use the PIN and enters an incorrect PIN, this error is displayed. | Use the correct PIN or try an alternative method of MFA recovery by answering the security questions correctly. | | MFA Recovery | **Computed address did not match the actual address** | This error occurs when the address computed on the user's local device does not match the one that is decrypted locally after retrieving it from the Arcana encrypted store. It can happen when somehow the local address component is tampered with or corrupted. | Simply clearing the app's local storage in the browser should allow the user to verify their identity via MFA and use the app. |
