#!/usr/bin/env bash
set -eu

SRC_DIR=$(cd $(dirname ${BASH_SOURCE:-$0})/../; pwd)

cd $SRC_DIR
rocker --nvidia --x11 --user --network=host \
	-e SHELL=/bin/bash --volume \
	${HOME}/.ssh:/home/$(whoami)/.ssh:ro \
	$(pwd)/src:/home/$(whoami)/ros2_ws/src \
	$(pwd)/build:/home/$(whoami)/ros2_ws/build \
	$(pwd)/install:/home/$(whoami)/ros2_ws/install \
	$(pwd)/log:/home/$(whoami)/ros2_ws/log \
	$(pwd)/docker/.ros:/home/$(whoami)/.ros \
	$(pwd)/docker/.gazebo:/home/$(whoami)/.gazebo \
	$(pwd)/docker/.bashrc:/home/$(whoami)/.bashrc \
	$(pwd)/docker/.inputrc:/home/$(whoami)/.inputrc \
	-- ghcr.io/tiryoh/ros2:galactic
