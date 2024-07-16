```js hl_lines="2"
const auth = new AuthProvider(
  "xar_test_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", // App client ID
  { 
    alwaysVisible: false,     // default: true, wallet always visible
    connectOptions: {
      compact: true           // default: false, regular plug-and-play login UI
    },
    position: 'left',         // default: right
    setWindowProvider: true,  // default: false, window.ethereum not set
    theme: 'light',           // default: dark
})
```
