# drone-scalingo

[![Build Status](http://cloud.drone.io/api/badges/drone-plugins/drone-scalingo/status.svg)](http://cloud.drone.io/drone-plugins/drone-scalingo)
[![Gitter chat](https://badges.gitter.im/drone/drone.png)](https://gitter.im/drone/drone)
[![Join the discussion at https://discourse.drone.io](https://img.shields.io/badge/discourse-forum-orange.svg)](https://discourse.drone.io)
[![Drone questions at https://stackoverflow.com](https://img.shields.io/badge/drone-stackoverflow-orange.svg)](https://stackoverflow.com/questions/tagged/drone.io)
[![](https://images.microbadger.com/badges/image/plugins/scalingo.svg)](https://microbadger.com/images/plugins/scalingo "Get your own image badge on microbadger.com")
[![Go Doc](https://godoc.org/github.com/drone-plugins/drone-scalingo?status.svg)](http://godoc.org/github.com/drone-plugins/drone-scalingo)
[![Go Report](https://goreportcard.com/badge/github.com/drone-plugins/drone-scalingo)](https://goreportcard.com/report/github.com/drone-plugins/drone-scalingo)

> Warning: This plugin has not been migrated to Drone >= 0.5 yet, you are not able to use it with a current Drone version until somebody volunteers to update the plugin structure to the new format.

Drone plugin to deploy or update a project on Scalingo. For the usage information and a listing of the available options please take a look at [the docs](http://plugins.drone.io/drone-plugins/drone-scalingo/).

## Build

Build the binary with the following command:

```console
export GOOS=linux
export GOARCH=amd64
export CGO_ENABLED=0
export GO111MODULE=on

go build -v -a -tags netgo -o release/linux/amd64/drone-scalingo
```

## Docker

Build the Docker image with the following command:

```console
docker build \
  --label org.label-schema.build-date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
  --label org.label-schema.vcs-ref=$(git rev-parse --short HEAD) \
  --file docker/Dockerfile.linux.amd64 --tag plugins/scalingo .
```

## Usage

```console
docker run --rm \
  -e PLUGIN_APP=awesome \
  -e PLUGIN_FORCE=true \
  -e PLUGIN_COMMIT=true \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  plugins/scalingo
```
