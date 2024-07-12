```js

import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi"

const auth = new AuthProvider('your-client-id');

const connector = new ArcanaConnector({ auth });
```

