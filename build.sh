#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome-sonar:erbium" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
