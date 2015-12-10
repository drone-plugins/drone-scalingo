# drone-scalingo

[![Build Status](http://beta.drone.io/api/badges/drone-plugins/drone-scalingo/status.svg)](http://beta.drone.io/drone-plugins/drone-scalingo)
[![](https://badge.imagelayers.io/plugins/drone-scalingo:latest.svg)](https://imagelayers.io/?images=plugins/drone-scalingo:latest 'Get your own badge on imagelayers.io')

Drone plugin for deploying to Scalingo

## Usage

```sh
./drone-scalingo <<EOF
{
    "repo": {
        "clone_url": "git://github.com/drone/drone",
        "full_name": "drone/drone"
    },
    "build": {
        "event": "push",
        "branch": "master",
        "commit": "436b7a6e2abaddfd35740527353e78a227ddcb2c",
        "ref": "refs/heads/master"
    },
    "workspace": {
        "root": "/drone/src",
        "path": "/drone/src/github.com/drone/drone"
    },
    "vargs": {
        "app": "awesome",
        "force": true,
        "commit": true
    }
}
EOF
```

## Docker

Build the Docker container using `make`:

```sh
make deps build
docker build --rm=true -t plugins/drone-scalingo .
```

### Example

```sh
docker run -i plugins/drone-scalingo <<EOF
{
    "repo": {
        "clone_url": "git://github.com/drone/drone",
        "full_name": "drone/drone"
    },
    "build": {
        "event": "push",
        "branch": "master",
        "commit": "436b7a6e2abaddfd35740527353e78a227ddcb2c",
        "ref": "refs/heads/master"
    },
    "workspace": {
        "root": "/drone/src",
        "path": "/drone/src/github.com/drone/drone"
    },
    "vargs": {
        "app": "awesome",
        "force": true,
        "commit": true
    }
}
EOF
```
