FROM golang:1.23-alpine

# SCI Git telemetry arguments and environment variables
ARG DD_GIT_REPOSITORY_URL
ARG DD_GIT_COMMIT_SHA
ENV DD_GIT_REPOSITORY_URL=${DD_GIT_REPOSITORY_URL}
ENV DD_GIT_COMMIT_SHA=${DD_GIT_COMMIT_SHA}

WORKDIR /usr/src/app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o client

CMD [ "/usr/src/app/client" ]
