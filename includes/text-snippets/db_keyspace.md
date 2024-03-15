There are two keyspace options: [[concept-keyspace-type|App-specific and Global Keys]].

You can either use the default, highly secure **App-specific** keyspace option or **Global** keyspace depending upon the desired level of security and user experience required for the application. 

![Mainnet Keyspace options](/img/an_db_keyspace_options.png){.an-screenshots}

Select **Global Keyspace** and click **Verify**. This will bring up a verification form. Fill out the verification form, and click **Submit**. 

<img class="an-screenshots-noeffects" alt="Global Keyspace Verify" src="/img/an_db_global_keys_verify.png" width="25%" />

You can check the status of **Global Keyspace** verification by using the **Keyspace** screen. After submitting the form, you will see the status as **In Review**.

![Mainnet Global keyspace in review](/img/an_db_global_keys_inreview.png){.an-screenshots}

The status will change to **Approved** once verification is complete. You can integrate your application with the {{config.extra.arcana.sdk_name}} but do not deploy it until the verification is complete. Otherwise, users that log in before verification is complete may see different wallet addresses after the process is complete.

![Mainnet Global keyspace approved](/img/an_db_global_keys_approved.png){.an-screenshots}
