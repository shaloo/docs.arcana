# Configuration Profiles

A configuration profile stores the Arcana Auth SDK usage settings for social login and wallet experience. Each registered app has two profiles:

- Testnet
- Mainnet

Use Arcana Auth SDK to view and update these profiles. By default, new apps use a Testnet profile. To create a Mainnet profile, you can either:

- Copy the Testnet profile
- Create a new Mainnet profile

Each app gets one unique Client ID per profile, one for Testnet and one for Mainnet.

When integrating a Web3 app with Arcana Auth SDK, specify the Testnet Client ID or Mainnet Client ID based on deployment. Note that wallet addresses will change when switching between Testnet and Mainnet profiles.
