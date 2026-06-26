#!/bin/bash

echo ""
echo "======================================"
echo " Setting up User Access Control Lab"
echo "======================================"

mkdir -p company

mkdir -p company/HR
mkdir -p company/Finance
mkdir -p company/Marketing
mkdir -p company/Management
mkdir -p company/Public

mkdir -p evidence
mkdir -p evidence/screenshots

mkdir -p secret

touch company/HR/employees.txt
touch company/Finance/budget.txt
touch company/Marketing/campaign.txt
touch company/Public/company-news.txt
touch company/Management/strategy.txt

echo "CONFIDENTIAL PAYROLL DATA" > secret/payroll.txt

chmod -R 755 company
chmod 700 secret

echo ""
echo "Lab ready."
echo ""
echo "Open README.md to begin."
