#!/bin/bash

echo "Resetting assessment..."

rm -rf company

rm -rf secret

rm -rf evidence/screenshots

mkdir -p evidence/screenshots

bash scripts/setup.sh

echo ""

echo "Assessment reset."
