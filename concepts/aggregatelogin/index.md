# Aggregate login

Aggregate Login in Arcana Auth SDK links users with the same email across social logins as one user. Different emails create separate developer accounts.

For example, logging in with Google and Twitter using the same email counts as one account, while different emails create separate accounts.

```
graph LR
  A[[User]] -.-> B(Social Login Provider A) -.-> E{Email ID Same?} ==Yes==> F>User ID 1];
  E{Email ID Same?} ==No==> G>New unique User ID];
  A[[User]] -.-> M(Social Login Provider B) -.-> E{Email ID Same?};
  A[[User]] -.-> C(Passwordless Login) -.-> E{Email ID Same?};
```

Limited Auth Provider Support

Aggregate login feature does not work for the following providers:

- Cognito
- Firebase
- Steam
- Telegram
- Twitter
