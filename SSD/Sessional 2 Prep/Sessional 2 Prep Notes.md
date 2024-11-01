| Lecture<br>Number | Lecture<br>Name                                      | Status    |
| ----------------- | ---------------------------------------------------- | --------- |
| 1                 | Significance of DFDs in security analysis            | :warning: |
| 2                 | DFD Impact in security analysis                      | :warning: |
| Task 1            | Threat Modelling in STRIDE                           | :warning: |
| Task 2            | Threat Modelling in DREAD                            | :warning: |
| 3                 | Attacker Profiling (MITRE)                           | :warning: |
| 4                 | Secure Coding Practices: Input Validation            | :warning: |
| 5                 | Secure Coding Practices: Output Encoding             | :warning: |
| 14 & 15           | Secure Coding Practices: Authn & Password Management | :warning: |


---

# Task 1: STRIDE Modelling (Online Banking)
- STRIDE Acronym
	- **Spoofing (S)**: Can an attacker pretend to be someone else?
	- **Tampering (T)**: Can an attacker modify data or processes?
	- **Repudiation (R)**: Can an attacker deny their actions?
	- **Information Disclosure (I)**: Can sensitive information be exposed?
	- **Denial of Service (D)**: Can an attacker prevent legitimate access to services?
	- **Elevation of Privilege (E)**: Can an attacker gain unauthorized access or higher-level permissions?
- Table components are generally similar to what's found on a DFD;
	- Processes (Round thingy)
	- Data Stores (Squares)
	- Data Transmission (Arrows)
	- External Entities (Squares w/ border)

| **Components**        | **STRIDE<br>Category**     | **Threat<br>Example**                                                                            | **Mitigation<br>Strategy**                                                                                                            |
| --------------------- | -------------------------- | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------- |
| **Processes**         |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Attacker impersonates a legitimate user or internal system process.                              | Use strong authentication mechanisms (e.g., MFA), session tokens, and secure API key management.                                      |
|                       | **Tampering**              | Attacker modifies transaction processing logic or alters financial calculations.                 | Apply secure coding practices, validate input/output, and use hashing/digital signatures.                                             |
|                       | **Repudiation**            | User denies performing a transaction, and there's insufficient logging to prove it.              | Implement robust logging and auditing with tamper-proof logs. Use digital signatures.                                                 |
|                       | **Information Disclosure** | Sensitive info (e.g., account balance) is exposed via process logs or error messages.            | Mask sensitive data in logs/output. Use encryption (in memory & at rest). Enforce least privilege.                                    |
|                       | **Denial Of Service**      | Overwhelming a process (e.g., transaction processor) with too many requests.                     | Implement rate-limiting, load balancing, and failover mechanisms.                                                                     |
|                       | **Elevation of Privilege** | Attacker exploits process vulnerability to gain admin access or perform unauthorized actions.    | Enforce RBAC, least privilege, and apply security testing (static/dynamic analysis, audits).                                          |
| **Data Stores**       |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Attacker gains unauthorized access to the database by impersonating admin or service.            | Enforce strong database authentication, isolate services, and use firewalls and segmentation.                                         |
|                       | **Tampering**              | Attacker modifies data (e.g., changing account balances or transaction histories).               | Use encryption for data at rest, enforce integrity checks, and enable access logging/audits.                                          |
|                       | **Repudiation**            | Malicious insider alters transaction records and denies it, with no audit trail.                 | Enable transaction logs and audits. Use tamper-evident logging with secure timestamping.                                              |
|                       | **Information Disclosure** | Database with sensitive info (e.g., account numbers) is compromised and leaked.                  | Encrypt sensitive data at rest. Implement access controls and monitor access with alerts.                                             |
|                       | **Denial Of Service**      | Database is overwhelmed with queries or data, resulting in unavailability.                       | Implement scaling solutions, connection pooling, and set query limits to prevent abuse.                                               |
|                       | **Elevation of Privilege** | Low-level user finds a vulnerability to escalate privileges and gain full database control.      | Apply least privilege, review user roles, and apply patches/updates promptly.                                                         |
| **Data Transmission** |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Attacker intercepts and spoofs communication between the user and banking system.                | Implement SSL/TLS encryption and use certificates for server identity validation (HTTPS, mutual TLS).                                 |
|                       | **Tampering**              | Attacker intercepts and modifies data in transit (e.g., changing transaction amounts).           | Use TLS for encryption, apply checksums or digital signatures to verify data integrity.                                               |
|                       | **Repudiation**            | User/system denies sending/receiving data, and there's no record of the communication.           | Implement non-repudiation (e.g., digital signatures) and secure timestamp logging.                                                    |
|                       | **Information Disclosure** | Sensitive data (e.g., passwords) is intercepted during transmission.                             | Use end-to-end encryption (TLS) for all sensitive data in transit.                                                                    |
|                       | **Denial Of Service**      | Network attack floods transmission channels, disrupting services (e.g., DDoS attack).            | Use rate-limiting, network filtering, and DDoS mitigation services (e.g., CDN-based).                                                 |
|                       | **Elevation of Privilege** | Attacker exploits API or protocol weaknesses to elevate privileges and gain unauthorized access. | Apply strict API validation, secure protocols, and proper authentication for all data requests.                                       |
| **External Entities** |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Malicious user impersonates a legitimate bank customer (e.g., by stealing credentials).          | Use multi-factor authentication, CAPTCHA, and secure user registration processes.                                                     |
|                       | **Tampering**              | Malicious entity alters data it sends to the system (e.g., fraudulent transaction requests).     | Validate external input, apply input sanitization, and use secure API requests (HMAC/digital signatures).                             |
|                       | **Repudiation**            | Customer disputes a transaction or denies responsibility for fraudulent actions.                 | Use transaction logs, secure audit trails, and allow customers to verify transaction history.                                         |
|                       | **Information Disclosure** | External entity accesses/intercepts sensitive data from the banking system.                      | Enforce encryption, secure authentication for third-party access, and compliance with security standards (OAuth, token-based access). |
|                       | **Denial Of Service**      | External users overwhelm the banking system with requests, causing service outage.               | Implement rate-limiting, IP blocking, and deploy DDoS protection solutions.                                                           |
|                       | **Elevation of Privilege** | External entity exploits vulnerability to gain higher-level access (e.g., user to admin).        | Use RBAC, strict authorization checks, and regular security testing for external-facing functionalities.                              |

