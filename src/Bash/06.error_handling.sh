#!/usr/bin/env bash -e

TMPFILE=$(tempfile)
trap 'echo "removing $TMPFILE"; rm -f $TMPFILE' INT TERM EXIT

echo TMPFILE=$TMPFILE
echo hello world > $TMPFILE
cat $TMPFILE

# gives user a chance to press CTRL-C
sleep 3

# false always returns an error
false

echo "NEVER REACHED"
