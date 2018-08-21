#!/bin/bash

set -e

ansible-playbook -i inv/kafka_inventory kafka.yml
