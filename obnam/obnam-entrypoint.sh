#!/bin/sh
# vdemeester/obnam entrypoint

DESTINATION="/obnam/destination"
SOURCE="/obnam/source"

if test -n "$1"; then
    DESTINATION=$1
    shift
fi
# TODO check if source is empty
if ! test "$(ls -A ${SOURCE})"; then
    echo "$SOURCE folder is empty, skipping backup"
    exit 1
fi

echo "Backup ${SOURCE} to ${DESTINATION}"
obnam backup -r $DESTINATION $SOURCE
