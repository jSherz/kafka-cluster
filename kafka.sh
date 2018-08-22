#!/bin/bash

set -e

ansible-playbook -i inv/kafka_inventory --ask-become-pass kafka.yml
