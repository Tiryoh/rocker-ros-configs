FROM tiryoh/ros2:humble
RUN apt-get update && \
    apt-get install -y terminator && \
    rm -rf /var/lib/apt/lists/*
# Avoid org.freedesktop.DBus.Error.Spawn.ExecFailed
# https://forums.bunsenlabs.org/viewtopic.php?pid=59732#p59732
RUN mkdir -p /root/.config/terminator && \
    echo '[global_config]' | tee -a /root/.config/terminator/config && \
    echo '    dbus = "False"' | tee -a /root/.config/terminator/config
RUN rm /etc/apt/apt.conf.d/docker-clean
RUN apt-get update && \
    apt-get install -y --reinstall \
    ros-humble-ros2cli && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get update && \
    apt-get install -y \
    python3-colcon-clean \
    ros-humble-cartographer \
    ros-humble-cartographer-ros \
    ros-humble-controller-interface \
    ros-humble-controller-manager \
    ros-humble-control-msgs \
    ros-humble-gazebo-ros2-control \
    ros-humble-hardware-interface \
    ros-humble-nav2-bringup \
    ros-humble-realtime-tools \
    ros-humble-robot-localization \
    ros-humble-ros2-control \
    ros-humble-ros2-controllers \
    ros-humble-ros2-control-test-assets \
    ros-humble-rqt-tf-tree \
    ros-humble-velodyne-gazebo-plugins && \
    rm -rf /var/lib/apt/lists/*
