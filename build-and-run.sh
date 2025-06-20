#!/bin/bash

# Set Git metadata for APM telemetry tagging
export DD_GIT_REPOSITORY_URL="https://github.com/olivwalsh/datadog-sci-demo"
export DD_GIT_COMMIT_SHA=$(git rev-parse HEAD)
export DD_TAGS="git.commit.sha:$(git rev-parse HEAD),git.repository_url:https://github.com/olivwalsh/datadog-sci-demo"

docker compose up
