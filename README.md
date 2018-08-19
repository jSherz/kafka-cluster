# kafka-cluster

This project is a collection of Ansible playbooks that I'm building alongside
learning the basics of Kafka cluster administration with the
[Kafka Cluster Setup & Administration](https://www.udemy.com/kafka-cluster-setup)
course on Udemy. At present, it hard codes my local domain name (int.jsherz.com)
and doesn't have some of the more important parts of a Kafka cluster (e.g.
requiring authentication over SSL) so isn't really suitable for wider use.

The configured cluster has three Zookeeper nodes and three Kafka nodes, kept
apart in two clusters.
