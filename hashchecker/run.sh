#!/bin/bash
sudo ansible-playbook export.yml -k
sudo ansible-playbook hashcheck.yml
