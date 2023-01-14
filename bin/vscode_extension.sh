#!/usr/bin/env bash
# Install Visual studio Code extensions.
# OS: LINUX-UBUNTU
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DIR="$(dirname "$SCRIPT_DIR")"
cat $DIR/vscode/extensions.txt | while read extension || [[ -n  $extension ]];
do
	code --install-extension $extension
done 