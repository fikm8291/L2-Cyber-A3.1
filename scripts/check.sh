#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
RESET="\033[0m"

score=0
total=22

pass() {
    echo -e "${GREEN}✔ PASS${RESET} $1"
    ((score++))
}

fail() {
    echo -e "${RED}✘ FAIL${RESET} $1"
}

echo ""
echo "=================================================="
echo "  AC 3.1 USER AND GROUP ACCESS CONTROL CHECKER"
echo "=================================================="
echo ""

echo "-------------------------------"
echo " TASK 1 - SYSTEM STRUCTURE"
echo "-------------------------------"

if [ -d company ] && [ -d secret ]; then
    pass "Required folders exist"
else
    fail "Missing required folders"
fi

echo ""

echo "-------------------------------"
echo " TASK 2 - USERS"
echo "-------------------------------"

check_user() {
    if id "$1" >/dev/null 2>&1; then
        pass "User '$1' exists"
    else
        fail "Missing user '$1'"
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
    if getent group "$1" >/dev/null 2>&1; then
        pass "Group '$1' exists"
    else
        fail "Missing group '$1'"
    fi
}

check_group hr
check_group finance
check_group marketing
check_group management

echo ""

echo "Checking group membership..."

check_membership() {
    if id "$1" >/dev/null 2>&1 && id -nG "$1" | grep -qw "$2"; then
        pass "$1 belongs to $2"
    else
        fail "$1 is not a member of $2"
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
    actual=$(stat -c "%G" "$1" 2>/dev/null)

    if [ "$actual" = "$2" ]; then
        pass "$1 group ownership is $2"
    else
        fail "$1 should have group $2 (currently $actual)"
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

    if [ "$perms" = "750" ] || [ "$perms" = "770" ]; then
        pass "$1 permissions are $perms"
    else
        fail "$1 permissions are $perms (expected 750 or 770)"
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
    pass "Secret folder permissions are 700"
else
    fail "Secret folder permissions are $secretperm (expected 700)"
fi

echo ""

echo "-------------------------------"
echo " TASK 7 - ACCESS TESTING"
echo "-------------------------------"

echo "Manual evidence required (not auto-graded)"

echo ""

echo "-------------------------------"
echo " TASK 8 - FINAL VERIFICATION"
echo "-------------------------------"

ls -ld company/* 2>/dev/null
echo ""
ls -ld secret 2>/dev/null

echo ""
echo "========================================"
echo " FINAL SCORE: $score / $total"
echo "========================================"
echo ""

# This is the key for GitHub Classroom scoring
echo "Score: $score/$total"

# Always exit 0 so partial marks count
exit 0
``
