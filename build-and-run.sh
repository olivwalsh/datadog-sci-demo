#!/bin/bash

# Extract Git metadata for APM Source Code Integration (SCI)
export DD_GIT_REPOSITORY_URL="git-provider.example/me/my-repo"  # Update with your actual repository URL
export DD_GIT_COMMIT_SHA=$(git rev-parse HEAD)
export DD_TAGS="git.commit.sha:$(git rev-parse HEAD),git.repository_url:git-provider.example/me/my-repo"

docker compose up
