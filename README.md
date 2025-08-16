# MedixCare Clinic Database Infrastructure (FA1 – ADI632)

This repository contains the SQL scripts for **Formative Assessment 1** of the *Administering Database Infrastructure (ADI632)* module.  
The assessment is based on the **MedixCare Clinic** scenario, where a database administrator must secure access, enable auditing, and implement a robust backup & recovery plan.

---

## Project Scenario
MedixCare is a growing private clinic in Pretoria with a patient management system running on SQL Server.  
The system stores sensitive data such as patient records, staff duties, appointments, and billing.  

Recent issues include:
- Unauthorized access attempts  
- Disk failure and partial data loss  

As the junior DBA, the tasks were:
1. Secure database access with roles and permissions  
2. Enable auditing of critical events  
3. Design and test a backup & recovery plan  
4. Reflect on root cause analysis and business impact  

---

## 🔐 Phase 1: Secure Data Access
- Demonstrates role-based access control.  
- Screenshots should show:
  - Successful queries by `DrJames`  
  - Failed `DELETE` by `NurseThandi`  

---

## 📊 Phase 2: Configure Auditing
- Creates a server audit writing to `C:\SQLAudit\`  
- Tracks:
  - Successful & failed logins  
  - Logout events  
  - Permission changes  
  - Backup/restore actions  
  - DML changes to `Patients`  
- Screenshots should show events in `sys.fn_get_audit_file` output  

---

## 💾 Phase 3: Backup & Recovery
- Recovery model set to **FULL**  
- Backup strategy:  
  - Weekly full backup  
  - Differential backups every 6 hours  
  - Transaction log backups every 15 minutes  
- Simulated restore process includes a **tail-log backup**  
- Screenshots should show successful restore  

---

## 📝 Phase 4: Reflection
- Discusses the importance of root cause analysis (RCA)  
- Steps for investigating corruption (e.g., using `DBCC CHECKDB`)  
- Role of regular backups and auditing in prevention  
- Mentions hardware causes like **disk failure** or **design flaws**  

---
