# AC 3.1 Assessment - User & Group Access Control System

## Unit Learning Outcome

**Assessment Criterion 3.1**

> Create a user access control system to restrict unauthorised access.

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

---

# How This Assessment Works (VERY IMPORTANT)

This assessment is **checked using an automated script**.

### For EVERY task you must:

1. Complete the task  
2. Run the check script  
3. Take a screenshot of the output  
4. Save it in the `evidence/` folder  

---

## The command you will use after EVERY task:

```bash
bash scripts/check.sh
```

---

## Evidence Rules

You MUST save screenshots in:

```
evidence/
```

Each screenshot must be named:

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

# Your Tasks

---

## Task 1 – Start and Inspect System

Explore the system using Linux commands.

Then run:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

```
evidence/task1.png
```

---

## Task 2 – Create Users

Create the required department users.

Then run:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

```
evidence/task2.png
```

---

## Task 3 – Create Groups

Create department groups and assign users.

Then run:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

```
evidence/task3.png
```

---

## Task 4 – Set Folder Ownership

Assign each folder to the correct group.

Then run:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

```
evidence/task4.png
```

---

## Task 5 – Set Permissions

Apply correct Linux permissions to each folder.

Then run:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

```
evidence/task5.png
```

---

## Task 6 – Secure Secret Folder

Restrict the `secret` folder so only the owner can access it.

Then run:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

```
evidence/task6.png
```

---

## Task 7 – Test Access

Switch users and test folder access.

Then run:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

```
evidence/task7.png
```

---

## Task 8 – Final Check

Run the final verification:

```bash
bash scripts/check.sh
```

Take a screenshot and save as:

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

- [ ] All users created  
- [ ] All groups created  
- [ ] Users assigned correctly  
- [ ] Folder ownership correct  
- [ ] Permissions correct  
- [ ] Secret folder secured  
- [ ] `bash scripts/check.sh` run after every task  
- [ ] All screenshots saved in `evidence/`  
- [ ] Filenames match task numbers  
