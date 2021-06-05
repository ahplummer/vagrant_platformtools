#!/bin/bash

docker run -v $(pwd):/host -v ~/.aws:/root/.aws -it ahplummer/og_platform_eng:latest /bin/zsh