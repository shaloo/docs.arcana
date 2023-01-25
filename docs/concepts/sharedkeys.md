---
slug: /conceptsharedkeys
id: idconceptsharedkeys
sidebar_custom_props:
  cardIcon: 💠
arcana:
  root_rel_path: ..
---

# Shared Key Space

Arcana Auth associates cryptographic key pair with every authenticated user. Keys are associated with the user's wallet address and are the gateway to Web3 applications and signing blockchain transactions, accessing wallet assets and more. You can equate keys to 'passwords' in the Web2 applications but they are more secure. User's self-sovereign identity is realized through these secure keys that are not stored anywhere in the Arcana ecosystem. Multiple key shares are available in the decentralized key generation subsystem nodes and no single node has access to user's keys.

In the case of Web2 applications users typically use the same password across different applications.  If you translate this behavior in Web3 applications, developers may want to allow the application users to use the same wallet address across different applications that use the Arcana Auth protocol. Similar to the Web2 application behavior of allowing same password across diverse applications, this option of allowing authenticated users to have the same wallet address across Web3 applications may result in simpler user experience but at the risk of reduced security. Any malicious actor that is able to get into one of the applications could potentially do so for all the other applications that are relying on the same user password or wallet address. 

This ability to have the same wallet address for authenticated users across applications in the Arcana ecosystem requires enabling of secured **Shared Key Space**. The shared key space feature is a special feature targeted at providing a Web2-like user experience in Web3 but it is not enabled by default for security reasons.

By default, Arcana uses the highest level of security whereby user's application keys or the wallet address is **not** shared across different applications that integrate with the Arcana Auth. As a result, the same user will be assigned a different wallet address when logging into a different application in the Arcana ecosystem. 

To change this default behavior and ensure that application user has the **same wallet address** experience irrespective of which application they log into in the Arcana ecosystem, the application developer must verify themselves and get whitelisted to use the Arcana shared key space.  Using shared key space does not result in any keys sharing with any third party or application developers or users. It simply ensures that an authenticated user will always be assigned the same wallet address across all Arcana applications and in a secure manner.

At present, the developer verification and whitelisting process for enabling shared key space is manual but we plan to automate it in the future. At the time of application registration, developer has to fill an online form and submit it in order to utilize the shared key space feature for the application users. Developers need to monitor the application status for approval. 

At Arcana, the safety and privacy Web3 application users is our top priority. That's why we have implemented strict verification processes for developers before they can access the **Shared Key Space** feature in their applications. This ensures that users are protected from malicious activities. To take advantage of this feature, please visit the Arcana Dashboard and enable Shared Key Space while registering your app.

!!! caution

      Developers can create app entry to register their application and choose to opt for the 'Shared Keys' feature. It may take some time for manual verification.  Meanwhile, if developers continue to integrate their application with the Auth SDK while waiting for the shared keys feature, and allow application users to log in, the users will be assigned wallet addresses. These wallet address may change later once the request for using shared keys feature is granted.