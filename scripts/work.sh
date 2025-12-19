#!/usr/bin/env bash

set -euo pipefail

OUTPUT_FILE="experience-${BUILDKITE_STEP_ID}.md"

cat <<EOF > "$OUTPUT_FILE"
### ${JOB_TITLE} (${COMPANY})
#### ${FROM} - ${TO}
Skills: ${SKILLS}
EOF
