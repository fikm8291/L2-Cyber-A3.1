# AC 3.1 Assessment - User & Group Access Control System

## Unit Learning Outcome

**Assessment Criterion 3.1**

> Create a user access control system to restrict unauthorised access.

---

# Scenario

You are working as a **Junior IT Technician** for **Northbridge Training Ltd.**

The company stores sensitive data across multiple departments:

- HR  
- Finance  
- Marketing  
- Management  
- Public information  

At the moment, all staff can access all folders. This is a serious security risk.

Your task is to design and implement a secure Linux access control system using:

- Users  
- Groups  
- File permissions  

---

# Learning Objectives

By completing this assessment, you will demonstrate:

- How Linux users and groups control access  
- How file ownership affects security  
- How permissions restrict access  
- How to apply least privilege  
- How to test and verify security configurations  

---

# Before You Begin

This assessment is completed entirely inside your GitHub Codespace.

Open the terminal before starting.

---

## Setup the environment

```bash
bash scripts/setup.sh
```

---

## Reset if needed

If you make a mistake:

```bash
bash scripts/reset.sh
```

---

# How This Assessment Works

This assessment is **automatically checked**.

You do NOT need to complete written answers or submit separate screenshots for each task.

Instead:

### You will:

1. Complete the required configuration tasks
2. Run the checker script
3. Review the results
4. Take a screenshot of the output

---

### You MUST run this command after each task attempt:

```bash
bash scripts/check.sh
```

---

### Evidence Requirement

You must take screenshots of the checker output.

### Save ALL screenshots in:

```
evidence/
```

### Naming convention:

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

Each screenshot should show your progress after improving your system.

---

# Folder Structure

You will be working with:

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

# What You Are Building

You are building a real Linux access control system using:

- Users for each department  
- Groups for each department  
- File ownership control  
- Linux file permissions  

Your goal is to ensure:

> Only the correct users can access the correct data.

---

# Your Tasks

You do NOT need to follow tasks strictly one-by-one in order, but the system is structured as follows:

---

## Task 1 – System Setup Check

Verify base folders exist and system is ready.

Run:

```bash
bash scripts/check.sh
```

Take screenshot:

```
evidence/task1.png
```

---

## Task 2 – User Accounts

Create required department users.

Then run:

```bash
bash scripts/check.sh
```

Take screenshot:

```
evidence/task2.png
```

---

## Task 3 – Groups

Create department groups and assign users.

Then run:

```bash
bash scripts/check.sh
```

Take screenshot:

```
evidence/task3.png
```

---

## Task 4 – Folder Ownership

Assign correct group ownership to department folders.

Then run:

```bash
bash scripts/check.sh
```

Take screenshot:

```
evidence/task4.png
```

---

## Task 5 – Permissions

Apply correct Linux permissions to department folders.

Then run:

```bash
bash scripts/check.sh
```

Take screenshot:

```
evidence/task5.png
```

---

## Task 6 – Secure Secret Folder

Lock down the `secret` folder so only the owner can access it.

Then run:

```bash
bash scripts/check.sh
```

Take screenshot:

```
evidence/task6.png
```

---

## Task 7 – Access Testing

Test access using different users (switch accounts).

Then run:

```bash
bash scripts/check.sh
```

Take screenshot:

```
evidence/task7.png
```

---

## Task 8 – Final System Check

Run the final verification:

```bash
bash scripts/check.sh
```

Take final screenshot:

```
evidence/task8.png
```

---

# Helpful Commands

## Navigation

```bash
pwd
ls
tree
```

## Users

```bash
sudo adduser username
id username
```

## Groups

```bash
sudo groupadd groupname
sudo usermod -aG groupname username
groups username
```

## Permissions

```bash
chmod
chown
ls -l
```

---

# Submission Checklist

Before submitting, ensure:

- [ ] All required users exist  
- [ ] All required groups exist  
- [ ] Users are assigned correctly  
- [ ] Folder ownership is correct  
- [ ] Permissions are correctly configured  
- [ ] Secret folder is secured  
- [ ] You have run `bash scripts/check.sh` multiple times  
- [ ] All screenshots are saved in `evidence/`  
- [ ] Each screenshot is named correctly (task1–task8)  
