#!/usr/bin/env bash

set -eo pipefail

if [ "$TO" = "Present" ]; then
  exit 75
fi
