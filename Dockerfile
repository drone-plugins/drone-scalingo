# Docker image for the Drone Scalingo plugin
#
#     cd $GOPATH/src/github.com/drone-plugins/drone-scalingo
#     make deps build
#     docker build --rm=true -t plugins/drone-scalingo .

FROM alpine:3.2

RUN apk update && \
  apk add \
    ca-certificates \
    git \
    openssh \
    curl \
    perl && \
  rm -rf /var/cache/apk/*

ADD drone-scalingo /bin/
ENTRYPOINT ["/bin/drone-scalingo"]
