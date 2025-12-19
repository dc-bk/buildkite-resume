#!/usr/bin/env bash

set -euo pipefail

OUTPUT_FILE="experience-${FROM}-${TO}-${BUILDKITE_STEP_ID}.md"

cat <<EOF > "$OUTPUT_FILE"
### ${JOB_TITLE} at ${COMPANY}
#### ${FROM} - ${TO}
Skills: ${SKILLS}
EOF
