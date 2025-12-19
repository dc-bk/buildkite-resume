#!/bin/bash

set -euo pipefail

OUTPUT_FILE="education-${BUILDKITE_STEP_ID}.md"

echo "- ${COURSE_NAME} (${FROM} - ${TO})" > "$OUTPUT_FILE"
