#!/bin/bash
docker build . --tag rgooler/fchat_pokerbot_ruby:latest
docker build -f Dockerfile.rpi . --tag rgooler/fchat_pokerbot_ruby:arm-latest
