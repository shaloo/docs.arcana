# Custom Login UI

Apps using the Arcana Auth SDK can onboard users via one of the two options:

- Plug-and-play Login UI: A built-in, ready-to-use login UI for [plug-and-play authentication](../plug-and-play-auth/).
- Custom Login UI: Build a custom login UI from scratch.

This decision is made at the time of SDK integration. This choice is not governed by any settings made via the Arcana Developer Dashboard.

After installing and integrating with the Arcana Auth SDK, create the `AuthProvider`, use `init` function to initialize the provider, create the necessary user interface hooks and call the `loginWithSocial` function with the desired social login provider to onboard users. For email-based onboarding, utilize the `loginWithOTP`(deprecated), `loginWithOTPStart` and `loginWithOTPComplete` functions, which sends users a verification link on the specified user email.

Here is an example of [how to onboard users via 'Google' as the social login provider and a custom login UI](../../auth/onboard/vanilla/custom-ui/build-social/google-oauth/). See [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/) for more details.
