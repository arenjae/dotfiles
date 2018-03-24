#!/usr/bin/env bash
acpilight "$@"
pkill -RTMIN+2 i3blocks
