#!/bin/bash
declare -a dockercontexts=( "./apps/docker-node-example" "./apps/docker-rails-example")
printf '%s\n' "${dockercontexts[@]}" | jq -R . | jq -cs .
