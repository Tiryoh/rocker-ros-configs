#!/usr/bin/env bash
set -eu

ROS_WS_ROOT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0})/../; pwd)
SRC_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
DOCKER_TAG="ghcr.io/tiryoh/ros"
ROS_DISTRO=${1:-'galactic'}
NVIDIA=""

if which nvidia-smi; then
	NVIDIA="--nvidia"
	echo "NVIDIA driver detected"
fi

echo $ROS_DISTRO

# --privileged is not recommended, but it is required to use --network=host for now
# https://github.com/osrf/rocker/issues/13

rocker $NVIDIA --x11 --user \
	--network=host --privileged \
	-e SHELL=/bin/bash --volume \
	${HOME}/.ssh:/home/$(whoami)/.ssh:ro \
	${ROS_WS_ROOT_DIR}/${ROS_DISTRO}:/home/$(whoami)/ros2_ws \
	${SRC_DIR}/.ros:/home/$(whoami)/.ros \
	${SRC_DIR}/.gazebo:/home/$(whoami)/.gazebo \
	${SRC_DIR}/.bashrc:/home/$(whoami)/.bashrc \
	${SRC_DIR}/.inputrc:/home/$(whoami)/.inputrc \
	-- ${DOCKER_TAG}:${ROS_DISTRO}
