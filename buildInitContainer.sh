#!/bin/bash

cargo build --release && \
cp target/release/polkadot . && \

podman build -t docker.io/nielswps/relay-chain-node-init:latest -f InitContainerDockerfile && \
podman push nielswps/relay-chain-node-init && \

rm polkadot