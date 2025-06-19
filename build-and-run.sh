#!/bin/bash

# Set Git metadata environment variables for Datadog SCI
export DD_GIT_REPOSITORY_URL="https://github.com/olivwalsh/datadog-sci-demo"
export DD_GIT_COMMIT_SHA=$(git rev-parse HEAD)
export DD_TAGS="git.commit.sha:$(git rev-parse HEAD),git.repository_url:https://github.com/olivwalsh/datadog-sci-demo"

# Build and run with SCI metadata
docker compose build --build-arg DD_GIT_REPOSITORY_URL="$DD_GIT_REPOSITORY_URL" \
  --build-arg DD_GIT_COMMIT_SHA="$DD_GIT_COMMIT_SHA" \
  --build-arg DD_TAGS="$DD_TAGS"

docker compose up
