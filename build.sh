#!/usr/bin/env bash
set -eu

SRC_DIR=$(cd $(dirname ${BASH_SOURCE:-$0})/../; pwd)

mkdir -p $SRC_DIR/build
mkdir -p $SRC_DIR/install
mkdir -p $SRC_DIR/log
mkdir -p $SRC_DIR/docker/.ros
mkdir -p $SRC_DIR/docker/.gazebo

cd $SRC_DIR/docker
docker build -t ghcr.io/tiryoh/ros2:galactic .
