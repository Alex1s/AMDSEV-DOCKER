#!/usr/bin/env bash
set -x

addgroup --gid "$OUTSIDE_UID" "$OUTSIDE_USER"
adduser --uid "$OUTSIDE_UID" --gid "$OUTSIDE_UID" --disabled-password --gecos "" "$OUTSIDE_USER"

su -c /entrypoint_user.sh "$OUTSIDE_USER"
