#!/bin/sh

git stash -q --keep-index

# Run the 'dist' grunt task
grunt dist

# Capture the result
RESULT=$?

git stash pop -q

# Stop the commit on error
[ $RESULT -ne 0 ] && exit 1

# Otherwise, add the dist files to the repo
git add dist/*
exit 0