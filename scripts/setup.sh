#!/bin/bash

echo ""
echo "Setting up AC 3.1 assessment..."

mkdir -p company/{HR,Finance,Marketing,Management,Public}
mkdir -p evidence
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
echo "All folders currently have open permissions."
echo "Students should now complete Tasks 1-8."
