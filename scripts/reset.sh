#!/bin/bash

echo ""
echo "Resetting assessment..."

rm -rf company
rm -rf secret
rm -rf evidence

bash scripts/setup.sh

echo ""
echo "Assessment has been reset."
