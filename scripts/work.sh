#!/bin/bash

set -euo pipefail

if [ "$FROM" == "Present" ]; then
  exit 75
fi
