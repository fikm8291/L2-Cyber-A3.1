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

Your task is to design and implement a secure Linux system using:

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

Open the terminal.

---

## Setup the environment

```bash
bash scripts/setup.sh
```

---

## Reset if needed

```bash
bash scripts/reset.sh
```

---

## Check your progress

```bash
bash scripts/check.sh
```

---

# Folder Structure

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

### Each screenshot must:

- Be saved in:
  ```
  evidence/screenshots/
  ```

- Be named using this format:

```
task1.png
task2.png
task3.png
...
```

- Match the task number you are completing

---

# Your Tasks

---

## Task 1 – Inspect the System

Explore the current system using:

```bash
pwd
ls
ls -l
tree
```

Take a screenshot of your terminal showing the current folder structure and permissions.

Save as:

```
evidence/screenshots/task1.png
```

---

## Task 2 – Create Department Users

Create user accounts for each department:

- hr_user  
- finance_user  
- marketing_user  
- management_user  

Use Linux user creation commands.

After creating users, verify they exist.

Take a screenshot of:
- user creation commands OR  
- system confirmation that users exist  

Save as:

```
evidence/screenshots/task2.png
```

---

## Task 3 – Create Department Groups

Create groups for each department:

- hr  
- finance  
- marketing  
- management  

Then assign each user to their correct group.

Verify group membership.

Take a screenshot showing:
- group creation OR  
- user group assignment results  

Save as:

```
evidence/screenshots/task3.png
```

---

## Task 4 – Assign Folder Ownership

Each department folder must belong to its matching group.

You will:

- Change group ownership of folders  
- Ensure correct mapping between department and folder  

Take a screenshot showing:

- folder ownership details (`ls -l` or similar output)

Save as:

```
evidence/screenshots/task4.png
```

---

## Task 5 – Set Folder Permissions

Configure permissions so that:

- Each department can access its own folder  
- Other departments cannot access restricted folders  
- Public folder remains accessible  

Use appropriate Linux permission commands.

Take a screenshot showing final permissions:

```
evidence/screenshots/task5.png
```

---

## Task 6 – Secure the Secret Folder

The `secret` folder must be fully restricted.

Only the owner should have access.

Take a screenshot showing:

- permission settings for `secret`

Save as:

```
evidence/screenshots/task6.png
```

---

## Task 7 – Test User Access

Switch between users and test access:

```bash
su - hr_user
```

Try accessing:
- HR folder  
- Finance folder  
- Public folder  
- Secret folder  

Repeat for at least one other user.

Take a screenshot showing at least one access test result.

Save as:

```
evidence/screenshots/task7.png
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
evidence/screenshots/task8.png
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
- [ ] Access tested using multiple users  
- [ ] All screenshots saved correctly (task1–task8)  
- [ ] `bash scripts/check.sh` runs successfully  
