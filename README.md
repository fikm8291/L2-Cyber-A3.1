# AC 3.1 Assessment - Create a User Access Control System

## Unit Learning Outcome

**Assessment Criterion 3.1**

> Create a user access control system to restrict unauthorised access.

---

# Scenario

You are working as a **Junior IT Technician** for **Northbridge Training Ltd.**

The company stores confidential data across several departments, including HR, Finance, Marketing, and Management.

At present, all staff can access all folders. This creates a serious security risk, as sensitive information such as payroll and HR records is not protected.

Your task is to secure the file server using Linux file permissions.

You must ensure that:

- Data is protected from unauthorised access  
- Staff can still access the files they need  
- The principle of least privilege is followed  

---

# Learning Objectives

By completing this assessment, you will demonstrate:

- Understanding of Linux file permissions  
- Ability to restrict access using ownership and permissions  
- Application of the principle of least privilege  
- Ability to test and verify security settings  
- Ability to explain security decisions clearly  

---

# Before You Begin

This assessment is completed entirely inside your GitHub Codespace.

Open the terminal.

If the lab needs to be set up, run:

```bash
bash scripts/setup.sh
```

If you need to reset the environment at any time, run:

```bash
bash scripts/reset.sh
```

To check your progress at any time, run:

```bash
bash scripts/check.sh
```

---

# Folder Structure

You will be working with the following structure:

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

| Folder     | Access Requirement                     |
|------------|----------------------------------------|
| HR         | HR staff only                          |
| Finance    | Finance staff only                     |
| Marketing  | Marketing staff only                   |
| Management | Management only                        |
| Public     | Everyone can read                      |
| Secret     | System administrator only              |

---

# Your Tasks

You must complete all tasks below.

---

## Task 1 – Inspect the Current Permissions

Use Linux commands to explore the current system:

```bash
pwd
ls
ls -l
tree
```

Take a screenshot showing the current permissions.

Save it in:

```
evidence/screenshots/
```

---

## Task 2 – Secure the Secret Folder

The `secret` folder contains highly sensitive payroll data.

You must restrict access so that only the owner can access it.

Think about:

- Read permissions  
- Write permissions  
- Execute permissions  

Record the commands you used in your evidence file.

---

## Task 3 – Configure Department Folders

Update the permissions for each department folder.

You must ensure:

- Confidential folders are restricted appropriately  
- Public folders remain accessible  
- Unnecessary access is removed  

Use appropriate Linux permission commands such as `chmod` and `chown`.

---

## Task 4 – Verify Your Configuration

Check your final permissions using:

```bash
ls -l
ls -ld company/*
```

Take screenshots showing your final configuration.

Save them in:

```
evidence/screenshots/
```

---

## Task 5 – Written Questions

Complete all answers in:

```
evidence/answers.md
```

Use full sentences and clear explanations.

---

# Helpful Commands

## Navigation

```bash
pwd
ls
tree
```

## Permissions

```bash
ls -l
chmod 700 folder
chmod 755 folder
chmod 744 file
```

## Ownership (if needed)

```bash
chown
```

---

# Evidence Checklist

Before submission, ensure you have:

- [ ] Completed all folder permissions  
- [ ] Taken before screenshots  
- [ ] Taken after screenshots  
- [ ] Completed written questions  
- [ ] Run the check script (`bash scripts/check.sh`)  

---

# Automatic Checker

When finished, run:

```bash
bash scripts/check.sh
```

This will display your current configuration and help you verify your work.

---

# Submission

Submit your work as instructed by your teacher.

Your repository must include:

```
company/
secret/
evidence/
scripts/
README.md
```

---

# Written Questions

Answer these in:

```
evidence/answers.md
```

---

### Question 1

What is meant by user access control?

---

### Question 2

Why should confidential data only be accessible to authorised users?

---

### Question 3

Explain the principle of least privilege.

---

### Question 4

What do the following permissions mean?

```
r =  
w =  
x =  
```

---

### Question 5

Explain what this command does:

```bash
chmod 700 secret
```

---

### Question 6

Why is it important to test permissions after changing them?

---

### Question 7

What could happen if payroll data was publicly accessible?

---

### Question 8

How does access control support data protection laws?

---

# Extension Task (Optional)

Research **Linux Access Control Lists (ACLs)**.

Answer:

1. What problem do ACLs solve?  
2. How are they different from standard permissions?  
3. What command is used to manage ACLs?  
4. Give a real-world use case.  

---

# Assessment Tips

Good evidence includes:

- Clear Linux commands  
- Correct permission settings  
- Screenshots before and after changes  
- Clear written explanations  
- Evidence of testing  

---

# Final Reminder

The goal is not to block everything.

The goal is to ensure:

> The right people have the right access to the right data.