---


# Task 2: DREAD Modelling (Online Banking)
## DREAD
- Can be used without STRIDE, but then there would be no STRIDE categories and threats are realized and modelled according to DREAD only
	- Overall risk factor is used to categorize severity
- DREAD Acronym
	- **Damage Potential (D)**: How severe is the damage if the threat is realized?
	- **Reproducibility (R)**: How easy is it to reproduce the attack?
	- **Exploitability (E)**: How easy is it to exploit the vulnerability?
	- **Affected Users (A)**: How many users will be affected by the attack?
	- **Discoverability (D)**: How easy is it to discover the vulnerability?
- Overall Risk Factor Formula
	- (D + R + E + A + D)/5
	- Max must not exceed 10
	- Risk Number assignment
		- 0 for None
		- 5 for Medium
		- 10 for High

## DREAD w/ STRIDE Modelling

| Component             | Threat                                                                                                                                   | Damage Potential (D) | Reproducibility (R) | Exploitability (E) | Affected Users (A) | Discoverability (D) | Overall Risk Factor |
| --------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | -------------------- | ------------------- | ------------------ | ------------------ | ------------------- | ------------------- |
| **Processes**         |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing of User Credentials** (attacker impersonates legitimate user)                                                                 | 8                    | 8                   | 7                  | 9                  | 7                   | **7.8**             |
|                       | **Tampering with Transaction Logic** (modify transaction amounts or recipient details)                                                   | 9                    | 7                   | 6                  | 8                  | 6                   | **7.2**             |
|                       | **Repudiation of Transactions** (user denies initiating transaction, no audit trail)                                                     | 7                    | 6                   | 5                  | 6                  | 4                   | **5.6**             |
|                       | **Information Disclosure via Logs** (sensitive info like account balances leaked through logs)                                           | 6                    | 7                   | 5                  | 6                  | 8                   | **6.4**             |
|                       | **Denial of Service** (service overwhelmed by too many requests)                                                                         | 8                    | 7                   | 4                  | 9                  | 7                   | **7.0**             |
|                       | **Privilege Escalation** (attacker gains admin-level access via process vulnerability)                                                   | 9                    | 6                   | 7                  | 9                  | 5                   | **7.2**             |
| **Data Stores**       |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing Database Administrator** (attacker pretends to be DB admin to gain access)                                                    | 9                    | 5                   | 5                  | 9                  | 6                   | **6.8**             |
|                       | **Tampering with Transaction Data** (manipulate account balances or history)                                                             | 9                    | 7                   | 6                  | 9                  | 5                   | **7.2**             |
|                       | **Repudiation of Data Modifications** (no proper logging of DB access and modifications)                                                 | 7                    | 6                   | 5                  | 7                  | 5                   | **6.0**             |
|                       | **Information Disclosure via Database Breach** (unauthorized access to sensitive financial info)                                         | 9                    | 6                   | 6                  | 9                  | 5                   | **7.0**             |
|                       | **Denial of Service (Database)** (overwhelming DB with requests, rendering it unusable)                                                  | 8                    | 7                   | 5                  | 8                  | 6                   | **6.8**             |
|                       | **Privilege Escalation** (user escalates privilege to access sensitive DB tables)                                                        | 9                    | 6                   | 6                  | 9                  | 4                   | **6.8**             |
| **Data Transmission** |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing Server Communication** (man-in-the-middle attack, impersonating server)                                                       | 9                    | 6                   | 6                  | 8                  | 6                   | **7.0**             |
|                       | **Tampering with Data in Transit** (modifying transaction data in transit)                                                               | 9                    | 6                   | 5                  | 8                  | 5                   | **6.6**             |
|                       | **Repudiation of Data Transmissions** (no logs proving data was sent or received)                                                        | 7                    | 6                   | 4                  | 6                  | 5                   | **5.6**             |
|                       | **Information Disclosure** (sensitive data exposed during transmission due to lack of encryption)                                        | 9                    | 6                   | 5                  | 9                  | 5                   | **6.8**             |
|                       | **Denial of Service (API)** (overload communication channels, making APIs unusable)                                                      | 8                    | 7                   | 5                  | 8                  | 6                   | **6.8**             |
|                       | **Privilege Escalation via API Vulnerability** (attacker gains unauthorized access to API endpoints with elevated privileges)            | 9                    | 5                   | 6                  | 8                  | 5                   | **6.6**             |
| **External Entities** |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing External User** (malicious user impersonates a legitimate user via stolen credentials)                                        | 8                    | 7                   | 6                  | 9                  | 7                   | **7.4**             |
|                       | **Tampering with User Input** (malicious user submits fraudulent transaction data)                                                       | 9                    | 6                   | 6                  | 8                  | 5                   | **6.8**             |
|                       | **Repudiation of User Actions** (external user denies performing certain actions, such as initiating a transaction)                      | 7                    | 6                   | 5                  | 7                  | 5                   | **6.0**             |
|                       | **Information Disclosure by External Entity** (external user or service intercepts sensitive information)                                | 9                    | 6                   | 5                  | 9                  | 6                   | **7.0**             |
|                       | **Denial of Service by External User** (external users overwhelm the system with too many requests)                                      | 8                    | 7                   | 4                  | 9                  | 7                   | **7.0**             |
|                       | **Privilege Escalation via External Access** (external entity exploits vulnerability to gain unauthorized access or escalate privileges) | 9                    | 5                   | 6                  | 8                  | 6                   | **6.8**             |

