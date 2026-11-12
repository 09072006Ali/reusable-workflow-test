#!/usr/bin/env bash
set -euo pipefail

GREETING="${1:-Salam}"
ENVIRONMENT="${2:-dev}"

echo "$GREETING ($ENVIRONMENT mühiti)"

# Sadə test: 2 + 2 = 4
if [ $((2 + 2)) -eq 4 ]; then
  echo "✅ Test keçdi"
else
  echo "❌ Test uğursuz oldu"
  exit 1
fi
