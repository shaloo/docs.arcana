```js
const accountType = await auth.provider.request({
  method: "_arcana_getAccountType",
});

console.log(accountType);
```