## DREAD w/o STRIDE

| Component                   | Threat                                                                                                  | Damage Potential (D) | Reproducibility (R) | Exploitability (E) | Affected Users (A) | Discoverability (D) | Overall Risk Factor |
| --------------------------- | ------------------------------------------------------------------------------------------------------- | -------------------- | ------------------- | ------------------ | ------------------ | ------------------- | ------------------- |
| **User Authentication**     | **Stolen Credentials** (attacker uses stolen login credentials to access user accounts)                 | 8                    | 8                   | 7                  | 9                  | 7                   | **7.8**             |
| **Transaction Processing**  | **Fraudulent Transactions** (attacker submits fake transactions by exploiting weak input validation)    | 9                    | 7                   | 6                  | 8                  | 6                   | **7.2**             |
| **User Interface**          | **Phishing Attack** (attacker creates a fake banking website to steal user credentials)                 | 9                    | 7                   | 5                  | 9                  | 8                   | **7.6**             |
| **Banking Database**        | **SQL Injection** (attacker executes malicious queries to alter or steal sensitive data)                | 9                    | 8                   | 6                  | 9                  | 6                   | **7.6**             |
| **API Communication**       | **Man-in-the-Middle (MITM)** (attacker intercepts communication between user and server to alter data)  | 9                    | 7                   | 5                  | 8                  | 5                   | **6.8**             |
| **Web Application**         | **Cross-Site Scripting (XSS)** (attacker injects scripts to steal user information)                     | 8                    | 6                   | 6                  | 7                  | 5                   | **6.4**             |
| **Customer Support Portal** | **Account Takeover via Social Engineering** (attacker tricks support into resetting account)            | 8                    | 6                   | 6                  | 8                  | 6                   | **6.8**             |
| **Mobile Banking App**      | **Weak Session Management** (attacker hijacks user session to perform unauthorized actions)             | 8                    | 7                   | 6                  | 9                  | 7                   | **7.4**             |
| **Backend Servers**         | **Denial of Service (DoS)** (attacker overwhelms backend servers with traffic to take down the service) | 7                    | 8                   | 5                  | 9                  | 6                   | **7.0**             |
| **Third-Party Services**    | **Supply Chain Attack** (compromise of third-party services used in the banking system)                 | 9                    | 6                   | 4                  | 8                  | 5                   | **6.4**             |
| **Customer Notifications**  | **Sensitive Data Leak in Email/SMS** (sensitive info exposed in clear text in notifications)            | 6                    | 6                   | 5                  | 8                  | 7                   | **6.4**             |