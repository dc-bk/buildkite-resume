#!/usr/bin/env bash

set -euo pipefail

OUTPUT_FILE="resume.md"

mkdir -p tmp

echo "--- Downloading artifacts"
buildkite-agent artifact download "experience-*.md" tmp
buildkite-agent artifact download "education-*.md" tmp


echo "--- Building resume"
{
  echo "# Dyego Costa"
  echo

  echo "## Professional Experience"
  echo
  for file in $(ls tmp/experience-*.md | sort); do
    cat "$file"
    echo
  done

  echo "## Academic"
  echo
  for file in $(ls tmp/education-*.md | sort); do
    cat "$file"
    echo
  done
} > "$OUTPUT_FILE"

echo "--- Uploading resume"
buildkite-agent artifact upload "$OUTPUT_FILE"
