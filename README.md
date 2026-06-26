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

Currently, every employee can access every folder, regardless of their department. This is a security risk because confidential information should only be available to authorised staff.

Your task is to secure the system using:

- Linux users
- Linux groups
- File and directory permissions

All work must be completed inside a GitHub Codespace using Linux commands.

---

# How This Assessment Works (VERY IMPORTANT)

This assessment is automatically checked using a script.

For **every task** you should:

1. Complete the task using Linux commands.
2. Run the checking script.
3. Review the output to see what has passed or failed.
4. Take a screenshot.
5. Save the screenshot in the **evidence/** folder.

---

## Run this command after EVERY task

```bash
bash scripts/check.sh
```

The script will tell you:

- ✓ What has been completed correctly
- ✗ What still needs fixing
- Your current score

---

# Evidence Rules

Save all screenshots inside:

```
evidence/
```

Use these filenames exactly:

```
task1.png
task2.png
task3.png
task4.png
task5.png
task6.png
task7.png
task8.png
```

Do **not** create any additional folders.

---

# Existing Folder Structure

```
company/
├── Finance
├── HR
├── Management
├── Marketing
└── Public

secret/
```

---

# Helpful Command Guide

## Explore the filesystem

```bash
pwd
ls
ls -l
tree
```

Useful for checking:

- Current directory
- Existing folders
- File permissions
- Owners and groups

---

## Create users

```bash
sudo adduser username
```

Example:

```bash
sudo adduser hr_user
```

Check that the user exists:

```bash
id username
```

---

## Create groups

```bash
sudo groupadd groupname
```

Example:

```bash
sudo groupadd hr
```

List a user's groups:

```bash
groups username
```

---

## Add users to groups

```bash
sudo usermod -aG groupname username
```

Example:

```bash
sudo usermod -aG hr hr_user
```

Verify:

```bash
groups hr_user
```

---

## Change ownership

```bash
sudo chown owner:group folder
```

Examples:

```bash
sudo chown :finance company/Finance
sudo chown root:marketing company/Marketing
```

You can leave the owner unchanged if only the group needs changing.

---

## Change permissions

```bash
chmod permissions folder
```

Examples:

```bash
chmod 750 folder
chmod 770 folder
chmod 755 folder
```

Remember what the numbers represent:

| Number | Permission |
|---------|------------|
| 7 | Read, Write, Execute |
| 6 | Read, Write |
| 5 | Read, Execute |
| 4 | Read only |
| 0 | No access |

You may find it helpful to think about:

- Should the owner be able to edit?
- Should members of the department be able to access the folder?
- Should everyone else be blocked?

---

# TASKS

---

## Task 1 – Inspect the system

Explore the existing folder structure.

Useful commands:

```bash
ls
ls -l
tree
pwd
```

Look carefully at:

- The folders that already exist
- Current owners
- Current groups
- Current permissions

Ask yourself:

- Who can currently access these folders?
- Are any permissions too open?

Run:

```bash
bash scripts/check.sh
```

Save:

```
evidence/task1.png
```

---

## Task 2 – Create users

Create users to represent staff in each department.

Choose clear, meaningful usernames.

Examples include names such as:

- hr_user
- finance_user
- marketing_user

(You may choose your own naming convention.)

Useful commands:

```bash
sudo adduser username
id username
```

Check that each user has been created successfully before moving on.

Run:

```bash
bash scripts/check.sh
```

Save:

```
evidence/task2.png
```

---

## Task 3 – Create groups

Create a group for each department.

After creating the groups:

- Add the appropriate users to the correct groups.
- Check that group membership is correct.

Useful commands:

```bash
sudo groupadd groupname
sudo usermod -aG groupname username
groups username
```

Think about:

- Which user belongs in which department?
- Does every user need to belong to every group?

Run:

```bash
bash scripts/check.sh
```

Save:

```
evidence/task3.png
```

---

## Task 4 – Assign folder ownership

Each department folder should belong to the correct department group.

Useful commands:

```bash
sudo chown :group folder
ls -l company
```

Check that:

- Each folder has the correct group owner.
- The changes have been applied successfully.

Run:

```bash
bash scripts/check.sh
```

Save:

```
evidence/task4.png
```

---

## Task 5 – Set permissions

Configure suitable permissions for each department folder.

Consider:

- Should department members be able to read only?
- Should they also be able to create or edit files?
- Should users outside the department have access?

Useful commands:

```bash
chmod
ls -l
```

Examples of permission formats:

```bash
chmod 750 folder
chmod 770 folder
chmod 755 folder
```

You do **not** have to use these exact values—choose permissions that meet the requirements.

Run:

```bash
bash scripts/check.sh
```

Save:

```
evidence/task5.png
```

---

## Task 6 – Secure the secret folder

The **secret** folder should only be accessible by its owner.

Check your work using:

```bash
ls -ld secret
```

Think about:

- Who should be able to enter this directory?
- Should anyone else have any permissions?

Run:

```bash
bash scripts/check.sh
```

Save:

```
evidence/task6.png
```

---

## Task 7 – Test access

Test your security configuration by switching to different users.

Useful commands:

```bash
su username
whoami
cd
ls
```

Try accessing folders that:

- The user should be allowed to access.
- The user should **not** be allowed to access.

If something doesn't work as expected, review the permissions before running the checker.

Run:

```bash
bash scripts/check.sh
```

Save:

```
evidence/task7.png
```

---

## Task 8 – Final verification

Run one final check:

```bash
bash scripts/check.sh
```

Aim for every check to pass before submitting.

If any checks fail:

- Read the feedback carefully.
- Correct the problem.
- Run the script again.

Save:

```
evidence/task8.png
```

---

# Before You Submit

For every task, make sure you have:

- Completed the required Linux commands
- Run the checking script
- Saved the required screenshot

---

# Goal

By the end of this assessment you should have created a secure Linux access control system where:

- Users represent employees.
- Groups represent departments.
- Department folders are owned by the correct groups.
- Permissions restrict unauthorised access.
- Sensitive information is protected using Linux permissions.
