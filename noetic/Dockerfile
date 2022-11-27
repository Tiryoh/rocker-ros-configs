FROM tiryoh/ros:noetic
RUN rm /etc/apt/apt.conf.d/docker-clean
RUN apt-get update && \
    apt-get install -y terminator && \
    rm -rf /var/lib/apt/lists/*
# Avoid org.freedesktop.DBus.Error.Spawn.ExecFailed
# https://forums.bunsenlabs.org/viewtopic.php?pid=59732#p59732
RUN mkdir -p /root/.config/terminator && \
    echo '[global_config]' | tee -a /root/.config/terminator/config && \
    echo '    dbus = "False"' | tee -a /root/.config/terminator/config
