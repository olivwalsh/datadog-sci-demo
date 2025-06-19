#!/bin/bash

# Extract Git metadata for SCI (Source Code Integration)
export DD_GIT_REPOSITORY_URL=$(git config --get remote.origin.url 2>/dev/null || echo "unknown")
export DD_GIT_COMMIT_SHA=$(git rev-parse HEAD 2>/dev/null || echo "unknown")
export DD_TAGS="git.commit.sha:${DD_GIT_COMMIT_SHA},git.repository_url:${DD_GIT_REPOSITORY_URL}"

docker compose up
