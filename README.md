# Docker image based on rubensa/node-chrome with sonarqube-scanner installed

This is a Docker image based on [rubensa/node-chrome](https://github.com/rubensa/docker-node-chrome) with sonarqube-scanner installed.

## Building

You can build the image like this:

```
#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome-sonar:dubnium" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
```

## Running

You can run the container like this (change --rm with -d if you don't want the container to be removed on stop):

```
#!/usr/bin/env bash

prepare_docker_timezone() {
  # https://www.waysquare.com/how-to-change-docker-timezone/
  ENV_VARS+=" --env=TZ=$(cat /etc/timezone)"
}

prepare_docker_timezone

docker run --rm -it \
  --name "node-chrome-sonar" \
  ${ENV_VARS} \
  rubensa/node-chrome-sonar:dubnium
```

## Connect

You can connect to the running container like this:

```
#!/usr/bin/env bash

docker exec -it \
  node-chrome-sonar \
  bash -l
```

## Stop

You can stop the running container like this:

```
#!/usr/bin/env bash

docker stop \
  node-chrome-sonar
```

## Start

If you run the container without --rm you can start it again like this:

```
#!/usr/bin/env bash

docker start \
  node-chrome-sonar
```

## Remove

If you run the container without --rm you can remove once stopped like this:

```
#!/usr/bin/env bash

docker rm \
  node-chrome-sonar
```
