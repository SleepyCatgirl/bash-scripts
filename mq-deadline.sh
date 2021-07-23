#!/usr/bin/env bash
set -euo pipefail

echo mq-deadline > /sys/block/sda/queue/scheduler
