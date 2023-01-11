---
slug: /troubleshooting
id: idtroubleshooting
sidebar_custom_props:
  cardIcon: 📕
arcana:
  root_rel_path: .
toc_depth: 2
---

# Troubleshooting Guide

This troubleshooting guide will cover common issues that users may encounter when using the Arcana Auth SDK for user onboarding and signing blockchain transactions. Whether you are experiencing issues logging in, accessing your wallet, or making transactions, we hope this guide will help you get back up and running smoothly.

## Configuration Issues

---

### Cannot change storage region from North America to Europe

Storage Region can be configured for any application using the dashboard just once.  This setting cannot be changed later, but other application settings such as social authentication provider settings can be reconfigured at any time. To change the storage region, you must [delete the dApp from the dashboard and then configure it again]({{page.meta.arcana.root_rel_path}}/faq/faq_db.md).

### Cannot turn off UI for wallet mode

{% include "./text-snippets/warn_config_wallet_ui.md" %}

### Aggregate login does not work with GitHub

**Scenario**

Developer logs into the Arcana Dashboard using social authentication provider P1. For the very first login, the dashboard brings up 'create new dApp' workflow allowing the developer to register a new application and obtain a unique **App Address** say Addr1. Now if the developer logs out and logs back in using a different social authentication provider P2, Arcana Network can recognize that the login is by the same developer so it brings up the 'monitor dashboard' screen for appAddress=Addr1 that was earlier registered by this same developer.  This happens provided the developer has the same email ID associated with both providers P1 and P2.

If the user has a different email ID associated with providers P1 and P2 then during the second login using a different provider, the same developer cannot be recognized and associated with the developer that registered the appAddress=Addr1. The dashboard considers login with a new provider (different email ID) as a new identity and assumes this is a fresh login by a new developer. It brings up 'create new dApp' workflow allowing this 'new' developer to register the application.

If one of the provider is GitHub, then even if the same email ID is associated with all providers, Arcana Network may fail to associate GitHub identity of the same developer with other providers.  Instead of bringing up the 'monitor dashboard' for appAddress=Addr1, it brings up the first login specific workflow, 'create new dApp' and expects the same user to register a new application.

How can a developer make sure that Arcana Network can successfully associate the GitHub account of a developer with other social authentication providers, if same email ID is used in every provider account?

**Solution**

The [aggregate login]({{page.meta.arcana.root_rel_path}}/concepts/authtype/aggregatelogin.md) feature of Arcana Network allows an application developer to login into the dashboard using any supported social authentication mechanism and register and configure their application. The same application is associated with multiple social accounts that the developer uses to login. This feature works only if the developer has the exact same email ID associated with all the social OAuth providers. This allows Arcana Network to recognize the developer irrespective of any social OAuth used to login into the dashboard. What this means is, every time this developer logs into the dashboard, (s)he will be able to see the same application that is configured by them.

With GitHub, the behavior is different, only if the GitHub user settings are not in place.  To ensure the same behavior as other social authentication providers in case of GitHub, make sure that you specify the following details in GitHub Settings:

1. In your GitHub profile setting, allow your email to be visible
2. In the GitHub Email Settings preferences, make sure you do not select the checkbox which says 'Keep my email address private'.

Refer to figure below for details:

![GitHub Profile email visible](/img/an_trbs_gh_issue_visible_email.png)
![GitHub Email Settings not private](/img/an_trbs_gh_issue_email_not_private.png)

<!--
---

## Application Tooling Issues

---

### Failed to integrate with Arcana SDK due to polyfill issues

