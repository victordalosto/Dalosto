#!/usr/bin/env bash
# Install Visual studio Code extensions.
# OS: LINUX-UBUNTU
cat ./vscode/extensions.txt | while read extension || [[ -n  $extension ]];
do
	code --install-extension $extension
done 