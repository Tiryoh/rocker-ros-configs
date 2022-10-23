#!/usr/bin/env bash
set -eu

ROS_WS_ROOT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0})/../; pwd)
SRC_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
DOCKER_TAG="ghcr.io/tiryoh/ros"
ROS_DISTRO=${1:-'galactic'}

echo $ROS_DISTRO

mkdir -p $ROS_WS_ROOT_DIR/$ROS_DISTRO/build
mkdir -p $ROS_WS_ROOT_DIR/$ROS_DISTRO/install
mkdir -p $ROS_WS_ROOT_DIR/$ROS_DISTRO/log
mkdir -p $SRC_DIR/.ros
mkdir -p $SRC_DIR/.gazebo

if [ -e $SRC_DIR/$ROS_DISTRO/Dockerfile ]; then
    cd $SRC_DIR/$ROS_DISTRO
    docker build -t $DOCKER_TAG:$ROS_DISTRO .
else
    echo "No Dockerfile"
    exit 1
fi
