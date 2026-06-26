"# AC 3.1 Assessment - User & Group Access Control System

## Unit Learning Outcome

**Assessment Criterion 3.1**

> Create a user access control system to restrict unauthorised access using users, groups, and Linux permissions.

---

# Scenario

You are working as a **Junior IT Technician** for **Northbridge Training Ltd.**

The company stores sensitive data across several departments:

- HR
- Finance
- Marketing
- Management
- Public information

At the moment, all staff can access all folders. This is a security risk.

Your task is to secure the system using:

- Users
- Groups
- Linux file permissions

You will complete all work inside a GitHub Codespace using Linux commands.

---

# How This Assessment Works (VERY IMPORTANT)

This assessment is automatically checked using a script.

### For EVERY task you must:

1. Complete the task using Linux commands
2. Run the check script
3. Take a screenshot of the output
4. Save it in the evidence/ folder

---

## The command you will run after EVERY task

bash scripts/check.sh

This script will show:
- What you have completed correctly
- What still needs fixing
- Your current score

---

## Evidence Rules

All screenshots must be saved in:

evidence/

Each screenshot must be named exactly:

task1.png
task2.png
task3.png
task4.png
task5.png
task6.png
task7.png
task8.png

Do NOT create subfolders.

---

# Folder Structure

company/
├── Finance
├── HR
├── Management
├── Marketing
└── Public

secret/

---

# Helpful Command Guide (Use During Tasks)

## Navigation commands
pwd
ls
ls -l
tree

---

## Create users
sudo adduser username

Check user exists:
id username

---

## Create groups
sudo groupadd groupname

Check groups:
groups username

---

## Add user to group
sudo usermod -aG groupname username

Verify:
groups username

---

## Permissions and ownership
ls -l
chmod
chown

Examples:
chmod 750 foldername
chmod 755 foldername
chown user:group foldername

---

# TASKS

---

## Task 1 – Inspect the system

Explore the folder structure.

Useful commands:
ls
tree
ls -l

Think about:
- Who currently has access?
- Are permissions too open?

Then run:

bash scripts/check.sh

Save screenshot:
evidence/task1.png

---

## Task 2 – Create users

Create users for each department.

Think about:
- One user per department OR multiple users
- Clear naming (e.g. hr_user1, finance_user1)

Example:
sudo adduser username

Check:
id username

Then run:

bash scripts/check.sh

Save screenshot:
evidence/task2.png

---

## Task 3 – Create groups

Create groups for each department.

Example:
sudo groupadd hr
sudo groupadd finance

Add users:
sudo usermod -aG hr username

Check:
groups username

Then run:

bash scripts/check.sh

Save screenshot:
evidence/task3.png

---

## Task 4 – Assign folder ownership

Assign each folder to its correct group.

Example:
chown :hr company/HR

Check:
ls -l company

Then run:

bash scripts/check.sh

Save screenshot:
evidence/task4.png

---

## Task 5 – Set permissions

Set correct folder permissions using groups.

Think about:
- Who should read?
- Who should write?
- Who should be blocked?

Example formats:
chmod 750 folder
chmod 770 folder
chmod 755 folder

Check:
ls -l

Then run:

bash scripts/check.sh

Save screenshot:
evidence/task5.png

---

## Task 6 – Secure secret folder

The secret folder must only be accessible by the owner.

Example:
chmod 700 secret

Check:
ls -ld secret

Then run:

bash scripts/check.sh

Save screenshot:
evidence/task6.png

---

## Task 7 – Test access

Switch users and test access.

Commands:
su username
whoami
cd folder
ls

Think about:
- Can the wrong users access restricted folders?

Then run:

bash scripts/check.sh

Save screenshot:
evidence/task7.png

---

## Task 8 – Final verification

Run final check:

bash scripts/check.sh

Make sure everything shows correct.

Save screenshot:
evidence/task8.png

---

# Final Reminder

After EVERY task:

- Complete task
- Run check script
- Take screenshot
- Save in evidence/

---

Goal:

Ensure the right users have the right access to the right folders using Linux users, groups, and permissions.
"
