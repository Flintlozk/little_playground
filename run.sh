#!/usr/bin/env bash
docker rm -f FacebookFanpageAPI
docker volume rm node_modules_fanpagesapi
docker volume create --name=node_modules_fanpagesapi --driver=local
docker run --name FacebookFanpageAPI -d -p 3425:3425 --restart=always fanpagesapi