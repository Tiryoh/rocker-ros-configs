FROM tiryoh/ros2:humble
RUN apt-get update && \
    apt-get install -y terminator && \
    rm -rf /var/lib/apt/lists/*
# Avoid org.freedesktop.DBus.Error.Spawn.ExecFailed
# https://forums.bunsenlabs.org/viewtopic.php?pid=59732#p59732
RUN mkdir -p /root/.config/terminator && \
    echo '[global_config]' | tee -a /root/.config/terminator/config && \
    echo '    dbus = "False"' | tee -a /root/.config/terminator/config
RUN apt-get update && \
    apt-get install -y --reinstall \
    ros-humble-ros2cli && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get update && \
    apt-get install -y \
    ros-humble-realtime-tools \
    ros-humble-controller-interface \
    ros-humble-control-msgs \
    ros-humble-hardware-interface \
    ros-humble-controller-manager \
    ros-humble-ros2-control-test-assets \
    ros-humble-nav2-bringup \
    ros-humble-robot-localization \
    ros-humble-gazebo-ros2-control \
    ros-humble-ros2-control \
    ros-humble-velodyne-gazebo-plugins && \
    rm -rf /var/lib/apt/lists/*
