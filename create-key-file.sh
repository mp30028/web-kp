#!/bin/bash

set -eu;

echo ${KP_KEYFILE} > /tmp/.keyx;
truncate -s -1 /tmp/.keyx;
