#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DIR="$(dirname "$SCRIPT_DIR")"
bash $DIR/packages/run2.sh