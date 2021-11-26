#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome-sonar:gallium" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
