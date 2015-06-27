#!/bin/sh
# vdemeester/obnam entrypoint

DESTINATION="/obnam/destination"
SOURCE="/obnam/source"

# TODO check if source is empty

obnam -r /obnam/destination /obnam/source
