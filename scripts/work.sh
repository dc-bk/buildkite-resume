#!/usr/bin/env bash

set -euo pipefail

OUTPUT_FILE="experience.md"

cat <<EOF > "$OUTPUT_FILE"
## ${JOB_TITLE} (${COMPANY})
### ${FROM} - ${TO}
Skills: ${SKILLS}
EOF
