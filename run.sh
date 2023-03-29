#!/bin/bash

if [[ ! -d /root/astar ]]; then
  cd /root
  echo "Creating config directory..."
  mkdir astar
fi

NODE_NAME="AstarOnFlux"
echo -e "Starting Astar Node: $NODE_NAME"
astar-collator \
  --state-pruning archive \
  --rpc-cors all \
  --name ${NODE_NAME} \
  --chain astar \
  --base-path /root/astar \
  --execution Wasm \
  --rpc-external \
  --ws-external \
  --ws-max-connections 500
