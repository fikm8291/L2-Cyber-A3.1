#!/bin/bash

echo "Resetting lab..."

rm -rf company
rm -rf secret

bash scripts/setup.sh

echo ""
echo "Lab reset complete."
