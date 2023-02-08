```js title="_App.vue" hl_lines="7 11 12"
<template>
  <div id="app">
  </div>
</template>

<script>
import { getAuthInstance } from './lib/auth'
export default {
  name: 'App',
  async mounted () {
    // eslint-disable-next-line no-unused-vars
    const a = await getAuthInstance()
    // Provider available at a.provider
  }
}
</script>
```