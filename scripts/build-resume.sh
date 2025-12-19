#!/usr/bin/env bash

set -euo pipefail

OUTPUT_FILE="resume.md"

buildkite-agent artifact download "experience-*.md" tmp
buildkite-agent artifact download "education-*.md" tmp

{
  echo "# Dyego Costa"
  echo

  echo "## Professional Experience"
  echo
  for file in tmp/experience-*.md; do
    cat "$file"
    echo
  done

  echo "## Academic"
  echo
  for file in tmp/education-*.md; do
    cat "$file"
    echo
  done
} > "$OUTPUT_FILE"

buildkite-agent artifact upload "$OUTPUT_FILE"
