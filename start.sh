#!/bin/bash

# Start nomad in agent/server configuration
/usr/src/nomad agent -dev &

# Allow nomad to start up
sleep 10

# Create and run the example redis job
/usr/src/nomad job init
/usr/src/nomad job run example.nomad

# Chill
while : ; do echo "Idling..."; sleep 600; done
