FROM tiryoh/ros2:foxy
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
    ros-foxy-ros2cli && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get update && \
    apt-get install -y \
    ros-foxy-realtime-tools \
    ros-foxy-controller-interface \
    ros-foxy-control-msgs \
    ros-foxy-hardware-interface \
    ros-foxy-controller-manager \
    ros-foxy-ros2-control-test-assets \
    ros-foxy-nav2-bringup \
    ros-foxy-ecl-threads \
    ros-foxy-robot-localization \
    ros-foxy-gazebo-ros2-control \
    ros-foxy-ros2-control \
    ros-foxy-velodyne-gazebo-plugins && \
    rm -rf /var/lib/apt/lists/*
