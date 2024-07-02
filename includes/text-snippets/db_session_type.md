Choose between persistent and non-persistent session type to manage whether the user must re-login to the app after closing the browser or they are automatically logged in within a specified window of time.

In the *Manage Apps* screen, select the app card, and click on the configuration profile to view setting details. You will see the app configuration settings dashboard screen. In the LHS navigation, select **Configure > Session Management** settings. 

<figure markdown="span">
  ![Session Type]({{config.extra.arcana.img_dir}}/an_db_session_mngt.{{config.extra.arcana.img_gif}}){ .an-screenshots .width_85pc}
  <figcaption>Session Management</figcaption>
</figure>

You can view and change the session type or the *Require login after* time setting later as well. Apps that require the user to be immediately logged out automatically, if they close the browser window without explicitly logging out, should choose the default **Non-Persistent** setting.

When selecting the persistent session type, make sure to specify the time for which the session persists and allow the user to **not have to re-login** when they reopen the browser.

<figure markdown="span">
  ![Session Type]({{config.extra.arcana.img_dir}}/an_db_session_mngt.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc}
  <figcaption>Session Management</figcaption>
</figure>