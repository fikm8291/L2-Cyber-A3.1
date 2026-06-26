#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
RESET="\033[0m"

score=0
total=20

echo ""
echo "=================================================="
echo "  AC 3.1 USER & GROUP ACCESS CONTROL CHECKER"
echo "=================================================="
echo ""

# ==================================================
# TASK 1 - SYSTEM STRUCTURE
# ==================================================

echo "-------------------------------"
echo " TASK 1 - SYSTEM STRUCTURE"
echo "-------------------------------"

if [ -d company ] && [ -d secret ]; then
  echo -e "${GREEN}✔ PASS${RESET} Required folders exist"
  score=$((score+1))
else
  echo -e "${RED}✘ FAIL${RESET} Missing required folders"
fi

echo ""

# ==================================================
# TASK 2 - USERS
# ==================================================

echo "-------------------------------"
echo " TASK 2 - USERS"
echo "-------------------------------"

check_user() {
  if id "$1" &>/dev/null; then
    echo -e "${GREEN}✔${RESET} $1 exists"
    score=$((score+1))
  else
    echo -e "${RED}✘${RESET} Missing user: $1"
  fi
}

check_user hr_user
check_user finance_user
check_user marketing_user
check_user management_user

echo ""

# ==================================================
# TASK 3 - GROUPS
# ==================================================

echo "-------------------------------"
echo " TASK 3 - GROUPS"
echo "-------------------------------"

check_group() {
  if getent group "$1" &>/dev/null; then
    echo -e "${GREEN}✔${RESET} $1 group exists"
    score=$((score+1))
  else
    echo -e "${RED}✘${RESET} Missing group: $1"
  fi
}

check_group hr
check_group finance
check_group marketing
check_group management

echo ""

# ==================================================
# TASK 4 - OWNERSHIP
# ==================================================

echo "-------------------------------"
echo " TASK 4 - FOLDER OWNERSHIP"
echo "-------------------------------"

check_owner() {
  owner=$(stat -c "%G" "$1" 2>/dev/null)

  if [ "$owner" = "$2" ]; then
    echo -e "${GREEN}✔${RESET} $1 owned by $2"
    score=$((score+1))
  else
    echo -e "${RED}✘${RESET} $1 should be owned by group $2"
  fi
}

check_owner company/HR hr
check_owner company/Finance finance
check_owner company/Marketing marketing
check_owner company/Management management

echo ""

# ==================================================
# TASK 5 - PERMISSIONS
# ==================================================

echo "-------------------------------"
echo " TASK 5 - PERMISSIONS"
echo "-------------------------------"

echo "Current permissions:"
ls -ld company/*

echo ""

# Basic check (not strict, but guides correctness)
score=$((score+2))

echo -e "${YELLOW}✔ Review above permissions carefully${RESET}"

echo ""

# ==================================================
# TASK 6 - SECRET FOLDER
# ==================================================

echo "-------------------------------"
echo " TASK 6 - SECRET FOLDER SECURITY"
echo "-------------------------------"

secretperm=$(stat -c "%a" secret 2>/dev/null)

if [ "$secretperm" = "700" ]; then
  echo -e "${GREEN}✔ PASS${RESET} Secret folder is locked (700)"
  score=$((score+3))
else
  echo -e "${RED}✘ FAIL${RESET} Secret folder must be 700"
fi

echo ""

# ==================================================
# TASK 7 - TESTING ACCESS
# ==================================================

echo "-------------------------------"
echo " TASK 7 - ACCESS TESTING"
echo "-------------------------------"

echo "Manual test required:"
echo "- Switch users using: su - username"
echo "- Try accessing different folders"
echo "- Confirm restrictions work"

echo -e "${YELLOW}✔ Evidence required via screenshot${RESET}"

score=$((score+2))

echo ""

# ==================================================
# TASK 8 - FINAL CHECK
# ==================================================

echo "-------------------------------"
echo " TASK 8 - FINAL VERIFICATION"
echo "-------------------------------"

ls -ld company/*
echo ""
ls -ld secret

echo ""
echo "=================================="
echo " FINAL SCORE: $score / $total"
echo "=================================="
echo ""

if [ "$score" -ge 17 ]; then
  echo -e "${GREEN}EXCELLENT - Secure system implemented${RESET}"
elif [ "$score" -ge 13 ]; then
  echo -e "${YELLOW}GOOD - Some issues remain${RESET}"
else
  echo -e "${RED}NEEDS IMPROVEMENT - Review configuration${RESET}"
fi

echo ""
echo "Take a screenshot of this output for your evidence."
echo ""
