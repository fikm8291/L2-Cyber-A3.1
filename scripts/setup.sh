#!/bin/bash

echo ""
echo "Setting up assessment..."

mkdir -p company

mkdir -p company/HR
mkdir -p company/Finance
mkdir -p company/Marketing
mkdir -p company/Management
mkdir -p company/Public

mkdir -p evidence/screenshots

mkdir -p secret

echo "Employee Records" > company/HR/employees.txt

echo "Annual Budget" > company/Finance/budget.txt

echo "Marketing Campaign" > company/Marketing/campaign.txt

echo "Management Strategy" > company/Management/strategy.txt

echo "Welcome to Northbridge!" > company/Public/news.txt

echo "Payroll Information" > secret/payroll.txt

chmod -R 755 company

chmod 755 secret

echo ""
echo "Assessment ready."
echo ""
