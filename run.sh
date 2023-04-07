#!/usr/bin/env bash

set -euo pipefail

docker run $(docker load < $(nix-build docker.nix) | cut -d' ' -f3)
