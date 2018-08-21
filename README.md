# kafka-cluster

This project is a collection of Ansible playbooks that I'm building alongside
learning the basics of Kafka cluster administration with the
[Kafka Cluster Setup & Administration](https://www.udemy.com/kafka-cluster-setup)
course on Udemy. At present, it hard codes my local domain name (int.jsherz.com)
and doesn't have some of the more important parts of a Kafka cluster (e.g.
requiring authentication over SSL) so isn't really suitable for wider use.

The configured cluster has three Zookeeper nodes and three Kafka nodes, kept
apart in two clusters.

## Out of scope

This playbook doesn't include the basic setup and hardening of an instance. It
creates a single user (james) for basic admin tasks and uses the password
defined in `vars/secret-vars.yml`. For a real production deployment, a second
XFS partitioned disk would be required for Kafka logs and the instances
themselves would need the usual hardening, firewall, monitoring and log
shipping setup.

See:

* [CIS Benchmarks](https://learn.cisecurity.org/benchmarks)
* [OpenSCAP](https://www.open-scap.org)

## vars/secret-vars.yml

Use the file `vars/secret-vars.example.yml` as a template to create your own
`vars/secret-vars.yml`. Use the [Ansible vault](https://docs.ansible.com/ansible/latest/vault.html)
functionality to encrypt it.

## Running the playbook(s)

With the `vars/secret-vars.yml` setup, configure six hosts to run Zookeeper and
Kafka nodes. Set their hostnames in the files located in the `inv` folder and
ensure you can SSH into each of them. Adjust the `become_user` set in the
playbooks to the user you're connecting with. 

```bash
# Run Zookeeper playbook
./zookeeper.sh

# Run Kafka playbook
./kafka.sh
```

**NB:** See the caveats in "Out of scope" before attempting to use these
playbooks as a base for a production cluster.
