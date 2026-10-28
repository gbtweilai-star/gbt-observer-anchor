#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_observer_anchor info
PYTHONPATH=src python -m gbt_observer_anchor check --payload '{}'
PYTHONPATH=src python -m gbt_observer_anchor run   --payload '{}'
