#!/bin/sh
# vdemeester/obnam entrypoint

DESTINATION="/obnam/destination"
SOURCE="/obnam/source"
CONFIG="/obnam/config"

OBNAM_OPTS=""

if test -n "$1"; then
    DESTINATION=$1
    shift
fi

if ! test "$(ls -A ${SOURCE})"; then
    echo "$SOURCE folder is empty, skipping backup"
    exit 1
fi

if test -r ${CONFIG}; then
    echo "Use ${CONFIG} as configuration"
    OBNAM_OPTS="${OBNAM_OPTS} --config=${CONFIG} $SOURCE"
else
    OBNAM_OPTS=" -r $DESTINATION $SOURCE"
fi

echo "Backup using ${OBNAM_OPTS}"
obnam backup $OBNAM_OPTS
