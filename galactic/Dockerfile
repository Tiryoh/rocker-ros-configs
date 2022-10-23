FROM tiryoh/ros2:galactic
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
    ros-galactic-ros2cli && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get update && \
    apt-get install -y \
    ros-galactic-realtime-tools \
    ros-galactic-controller-interface \
    ros-galactic-control-msgs \
    ros-galactic-hardware-interface \
    ros-galactic-controller-manager \
    ros-galactic-ros2-control-test-assets \
    ros-galactic-nav2-bringup \
    ros-galactic-ecl-threads \
    ros-galactic-robot-localization \
    ros-galactic-gazebo-ros2-control \
    ros-galactic-ros2-control \
    ros-galactic-velodyne-gazebo-plugins && \
    rm -rf /var/lib/apt/lists/*
