```js title="App.vue" hl_lines="8 10"
<template>
  <h1>Hello {{ msg }}</h1>
</template>

<script setup lang="ts">
import { ref } from "vue";

import { getAuthInstance } from "@/auth";
const msg = ref<string>("World! 123");
const myAuth = await getAuthInstance();
</script>
```