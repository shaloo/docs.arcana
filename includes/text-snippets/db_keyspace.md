There are two keyspace options: [[concept-keyspace-type|App-specific and Global Keys]].

**App-specific** keyspace is the default.

<figure markdown="span">
  ![Mainnet Keyspace Options]({{config.extra.arcana.img_dir}}/an_db_keyspace_options_switch.{{config.extra.arcana.img_gif}}){ .an-screenshots }
  <figcaption>Keyspace Options</figcaption>
</figure>

<!---
To enable **Global Keyspace** the app must be verified. Select the option and click **Verify**. Fill out the verification form, and click **Submit**. 

<figure markdown="span">
  <img class="an-screenshots width_35pc" alt="Request Global Keyspace" src="{{config.extra.arcana.img_dir}}/an_db_global_keys_verify.{{config.extra.arcana.img_png}}"/>
  <figcaption>Request Global Keyspace</figcaption>
</figure>

You can check the status of **Global Keyspace** verification on the **Keyspace** settings page. After submitting the form, the status will be displayed as **In Review**.

<figure markdown="span">
  ![Global Keyspace Request Status]({{config.extra.arcana.img_dir}}/an_db_global_keys_inreview.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Global Keyspace Request Status</figcaption>
</figure>

The status will change to **Approved** once verification is complete. 

You can integrate your application with the {{config.extra.arcana.sdk_name}} but do not deploy it until the verification is complete. Otherwise, users who log into the app before verification may see different wallet addresses when they re-login after the verification.

<figure markdown="span">
  ![Global Keyspace Request Approved]({{config.extra.arcana.img_dir}}/an_db_global_keys_approved.{{config.extra.arcana.img_png}}){ .an-screenshots }
  <figcaption>Global Keyspace Request Approved</figcaption>
</figure>

Note: AR-8473 fixes - commented out no longer required
--->