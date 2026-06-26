#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
RESET="\033[0m"

score=0
total=22

echo ""
echo "=================================================="
echo "  AC 3.1 USER & GROUP ACCESS CONTROL CHECKER"
echo "=================================================="
echo ""

echo "-------------------------------"
echo " TASK 1 - SYSTEM STRUCTURE"
echo "-------------------------------"

if [ -d company ] && [ -d secret ]; then
    echo -e "${GREEN}✔ PASS${RESET} Required folders exist"
    ((score++))
else
    echo -e "${RED}✘ FAIL${RESET} Missing required folders"
fi

echo ""

echo "-------------------------------"
echo " TASK 2 - USERS"
echo "-------------------------------"

check_user() {
    if id "$1" &>/dev/null; then
        echo -e "${GREEN}✔${RESET} User '$1' exists"
        ((score++))
    else
        echo -e "${RED}✘${RESET} Missing user '$1'"
    fi
}

check_user hr_user
check_user finance_user
check_user marketing_user
check_user management_user

echo ""

echo "-------------------------------"
echo " TASK 3 - GROUPS"
echo "-------------------------------"

check_group() {
    if getent group "$1" >/dev/null; then
        echo -e "${GREEN}✔${RESET} Group '$1' exists"
        ((score++))
    else
        echo -e "${RED}✘${RESET} Missing group '$1'"
    fi
}

check_group hr
check_group finance
check_group marketing
check_group management

echo ""

echo "Checking group membership..."

check_membership() {
    if id -nG "$1" | grep -qw "$2"; then
        echo -e "${GREEN}✔${RESET} $1 belongs to $2"
        ((score++))
    else
        echo -e "${RED}✘${RESET} $1 is not a member of $2"
    fi
}

check_membership hr_user hr
check_membership finance_user finance
check_membership marketing_user marketing
check_membership management_user management

echo ""

echo "-------------------------------"
echo " TASK 4 - FOLDER OWNERSHIP"
echo "-------------------------------"

check_group_owner() {
    group=$(stat -c "%G" "$1" 2>/dev/null)

    if [ "$group" = "$2" ]; then
        echo -e "${GREEN}✔${RESET} $1 group ownership is $2"
        ((score++))
    else
        echo -e "${RED}✘${RESET} $1 should have group ownership $2"
    fi
}

check_group_owner company/HR hr
check_group_owner company/Finance finance
check_group_owner company/Marketing marketing
check_group_owner company/Management management

echo ""

echo "-------------------------------"
echo " TASK 5 - PERMISSIONS"
echo "-------------------------------"

check_permissions() {
    perms=$(stat -c "%a" "$1" 2>/dev/null)

    if [[ "$perms" == "750" || "$perms" == "770" ]]; then
        echo -e "${GREEN}✔${RESET} $1 permissions are $perms"
        ((score++))
    else
        echo -e "${RED}✘${RESET} $1 permissions are $perms (expected 750 or 770)"
    fi
}

check_permissions company/HR
check_permissions company/Finance
check_permissions company/Marketing
check_permissions company/Management

echo ""

echo "-------------------------------"
echo " TASK 6 - SECRET FOLDER"
echo "-------------------------------"

secretperm=$(stat -c "%a" secret 2>/dev/null)

if [ "$secretperm" = "700" ]; then
    echo -e "${GREEN}✔ PASS${RESET} Secret folder permissions are 700"
    ((score+=2))
else
    echo -e "${RED}✘ FAIL${RESET} Secret folder permissions are $secretperm (expected 700)"
fi

echo ""

echo "-------------------------------"
echo " TASK 7 - ACCESS TESTING"
echo "-------------------------------"

echo "Manual check required:"
echo ""
echo "  1. Switch user:"
echo "     su - hr_user"
echo ""
echo "  2. Verify the current user:"
echo "     whoami"
echo ""
echo "  3. Try accessing another department folder."
echo ""
echo "  4. Confirm access is allowed only where appropriate."
echo ""
echo -e "${YELLOW}Remember to take a screenshot for your evidence.${RESET}"

echo ""

echo "-------------------------------"
echo " TASK 8 - FINAL VERIFICATION"
echo "-------------------------------"

echo "Current directory permissions:"
ls -ld company/*

echo ""
echo "Secret folder:"
ls -ld secret

echo ""
echo "========================================"
echo " FINAL SCORE: $score / $total"
echo "========================================"

echo ""

if [ "$score" -eq "$total" ]; then
    echo -e "${GREEN}Excellent! All automatic checks passed.${RESET}"
elif [ "$score" -ge 18 ]; then
    echo -e "${YELLOW}Good work. A few items still need attention.${RESET}"
else
    echo -e "${RED}Review the failed checks before submitting.${RESET}"
fi

echo ""
echo "Take a screenshot of this output for your evidence."
