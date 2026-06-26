#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
RESET="\033[0m"

score=0
total=12

echo ""
echo "==============================="
echo " User Access Control Checker"
echo "==============================="
echo ""

check_folder() {

if [ -d "$1" ]; then
echo -e "${GREEN}✔${RESET} $1 exists"
score=$((score+1))
else
echo -e "${RED}✘${RESET} $1 missing"
fi

}

check_folder company/HR
check_folder company/Finance
check_folder company/Marketing
check_folder company/Management
check_folder company/Public

echo ""

secretperm=$(stat -c "%a" secret)

if [ "$secretperm" = "700" ]; then
echo -e "${GREEN}✔ Secret folder secured (700)${RESET}"
score=$((score+2))
else
echo -e "${RED}✘ Secret folder should be 700${RESET}"
fi

echo ""

echo "Current permissions"

ls -ld company/*

echo ""

ls -ld secret

echo ""

echo "Score"

echo "$score / $total"

echo ""

if [ "$score" = "$total" ]; then
echo -e "${GREEN}Excellent!${RESET}"
else
echo "Check your permissions and try again."
fi
