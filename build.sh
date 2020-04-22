#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome-sonar" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
