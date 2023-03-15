#!/usr/bin/env bash

docker stop centos7sipcmd2
docker build -t centos7sipcmd2 -f DockerfileCentos7 .
docker run -it --rm --cap-add SYS_NICE --security-opt seccomp:unconfined --name centos7sipcmd2 centos7sipcmd2 bash
