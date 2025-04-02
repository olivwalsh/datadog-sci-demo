# Datadog Source Code Integration demo

This is a small Docker-compose with:
- the Datadog agent. It requires adding a `config.env` file, see `config.env.example`
- a Node.js server instrumented with tracing
- a small Go client that will periodically create traffic on the server


Run with:
```sh
export COMMIT=$(git rev-parse HEAD | cut -c -7)
docker compose up
```
