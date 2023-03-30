#!/bin/bash

if [[ ! -d /root/astar ]]; then
  cd /root
  echo "Creating config directory..."
  mkdir astar
fi

NODE_NAME="AstarOnFlux"
echo -e "Starting Astar Node: $NODE_NAME"
astar-collator \
  --pruning archive \
  --rpc-cors all \
  --name ${NODE_NAME} \
  --chain astar \
  --base-path /root/astar \
  --state-pruning archive \
  --blocks-pruning archive \
  --ws-external \
  --ws-max-connections 500 \
  --enable-evm-rpc \
  --ethapi=txpool,debug,trace \
  --wasm-runtime-overrides /var/lib/astar/wasm \
