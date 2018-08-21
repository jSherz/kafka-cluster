#!/bin/bash

set -e

ansible-playbook -i inv/zookeeper_inventory zookeeper.yml