Polyfill errors are often encountered by a vast majority of Web3 libraries and applications using node.js libraries. These are often reported in [stackoverflow](https://stackoverflow.com/a/65556946) and in the context of [Vite](https://github.com/vitejs/vite/discussions/3126).

The polyfilling issues result in developers not being able to import the Arcana SDKs at all in their applications. Bundlers complain or otherwise you may see runtime errors as shown in the [example](https://github.com/facebook/create-react-app/issues/11756) below.

```
If you want to include a polyfill, you need to:
	- add a fallback 'resolve.fallback: { "os": require.resolve("os-browserify/browser") }'
	- install 'os-browserify'
If you don't want to include a polyfill, you can use an empty module like this:
	resolve.fallback: { "os": false }
 @ ./src/config.ts 5:0-28 8:0-13
 @ ./src/index.tsx 17:0-66 27:19-27 29:23-43 30:23-43 34:35-60
 ```

 While integrating with Arcana SDKs, if your application encounters similar polyfill errors while using bundlers such as Vue-CLI, or CRA, follow these steps to fix them.  Other bundlers or toolchains may require their own solutions. Some toolchains may do this by default and require no further modification. You can also refer to [sample code](https://github.com/arcana-network/test-vite-app/blob/master/vite.config.js) for details.

#### Vue-CLI

With Vue-CLI it’s relatively easy to address polyfill issues. Simply add “node-polyfill-webpack-plugin” and that’s all you need.

```javascript
const { defineConfig } = require('@vue/cli-service')
const NodePolyfillPlugin = require('node-polyfill-webpack-plugin')

module.exports = defineConfig({
  configureWebpack: {
    plugins: [
      new NodePolyfillPlugin()
    ]
  }
})
```

#### CRA

CRA by default doesn’t allow customizing Webpack configuration. The recommended way to address polyfill issues is to use “react-app-rewired”  with a configuration like this.

!!! note

      You need to exclude “console” otherwise it’ll fail.

```javascript
const NodePolyfillPlugin = require('node-polyfill-webpack-plugin')

module.exports = {
  webpack: (config, env) => {
    config.plugins.push(new NodePolyfillPlugin({
      excludeAliases: ['console']
    }))
    return config
  }
}
```

#### Vite

Besides installing all the required poly-fills, Vite can enable poly-fills per dependency as shown below:

```javascript
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

import { NodeGlobalsPolyfillPlugin } from '@esbuild-plugins/node-globals-polyfill'
import { NodeModulesPolyfillPlugin } from '@esbuild-plugins/node-modules-polyfill'
import rollupNodePolyFill from 'rollup-plugin-polyfill-node'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      // This Rollup aliases are extracted from @esbuild-plugins/node-modules-polyfill,
      // see https://github.com/remorses/esbuild-plugins/blob/master/node-modules-polyfill/src/polyfills.ts
      // process and buffer are excluded because already managed
      // by node-globals-polyfill
      util: 'rollup-plugin-polyfill-node/polyfills/util',
      sys: 'util',
      events: 'rollup-plugin-polyfill-node/polyfills/events',
      stream: 'rollup-plugin-polyfill-node/polyfills/stream',
      path: 'rollup-plugin-polyfill-node/polyfills/path',
      querystring: 'rollup-plugin-polyfill-node/polyfills/qs',
      punycode: 'rollup-plugin-polyfill-node/polyfills/punycode',
      url: 'rollup-plugin-polyfill-node/polyfills/url',
      http: 'rollup-plugin-polyfill-node/polyfills/http',
      https: 'rollup-plugin-polyfill-node/polyfills/http',
      os: 'rollup-plugin-polyfill-node/polyfills/os',
      assert: 'rollup-plugin-polyfill-node/polyfills/assert',
      constants: 'rollup-plugin-polyfill-node/polyfills/constants',
      _stream_duplex:
        'rollup-plugin-polyfill-node/polyfills/readable-stream/duplex',
      _stream_passthrough:
        'rollup-plugin-polyfill-node/polyfills/readable-stream/passthrough',
      _stream_readable:
        'rollup-plugin-polyfill-node/polyfills/readable-stream/readable',
      _stream_writable:
        'rollup-plugin-polyfill-node/polyfills/readable-stream/writable',
      _stream_transform:
        'rollup-plugin-polyfill-node/polyfills/readable-stream/transform',
      timers: 'rollup-plugin-polyfill-node/polyfills/timers',
      console: 'rollup-plugin-polyfill-node/polyfills/console',
      vm: 'rollup-plugin-polyfill-node/polyfills/vm',
      zlib: 'rollup-plugin-polyfill-node/polyfills/zlib',
      tty: 'rollup-plugin-polyfill-node/polyfills/tty',
      domain: 'rollup-plugin-polyfill-node/polyfills/domain'
    }
  },
  optimizeDeps: {
    esbuildOptions: {
      // Node.js global to browser globalThis
      define: {
        global: 'globalThis'
      },
      // Enable esbuild polyfill plugins
      plugins: [
        NodeGlobalsPolyfillPlugin({
          process: true,
          buffer: true
        }),
        NodeModulesPolyfillPlugin()
      ]
    }
  },
  build: {
    rollupOptions: {
      plugins: [
        // Enable rollup polyfills plugin
        // used during production bundling
        rollupNodePolyFill()
      ]
    }
  }
})
```

!!! caution

    The vite configuration example above demonstrates a generic configuration that covers all libraries. You need to specify only the ones that are referred to by your application.

Make sure you update the dependency for polyfills in `package.json` file as well. Here is an example of a `package.json` file:

```json
{
  "name": "test-vite-app",
  "private": true,
  "version": "0.0.0",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@arcana/storage": "https://testnet-dev.s3.dualstack.ap-south-1.amazonaws.com/storage-1654680842-1e5926ffe590fad67d03aa149673f94e43f0773b9130374f306d37ea.tar",
    "vue": "^3.2.25"
  },
  "devDependencies": {
    "@esbuild-plugins/node-globals-polyfill": "^0.1.1",
    "@esbuild-plugins/node-modules-polyfill": "^0.1.4",
    "@vitejs/plugin-vue": "^2.3.3",
    "crypto-browserify": "^3.12.0",
    "rollup-plugin-polyfill-node": "^0.9.0",
    "string_decoder": "^1.3.0",
    "vite": "^2.9.9"
  }
}
```

For a complete sample app that addresses polyfill issues - refer to [sources in GitHub](https://github.com/arcana-network/test-vite-app/).

-->

---

## Auth Issues

---

### Error: Wallet is not initialized.

![Wallet Not Initialized Error](/img/trbs_wallet_not_init.png)

This error is caused due to incorrect integration of the Auth SDK.  While integrating with the Auth SDK, you need to perform the following key steps in the suggested order:

First, install the Auth SDK.
   
{% include "./code-snippets/auth_install.md" %}

Next, create an `AuthProvider` instance. 

{% include "./code-snippets/import_auth.md" %} 

{% include "./code-snippets/new_auth.md" %}

Lastly, initialize the `AuthProvider`. This is important as it initializes the embedded Arcana wallet.  Only after a successful login, the wallet is visible in the context of an application. 

{% include "./code-snippets/init_auth.md" %}

!!! caution

      If an application integrates with the Auth SDK, it must follow these steps above before calling any other SDK method such as `getProvider()` or `connect()` or `loginWithSocial('providerstring')`.
