#!/bin/sh
#
# Git Questions update-repos shell script
#
DIRS=$(find . -maxdepth 1 -type d)
GIT=$(which git)

for DIR in $DIRS; do
	if [ -d "$DIR/.git" ]; then
		echo "Pull for $DIR..."
		(cd "$DIR" && $GIT pull -q)
	fi
done
