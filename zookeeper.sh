#!/bin/bash

set -e

ansible-playbook -i inv/zookeeper_inventory --ask-become-pass zookeeper.yml
