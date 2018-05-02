#!/bin/bash

sudo docker run --net=host -e DISPLAY -v /tmp/.x11-unix -v ~/projects:/root/projects -it ventureum_test /bin/bash


