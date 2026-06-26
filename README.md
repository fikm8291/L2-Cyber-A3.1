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
- How to apply least privilege in a real system  
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

If you make a mistake, reset the environment:

```bash
bash scripts/reset.sh
```

---

## Check your progress

At any point, you can verify your work:

```bash
bash scripts/check.sh
```

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

# Evidence Rules (IMPORTANT)

You must take screenshots during the assessment.

### Rules:

- All screenshots must be saved in:
  ```
  evidence/
  ```

- Do NOT place screenshots in subfolders

- Each screenshot must be named exactly:

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

### Example:

```
evidence/task1.png
evidence/task2.png
evidence/task3.png
...
```

---

# Your Tasks

---

## Task 1 – Inspect the System

Use the following commands to explore the system:

```bash
pwd
ls
ls -l
tree
```

Take a screenshot showing the current structure and permissions.

Save as:

```
evidence/task1.png
```

---

## Task 2 – Create Department Users

Create users for each department:

- hr_user  
- finance_user  
- marketing_user  
- management_user  

Use Linux user management commands.

After creating users, verify they exist.

Take a screenshot showing user creation or confirmation.

Save as:

```
evidence/task2.png
```

---

## Task 3 – Create Department Groups

Create groups for each department:

- hr  
- finance  
- marketing  
- management  

Assign each user to the correct group.

Verify group membership.

Take a screenshot showing group creation or assignment results.

Save as:

```
evidence/task3.png
```

---

## Task 4 – Assign Folder Ownership

Each department folder must belong to its matching group.

You will:

- Change group ownership of folders  
- Match each folder to the correct department group  

Take a screenshot showing folder ownership details.

Save as:

```
evidence/task4.png
```

---

## Task 5 – Set Folder Permissions

Configure permissions so that:

- Each department can access its own folder  
- Other departments cannot access restricted folders  
- Public folder remains accessible to everyone  

Use Linux permission commands appropriately.

Take a screenshot showing final permissions.

Save as:

```
evidence/task5.png
```

---

## Task 6 – Secure the Secret Folder

The `secret` folder contains highly sensitive data.

It must be fully restricted so that only the owner can access it.

Take a screenshot showing its permissions.

Save as:

```
evidence/task6.png
```

---

## Task 7 – Test User Access

Switch between users and test access:

```bash
su - hr_user
```

Test access to:
- HR folder  
- Finance folder  
- Public folder  
- Secret folder  

Repeat with at least one other user.

Take a screenshot showing at least one successful or blocked access test.

Save as:

```
evidence/task7.png
```

---

## Task 8 – Final Verification

Run:

```bash
ls -l company
ls -ld company/*
bash scripts/check.sh
```

Take a final screenshot showing:

- final permissions  
- or check script output  

Save as:

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
whoami
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

- [ ] All users created  
- [ ] All groups created  
- [ ] Users assigned correctly  
- [ ] Folder ownership configured  
- [ ] Permissions set correctly  
- [ ] Secret folder secured  
- [ ] User access tested  
- [ ] All screenshots saved in `evidence/`  
- [ ] `bash scripts/check.sh` runs successfully  
