#!/usr/bin/env bash

# If you ever get this message
#   Waiting for another flutter command to release the startup lock
# And you have no patience (like me). Then this script will kill dart and make it work againTM

echo "Killing Dart"

killall -9 dart

exit 0