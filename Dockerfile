FROM debian:11.6
RUN apt update && apt install -y git build-essential flex bison libssl-dev libelf-dev bc debhelper rsync kmod cpio python3 ninja-build pkg-config libglib2.0-dev libpixman-1-dev nasm acpica-tools && rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/python3 /usr/local/bin/python
COPY ./entrypoint.sh /entrypoint.sh
COPY ./entrypoint_user.sh /entrypoint_user.sh
ENTRYPOINT /entrypoint.sh
