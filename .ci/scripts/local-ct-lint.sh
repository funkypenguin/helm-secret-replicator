#!/bin/bash

docker run --rm -it -w /repo -v `pwd`:/repo quay.io/helmpack/chart-testing ct lint --all --debug
docker run --rm -it -w /repo -v `pwd`:/repo quay.io/helmpack/chart-testing ct list-changed --config .ci/ct-config.yaml