??? an-tip "MultiversX Shard Selection"

      MultiversX uses [adaptive state sharding](https://docs.multiversx.com/technology/adaptive-state-sharding/) for horizontal scaling. Shards allow it to process far more transactions through parallelization, improving transaction throughput and efficiency. 

      Choose your shard once when registering a MultiversX app on the {{config.extra.arcana.dashboard_name}}. It cannot be changed later.

      By default, {{config.extra.arcana.company_name}} uses 'Shard 0' to deploy all app contracts and allocate wallet addresses for users. The benefit is that when addresses from the same shard interact with contracts on the same shard, latencies are much lower than in cross-shard interactions.