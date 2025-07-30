# ADKG Validator Onboarding Guide

This guide is for **trusted partners**, known as 'validators,' selected for the Arcana ADKG protocol. Validators run crucial [ADKG validator nodes](../../concepts/validator-nodes/), central to Arcana's DKG subsystem decentralization.

To become a validator, you must be a trusted partner of Arcana and run a validator node. In return, validators earn rewards based on node uptime and key generation output

## Entry/ Exit

Initially, Arcana partners exclusively with trusted validators. Future processes will allow validator entry and exit. The DKG subsystem deployed at Mainnet comprises of seven nodes, four owned and run by Arcana, and the rest by trusted partners.

## Node Setup

Arcana DKG is a permissioned system that only allows a trusted group of partners to join. To become an external validator node in the DKG subsystem, partners must be whitelisted by Arcana. This process involves providing an Ethereum address, which will be associated with a private key that verifies the node's identity and grants it access to the Arcana DKG subsystem.

### Prerequisites

1. Validator node
1. Monitoring tools
1. Have a Hashicorp cloud server (or self-hosted server) preferably on a separate server from the validator node
1. Enable a [KV Secrets Engine](https://developer.hashicorp.com/vault/docs/secrets/kv) with the path value set to `secret`.

```
vault secrets enable -path=secret kv

```

HashiCorp KV Setup

**HW Configuration**

| Minimum | Recommended | | --- | --- | | 4 GB RAM | 8-16 GB RAM | | 500 GB SSD | 1 TB SSD | | 4 core CPU | 8 core CPU |

### Steps

#### 1. Node Configuration

**Operating System**:

Preferably deploy Ubuntu Linux v20.04.4 LTS or higher.

**`ulimit` Settings**

Use one of the following commands to check the `ulimit` settings for open file descriptors (default):

```
ulimit -n

```

```
ulimit -aS

```

If the soft limit for **open files** is lower than 20,000 use the following instructions to update it:

- Edit the Linux Kernel parameter file `/etc/sysctl.conf`

```
  vi /etc/sysctl.conf 

```

Add " fs.file-max = 20000 " in the file. To apply the changes, execute:

```
sysctl -p

```

- Change the ulimit setting in the file `/etc/security/limits.conf`

```
vi /etc/security/limits.conf

```

Specify the following limits in the `/etc/security/limits.conf` file:

```
 * soft nofile 20000
 * hard nofile 20000

```

After making these changes to both files, make sure that you reboot the ADKG node via one of these commands:

```
reboot

```

```
init 6

```

- Validate that `ulimit` for open files has been updated to 20000 by using the command:

```
ulimit -n

```

**Network Settings**:

1. Obtain a domain name for your server and set up associated SSL certificates.

1. Keep the following ports open on the validator node:

   - 26656
   - 1080

**Setup DKG Software**

1. Copy the [DKG binary v1.0.1](https://github.com/arcana-network/adkg/releases/tag/v1.0.1) locally on your node.
1. Change the binary file permissions to 'executable'.

#### 2. Validator Secrets

The process of setting up validator secrets involves two steps. First, you must initiate a secrets configuration manager. Then, you must generate secret keys for the validator node. Currently, only the Hashicorp vault is supported.

**2a. Initiate Secrets Configuration Manager**

Use Hashicorp to initiate the secret configuration manager. Make sure you have already enabled the KV secrets engine as listed in the prerequisites, before running the command listed below.

```
dkg secret generate --secret-config=<path> --token=<token> --server-url=<url> 

```

**Command Line Options**

`--secret-config`

Specify the `path` where the secret manager configuration will be written. Defaults to the `secretConfig.json` file in the current directory.

`--token`

The access token for the Hashicorp vault. The access token is used for accessing [the KV secret storage engine](https://developer.hashicorp.com/vault/docs/secrets).

`--server-url`

The API URL of the Hashicorp Vault server.

**2b: Generate Secret Keys**

After initiating the secret configuration manager, generate keys for the validator node. **The following command will provide the Node Address, which should be shared with the Arcana Team**.

```
dkg secret init --secret-config=<path>

```

**Command Line Options**

`--secret-config`

The `path` specified in the previous step where the secret manager configuration will be written. Defaults to `secretConfig.json` file in the current directory.

Follow Start Ceremony

Start the node **only** when you have set up the validator secret and shared the Node Address with the Arcana Team.

#### 3. Start Ceremony

Validator DKG nodes cannot be started individually; all participating nodes must start at the same time for the protocol to work properly. Keep an eye on this space for updates on when to start your DKG node as a validator.

The key generation begins only when **all** the nodes in the DKG subsystem, Arcana DKG nodes, and all validator DKG nodes, have joined in.

#### 4. Node Startup

Before you start the validator node, make sure you have completed all the prerequisites and followed the steps defined in the **DKG Start Ceremony**.

Node Start Command

You can run the `dkg start` command and specify validator node configuration details using **one** of ways listed below:

- run `dkg start` with a JSON configuration file that contains all the configuration, or
- run `dkg start` with various flags/parameter values on the command line itself

Registration of validator node happens automatically using the information that is provided in the configuration file or via the command line.

Restart

If this is not the first time you are starting the node, please make sure that you perform a clean re-start. Refer to the 'Stop/Restart' section below to see how to perform a clean restart.

**Option1: Use Configuration File**

```
dkg start --config=/path/to/config.json

```

config.json

```
{
  ipAddress: "172.23.22.231",      //Example value. Replace with public IP Addres of your node
  domain: "keyserver.example.com", // Example value. Do not specify https://
  dataDir: "/path/to/data",        // Ensure dataDir directory access permissions allow DKG binary to access it
  secretConfig: "/path/to/secret/config.json", //Use appropriate file access permissions for DKG binary to access it
  port: "3000",
}

```

**Option 2: Use Command Line**

```
dkg start --secret-config=/path/to/secret/config --data-dir=/path/to/data --domain=keyserver.example.com --ip-address=172.23.22.231  --server-port=3000

```

**Node Start Options**

`--secret-config`

The path to secret configuration. See 'Validator Secrets section' for details.

`--data-dir`

The data directory where all the node-specific and shared data will be stored, this data will have to be backed up regularly by the nodes to maintain some redundancy.

Keep your data directory strictly private!

The data directory specified above is used for storing multiple items that are secret. Besides initializing the directories for holding the [Tendermint](https://tendermint.com/) state and key share data, it also stores private keys on a file.

This directory should be secured and kept fully secret. If someone were to obtain access to this directory and the secrets, they could potentially impersonate you as a node in the network.

`--domain`

The domain name for the validator node that you are running. This is needed to enable users and other nodes to be able to access the validator node via RPC calls.

`--ip-address`

The IP Address of the validator node that is used by DKG nodes for communicating within themselves.

`--server-port=3000`

The port number at which the **http server** is listening for requests.

SSL Termination

The SSL termination can happen on an **Nginx** server which can then map the port 443 to the `--server-port` specified in the `dkg start` command above.

#### 5. Stop/Restart Node

You need to kill the running DKG process to stop the validator node.

We are working on providing a cleaner way to stop and restart the node. Until then, follow these steps to cleanly restart your validator node:

1. Stop all nodes.
1. Replace the DKG binary with the [latest one](https://github.com/arcana-network/adkg/releases).
1. Remove `dkg.sock` file, if present.
1. DO NOT REMOVE the directory that your specified for `--data-dir`.
1. Start the nodes using the `dkg start` command.

## Responsibilities

- Perform all the required technical node operations done by each DKG node.
- Maintain a high uptime.
- Back up the validator node reliably.
- Always use the latest release of the DKG binaries.
- Check node-related services and processes daily and monitor health.
- Use node monitoring tools. We plan to support [Prometheus](https://prometheus.io/) in the future, which will allow partners to monitor their nodes using the Grafana dashboard.
- Communicate any issues with the Arcana team on the DKG Slack channel.
- **Monitoring Metrics**: At present, besides CPU and memory, we do not have any other specific metrics that need to be monitored for the validator node. Stay tuned for updates.
- Provide feedback and suggestions.

## Migrating Validator Node

If you want to migrate the validator node to another server (for backup or temporary purposes) there are a couple of options available. Make sure you have addressed the prerequisites first before migrating the validator setup to another node.

Migration Prerequisites

Before migrating a validator node to another physical or virtual server, make sure that the following are addressed:

- Backup the 'data' directory of the validator node
- Backup the Hashicorp vault data on a separate node

**Case 1: Migrating to a Node with same Domain and IP Address**

Follow the steps listed under [starting a validator node](#node-setup) section except the instructions in step 2b to bring up a new validator node. Now start the new node and join in the ADKG protocol. The other nodes are not required to be restarted for migration to work.

**Case 2: Migrating to a Node with same Domain and different IP Address**

You need to notify the Arcana team as this may require coordinating with other validator node operators. Follow the steps listed under [starting a validator node](#node-setup) section except the instructions in step 2b to bring up a new validator node. Before starting up the node, wait for all the other nodes in the ADKG subsystem to restart in a synchronized manner. In this case, all validator nodes have to restart together.

**Case 3: Migrating to a Node with different IP Address and Domain**

We **do not support** migrating the validator node to a different one that has a different domain and a different IP address. In future releases too, the new node with a different domain and IP address will not be treated as a reincarnate of the previous node but as a brand 'new' replacement node. Adding such a node will follow Arcana ADKG recovery and repair protocol enhancements. In that case, there is no use backing up the validator node data. Our protocol will re-generate and repair key shares where applicable, in case one node goes down and a different one joins in the ADKG subsystem.

Backup Data Directory of the Validator Node

ADKG protocol is under active development for robustness and key repair, regeneration mechanisms. We highly recommend that you back up the 'data' directory of the validator node in any case.

## Rewards

We are working on providing more details regarding validator rewards that answer the following questions:

- What are the incentives for validator node providers?
- When are the rewards realized and how?

Check out [Validator FAQ](../../faq/faq-validator/) if you have any questions or write to us: 📨 [support@arcana.network](mailto:support@arcana.network)

## Questions?

Write to us at the special validator slack channel if you have any further queries.
