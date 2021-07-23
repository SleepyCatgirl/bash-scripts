#!/usr/bin/env bash
set -euo pipefail


echo none > /sys/block/sda/queue/scheduler
