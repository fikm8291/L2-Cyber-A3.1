# AC 3.1 Assessment - Create a User Access Control System

## Unit Learning Outcome

**Assessment Criterion 3.1**

> Create a user access control system to restrict unauthorised access.

---

# Scenario

Congratulations!

You have recently started work as a **Junior IT Technician** for **Northbridge Training Ltd.**

The company stores confidential information for several departments.

Unfortunately, every member of staff can currently access every folder on the server. This presents a significant security risk because confidential information such as payroll data, HR records and management documents could be viewed or changed by unauthorised users.

Your manager has asked you to secure the company file server by implementing an appropriate access control system.

You must use Linux permissions to protect the folders while ensuring staff can still access the files they need.

---

# Learning Objectives

By completing this assessment you will demonstrate that you can:

- Understand Linux file permissions
- Secure folders using least privilege
- Restrict unauthorised access
- Explain why access controls improve security
- Produce evidence of your configuration

---

# Before You Begin

This assessment is completed entirely inside your GitHub Codespace.

Open the Terminal.

If the lab has already been prepared you do **not** need to do anything.

If instructed by your teacher, initialise the lab:

```bash
npm run setup
```

If something becomes broken, you can reset everything:

```bash
npm run reset
```

---

# Folder Structure

Your company server currently contains the following folders.

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

# Company Security Policy

The IT manager has provided the following security requirements.

| Folder     | Access Requirement                     |
| ---------- | -------------------------------------- |
| HR         | HR staff only                          |
| Finance    | Finance staff only                     |
| Marketing  | Marketing staff only                   |
| Management | Management only                        |
| Public     | Everyone can read                      |
| Secret     | Nobody except the system administrator |

---

# Your Tasks

Complete **all** of the following tasks.

---

## Task 1 – Inspect the Current Permissions

Use Linux commands to inspect the existing permissions.

Useful commands include:

```bash
pwd

ls

ls -l

tree
```

Take a screenshot showing the current folder permissions.

Save it inside

```
evidence/screenshots/
```

---

## Task 2 – Secure the Secret Folder

The Secret folder contains confidential payroll information.

Restrict access so that only the owner has permission to access the folder.

You should think about:

- Read permission
- Write permission
- Execute permission

Record the command(s) you used.

---

## Task 3 – Configure Department Folders

Update the permissions for every department folder.

The folders should follow the company security policy.

You should ensure that:

- confidential folders are protected
- public information remains available
- unnecessary permissions are removed

---

## Task 4 – Verify Your Permissions

Use:

```bash
ls -l

ls -ld company/*
```

Take screenshots showing the final permissions.

Store them inside:

```
evidence/screenshots/
```

---

## Task 5 – Complete the Written Questions

Open

```
evidence/answers.md
```

Answer every question.

Use full sentences.

---

# Helpful Commands

These commands may help you.

## Display current folder

```bash
pwd
```

---

## List files

```bash
ls

ls -l

ls -la
```

---

## View folder structure

```bash
tree
```

---

## Change permissions

```bash
chmod
```

Examples

```bash
chmod 700 folder

chmod 755 folder

chmod 744 file
```

---

## View permissions

```bash
ls -l
```

---

# Evidence Checklist

Before submitting your work, make sure you have:

- [ ] Configured the required permissions
- [ ] Taken before screenshots
- [ ] Taken after screenshots
- [ ] Answered every written question
- [ ] Run the checking script

---

# Automatic Checker

When you have finished, run:

```bash
npm run check
```

The script will display your current permissions.

If something is incorrect, return to your folders and fix the issue.

---

# Submission

Submit your GitHub repository link or commit your changes as instructed by your teacher.

Your repository should contain:

```
company/

secret/

evidence/

README.md
```

---

# Written Questions

Complete these inside

```
evidence/answers.md
```

---

### Question 1

What is meant by **user access control**?

---

### Question 2

Why should confidential information only be available to authorised users?

---

### Question 3

Explain the principle of **least privilege**.

---

### Question 4

What does each permission represent?

```
r

w

x
```

---

### Question 5

Explain what the following command does.

```bash
chmod 700 secret
```

---

### Question 6

Why is it important to test permissions after changing them?

---

### Question 7

Describe one possible consequence if payroll information became publicly accessible.

---

### Question 8

How does access control help organisations comply with data protection legislation?

---

# Extension Challenge (Optional)

The company now wants to improve security further.

Research **Linux Access Control Lists (ACLs).**

Answer the following questions.

1. What problem do ACLs solve?

2. How are ACLs different from standard Linux permissions?

3. Which command is used to configure ACLs?

4. Give one situation where ACLs would be useful.

---

# Assessment Tips

Good evidence includes:

- Correct Linux commands
- Correct permissions
- Clear screenshots
- Explanations written in your own words
- Evidence that you tested your configuration

---

Good luck!

Think carefully before changing permissions.

Remember:

**The goal is not to remove all access.**

The goal is to ensure **the right people have the right access to the right data.**
