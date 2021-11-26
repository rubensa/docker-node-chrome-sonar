#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome-sonar:fermium" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
