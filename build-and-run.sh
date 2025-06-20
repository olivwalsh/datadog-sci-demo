#!/bin/bash

# Extract Git metadata for APM telemetry tagging
export DD_GIT_REPOSITORY_URL=$(git config --get remote.origin.url)
export DD_GIT_COMMIT_SHA=$(git rev-parse HEAD)
export DD_TAGS="git.commit.sha:$(git rev-parse HEAD),git.repository_url:$(git config --get remote.origin.url)"

docker compose up
