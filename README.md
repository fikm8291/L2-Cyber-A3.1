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

At the moment, the file server is not properly secured. Anyone can access most folders, which creates a serious security risk.

Your job is to design and implement a **realistic Linux access control system** using:

- Users  
- Groups  
- File permissions  

You must ensure that only the correct departments can access their own data.

---

# Learning Objectives

By completing this assessment, you will demonstrate:

- How Linux users and groups are used in access control  
- How file ownership affects security  
- How file permissions enforce restrictions  
- How to apply least privilege in a real system  
- How to test and verify access control systems  

---

# Before You Begin

This assessment is completed entirely inside your GitHub Codespace.

Open the terminal before starting.

---

## Setup the environment

Run:

```bash
bash scripts/setup.sh
```

---

## Reset the environment (if needed)

If you make a mistake or want to start again:

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

You will be working with the following system:

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

# Part 1 – Understand the Current System

Start by exploring the environment:

```bash
pwd
ls
ls -l
tree
```

You are looking to understand:

- Who owns each folder  
- What permissions are currently set  
- Which folders are exposed to all users  

Take note of anything that looks insecure.

---

# Part 2 – Create Users for Each Department

In this system, each department should have its own user account.

Create the following users:

- hr_user  
- finance_user  
- marketing_user  
- management_user  

Use Linux user management commands to create them.

> Hint: You may need administrator privileges (`sudo`).

After creating users, verify they exist using system commands.

---

# Part 3 – Create Department Groups

Each department should also have its own group.

Create groups for:

- hr  
- finance  
- marketing  
- management  

Then assign each user to the correct group.

> This is important because permissions will be controlled through groups, not individual users.

Verify group membership after assignment.

---

# Part 4 – Assign Ownership of Folders

Each department folder should belong to its matching group.

You will need to:

- Change group ownership of each folder  
- Ensure the correct department controls the correct folder  

Example mapping:

- HR folder → hr group  
- Finance folder → finance group  
- etc.

Use ownership commands to apply these changes.

---

# Part 5 – Set Folder Permissions

Now apply Linux permissions so that:

- Departments can access their own folders  
- Other departments cannot access restricted data  
- Public data remains accessible to everyone  

You will need to combine:
- `chmod`
- group ownership
- permission settings (read/write/execute)

> Think carefully about how directories behave differently from files.

---

# Part 6 – Secure the Secret Folder

The `secret` folder contains highly sensitive information.

It must be restricted so that:

- Only the system administrator (or owner) can access it  
- No department users can view it  

Apply the strongest reasonable Linux permissions.

---

# Part 7 – Test Access Control

You must now test your system.

Switch between users:

```bash
su - hr_user
```

Try accessing:
- HR folder (should work)
- Finance folder (should be restricted)

Repeat this for different users.

Also test:
- Public folder access
- Secret folder access

> Your goal is to confirm the system behaves correctly, not just configure it.

---

# Part 8 – Final Verification

Return to your main user and run:

```bash
ls -l company
ls -ld company/*
```

Check:

- Folder ownership  
- Group assignments  
- Permission accuracy  

Run the automated checker:

```bash
bash scripts/check.sh
```

---

# Helpful Commands

## System navigation

```bash
pwd
ls
tree
```

## Users

```bash
whoami
id
sudo adduser username
```

## Groups

```bash
groups
sudo groupadd groupname
sudo usermod -aG groupname username
```

## Permissions

```bash
chmod
chown
```

Example formats (do not rely on these alone):

```bash
chmod 750 folder
chmod 700 folder
```

---

# Evidence Checklist

Before submission, ensure:

- [ ] Users have been created  
- [ ] Groups have been created  
- [ ] Users are assigned correctly  
- [ ] Folder ownership is configured  
- [ ] Permissions are correctly applied  
- [ ] All tests have been completed  
- [ ] `scripts/check.sh` runs successfully  

---

# Final Reminder

This is a real-world security model.

The goal is not just to make folders “work”.

The goal is to ensure:

> Only the correct users can access the correct data using proper Linux access control.
