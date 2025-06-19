#!/bin/bash
# APM Telemetry Tagging - Set Git metadata for container builds
export DD_GIT_COMMIT_SHA=$(git rev-parse HEAD)
echo $DD_GIT_COMMIT_SHA
docker compose up --build
