```js hl_lines="2"
const auth = new AuthProvider(
  "xar_live_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", // App client ID
  { 
    position: 'left',         // default: right
    theme: 'light',           // default: dark
    setWindowProvider: true,  // default: false, window.ethereum not set
    connectOptions: {
      compact: true           // default: false, regular plug-and-play login UI
    },
})
```
