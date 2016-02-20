# drone-scalingo

[![Build Status](http://beta.drone.io/api/badges/drone-plugins/drone-scalingo/status.svg)](http://beta.drone.io/drone-plugins/drone-scalingo)
[![Coverage Status](https://aircover.co/badges/drone-plugins/drone-scalingo/coverage.svg)](https://aircover.co/drone-plugins/drone-scalingo)
[![](https://badge.imagelayers.io/plugins/drone-scalingo:latest.svg)](https://imagelayers.io/?images=plugins/drone-scalingo:latest 'Get your own badge on imagelayers.io')

Drone plugin to deploy or update a project on Scalingo

## Binary

Build the binary using `make`:

```
make deps build
```

### Example

```sh
./drone-scalingo <<EOF
{
    "repo": {
        "clone_url": "git://github.com/drone/drone",
        "owner": "drone",
        "name": "drone",
        "full_name": "drone/drone"
    },
    "system": {
        "link_url": "https://beta.drone.io"
    },
    "build": {
        "number": 22,
        "status": "success",
        "started_at": 1421029603,
        "finished_at": 1421029813,
        "message": "Update the Readme",
        "author": "johnsmith",
        "author_email": "john.smith@gmail.com",
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

Build the container using `make`:

```
make deps docker
```

### Example

```sh
docker run -i plugins/drone-scalingo <<EOF
{
    "repo": {
        "clone_url": "git://github.com/drone/drone",
        "owner": "drone",
        "name": "drone",
        "full_name": "drone/drone"
    },
    "system": {
        "link_url": "https://beta.drone.io"
    },
    "build": {
        "number": 22,
        "status": "success",
        "started_at": 1421029603,
        "finished_at": 1421029813,
        "message": "Update the Readme",
        "author": "johnsmith",
        "author_email": "john.smith@gmail.com"
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
