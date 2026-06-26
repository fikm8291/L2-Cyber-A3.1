# AC 3.1 Assessment - User & Group Access Control System

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

You will work with this system:

company/
├── Finance
├── HR
├── Management
├── Marketing
└── Public

secret/

---

# Helpful Command Examples (Use During Tasks)

## Navigation

pwd
ls
tree
ls -l

---

## Creating Users (example format)

sudo adduser username
id username

---

## Creating Groups (example format)

sudo groupadd groupname
groups username

---

## Adding Users to Groups

sudo usermod -aG groupname username

---

## Permissions & Ownership

ls -l
chmod
chown

Examples:

chmod 750 foldername
chmod 755 foldername
chown user:group foldername

---

# Your Tasks

---

## Task 1 – Start and Inspect the System

Explore the folder structure and check what exists.

Commands you may use:

ls
tree
ls -l

Then run:

bash scripts/check.sh

Save screenshot as:

evidence/task1.png

---

## Task 2 – Create Department Users

Create users for each department.

Think about:
- Clear usernames
- One or more users per department

Example format:

sudo adduser username

Verify:

id username

Then run:

bash scripts/check.sh

Save screenshot as:

evidence/task2.png

---

## Task 3 – Create Department Groups

Create groups for each department.

Example:

sudo groupadd groupname

Add users to groups:

sudo usermod -aG groupname username

Check:

groups username

Then run:

bash scripts/check.sh

Save screenshot as:

evidence/task3.png

---

## Task 4 – Assign Folder Ownership

Assign each department folder to the correct group.

Example:

chown :groupname foldername

Check:

ls -l

Then run:

bash scripts/check.sh

Save screenshot as:

evidence/task4.png

---

## Task 5 – Set Folder Permissions

Apply appropriate permissions to restrict access.

Example:

chmod 750 foldername
chmod 755 foldername

Check:

ls -l

Then run:

bash scripts/check.sh

Save screenshot as:

evidence/task5.png

---

## Task 6 – Secure the Secret Folder

The secret folder must be restricted so only the owner can access it.

Example:

chmod 700 secret

Then run:

bash scripts/check.sh

Save screenshot as:

evidence/task6.png

---

## Task 7 – Test Access

Test your configuration by switching users.

Commands:

su username
whoami
cd foldername
ls

Then run:

bash scripts/check.sh

Save screenshot as:

evidence/task7.png

---

## Task 8 – Final Check

Run the final verification:

bash scripts/check.sh

Take a screenshot of the output.

Save as:

evidence/task8.png

---

# Final Reminder

After each task:

- Complete the task  
- Run the check script  
- Take a screenshot  
- Save it in evidence/  

---

The goal is:

> Ensure the right users have access to the right folders using users, groups, and Linux permissions.
