Choose between persistent and non-persistent session types to manage whether the user must re-login to the app after closing the browser or they are automatically logged in within a specified window of time.

In the *Manage Apps* screen, select the app card, and click on the configuration profile to view setting details. You will see the app configuration settings dashboard screen. In the LHS navigation, select **Configure > Session Management** settings. 

<figure markdown="span">
  ![Session Type]({{config.extra.arcana.img_dir}}/an_db_session_mngt.{{config.extra.arcana.img_gif}}){ .an-screenshots }
  <figcaption>Session Management</figcaption>
</figure>

You can view and change the session type or the *Require login after* time setting later as well. Apps that require the user to be immediately logged out automatically, if they close the browser window without explicitly logging out, should choose the default **Non-Persistent** setting.

!!! an-note "Persistent Session"

      When selecting the persistent session type, specify the 'Require log in after` value. This setting is not required for non-persistent sessions. The specified time determines how long the session persists, allowing users to close and reopen the browser without needing to log in again.

<figure markdown="span">
  ![Session Type]({{config.extra.arcana.img_dir}}/an_db_session_mngt.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Session Management</figcaption>
</figure>