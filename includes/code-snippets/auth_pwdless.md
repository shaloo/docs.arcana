```js
const login = await auth.loginWithOTPStart(`${email}`)
await login.begin()

if(login.isCompleteRequired) {
  await loginWithOTPComplete(`${otp}`, onMFARequired() => {
    // Hide overlay(if used in the app)
  })
}
```

!!! caution "Deprecated: loginWithLink"

      ```js
      await auth.loginWithLink(`${email}`)
      ```

