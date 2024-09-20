> [!NOTE]
> While the tables for both STRIDE & DREAD modelling have been added at the end, try to first solve them on your own

| Lecture Number | Lecture Name                                                                              | Status                              |
| -------------- | ----------------------------------------------------------------------------------------- | ----------------------------------- |
| 1 & 2          | Introduction to SSD                                                                       | :warning:                           |
| 3 & 4          | Security Requirements & Design Principles (OWASP)                                         | :warning:                           |
| Assignment 1   | Paper study on SecSDLC                                                                    | Repeated info from Lectures 1-2 :x: | 
| 5, 6 & 7       | VM4SEC Case Study & Methodology + Architectural Design + Quantitative Security Assessment | :warning:                           |
| Assignment 2   | Threagile                                                                                 | :warning:                           |
| Task 1         | STRIDE Online Banking                                                                     | :white_check_mark:                  |
| Task 2         | DREAD Threat Modelling                                                                    | :white_check_mark:                  |


# **Lecture 1: Introduction to SSD pt1**

## **What is Secure Software Design?**

Secure Software Design refers to the process of embedding security throughout the entire Software Development Lifecycle (SDLC). The goal is to ensure that the system is designed to minimize risks, avoid vulnerabilities, and withstand potential cyberattacks.

## **Key Characteristics**
- **Proactive Security**: Security must be considered from the start of the development process, rather than being added as an afterthought.
- **Resilience to Attacks**: Secure software is built to defend against known vulnerabilities and unforeseen security threats.
- **Minimized Attack Surface**: The attack surface refers to the total number of potential entry points for an attacker. By limiting unnecessary features and access points, secure software reduces these vulnerabilities.
- **Compliance with Standards**: Secure software adheres to relevant security standards and legal requirements (e.g., **OWASP**, **GDPR**, **HIPAA**).

## **Importance of Secure Software Design**

The increasing frequency of cyberattacks has made security an essential consideration in software development. Failing to integrate security can lead to:

- **Financial losses** due to breaches and theft of sensitive information.
- **Reputational damage** as customers and users lose trust.
- **Legal repercussions**, including fines for non-compliance with regulations like **GDPR** or **HIPAA**.

## **Core Security Principles**
- **CIA Triad**:
	- **Confidentiality**: Protecting information from unauthorized access.
	- **Integrity**: Ensuring data is accurate and not tampered with.
	- **Availability**: Ensuring the system and its data are accessible to authorized users when needed.
- **Principle of Least Privilege (PoLP)**: Each user or process should have only the minimal privileges necessary to complete its function.
- **Separation of Duties (SoD)**: Critical tasks should be divided among different people or systems to reduce the risk of fraud or abuse.
- **Defense in Depth**: Layers of security controls are implemented to ensure that if one control fails, others will still protect the system.
- **Fail-Safe Defaults**: Systems should default to a secure state, such as locking user accounts after a set number of failed login attempts.

## **Secure SDLC vs. Traditional SDLC**

| SDLC Phase         | Traditional SDLC         | Secure SDLC                     |
| ------------------ | ------------------------ | ------------------------------- |
| **Planning**       | Functional Requirements  | Security Requirements           |
| **Design**         | Functional Design        | Secure Design (Threat Modeling) |
| **Implementation** | Code Development         | Secure Coding Practices         |
| **Testing**        | Unit/Integration Testing | Security Testing (SAST/DAST)    |
| **Deployment**     | Launch                   | Secure Deployment (Hardening)   |
| **Maintenance**    | Updates                  | Patching Vulnerabilities        |

## **Why Integrate Security into the SDLC?**

Fixing security issues early in the SDLC is much more cost-effective than addressing them post-deployment. The **cost of fixing vulnerabilities** increases significantly when security flaws are identified later in the process.

## **Threat Modeling**

Threat modeling is a structured process used to identify, assess, and mitigate potential security risks to a software system. By understanding and prioritizing these threats, developers can incorporate security measures to mitigate risks before the software is deployed. Key steps in threat modeling include:

- **Identifying potential threats**: Understanding how attackers might exploit the system.
- **Prioritizing threats**: Determining which threats are most critical.
- **Implementing security measures**: Incorporating protections into the design to reduce or eliminate risks.

## **Secure Coding Standards**

Secure coding involves following guidelines to prevent vulnerabilities, such as:

- Avoiding **SQL Injection**, **Cross-Site Scripting (XSS)**, and **Cross-Site Request Forgery (CSRF)**.
- Using **input validation** and **output encoding** to prevent attacks.
- Implementing strong **authentication** and **authorization** mechanisms.

## **Security Testing**

There are several types of security testing that must be conducted to ensure the system is secure:

- **Static Application Security Testing (SAST)**: Analyzing the source code to identify security flaws.
- **Dynamic Application Security Testing (DAST)**: Testing the application in its running state to uncover vulnerabilities.
- **Penetration Testing**: Simulating real-world attacks to uncover potential security weaknesses.

# **Lecture 2: Introduction to SSD pt2**
## **Secure Deployment Practices**

Deploying software securely involves **hardening** the application, which means removing unnecessary services and ensuring secure configuration. Post-deployment, it’s crucial to monitor security logs and conduct regular audits to identify any suspicious activities.

## **Misuse Cases**

A misuse case details how the system can be attacked or misused, focusing on security threats rather than system errors. Misuse cases are critical because they:

- Draw the team’s attention to security issues.
- Help identify potential attack vectors early in the project.
- Ensure security is part of functional requirements, not just an afterthought.

## **Examples of Misuse Cases**:
- **Defacing a website**: An attacker’s goal might be to alter or vandalize a website's content.
- **Stealing sensitive information**: Hackers may aim to extract trade secrets or personal data.
- **Exploiting system resources**: For instance, hacking into a bank’s website to steal money.

## **Building Misuse Cases**
- Misuse cases use the same format as regular use cases but focus on malicious actions.
	- **Security experts** should collaborate with development teams to help identify how hackers might attack.
	- **Key steps** hackers might take should be understood and addressed early.
	- **Encourage team discussions** to think like attackers.

## **Key Reminders**:
- Focus on **breadth over depth**: Cover as many potential attack vectors as possible, even if you can’t model all threats in detail.
- Every misuse case reduces your system’s vulnerability.

## **Security-Oriented Development**
- **Security-Oriented Implementation**: How you set system requirements and write code impacts security. Proper coding standards must be followed to avoid introducing vulnerabilities.
- **Verification**: Regular checks are needed to catch **common code smells**, such as hardcoded passwords or improper error handling.
- **Security-Oriented Processes**: Having a structured security strategy ensures the development team works together to build a more secure system.

## **Cost of Fixing Vulnerabilities**

It’s essential to remember that addressing security issues early in the SDLC is not only cheaper but also more efficient. Fixing a vulnerability post-deployment can cost **up to 100 times more** than fixing it during the design or coding phase.

---

# **Lecture 3: Security Requirements & Design Principles (OWASP) pt 1**

## **Security Requirements**

Security requirements define the conditions that a software system must meet to remain secure. These should be identified early in the development process and incorporated into the design phase.

### **Key Examples**:
- **Minimum Privileges**: Ensure that entities (programs or users) are given only the minimum privileges necessary to complete a task.
	- **Temporary Privilege Elevation**: Should be revoked as soon as the task is completed.
	- **Specific Privileges**: Run server processes with only the privileges they require to limit potential damage if compromised.
- **Default Denial of Access**: If a subject does not have explicit access to an object, access should be denied by default.
	- **Permissions First**: Access decisions are made based on permissions rather than exceptions.
	- **Example**: A newly created file is only accessible to its creator unless permissions are explicitly granted.
- **Simplicity**: Security mechanisms should be as simple as possible to reduce errors and make verification easier.
- **Transparency**: The security of a system should not depend on keeping its design or implementation secret. The strength lies in well-designed algorithms and keys.
	- **Example**: DVD players rely on encryption keys to decrypt movies, but the algorithm itself is publicly known.

### **Security Design Principles**

These principles guide how software should be designed to mitigate security risks.

#### **Principle of Least Privilege**
- Subjects (users, programs) should only have access to the resources they need to perform their tasks.
- **Example**: A system operator should not perform security administration tasks.

#### **Fail-Safe Defaults**
- The default action should be to deny access unless explicitly permitted. If a system action fails, it should leave the system in a secure state.
- **Example**: After a failed attempt to access a resource, the system should not grant access, ensuring it remains secure.

#### **Separation of Duties**
- **Functions are divided** to prevent a single person from controlling all aspects of a critical task.
	- **Example**: Separation of user roles ensures that students cannot access submission details.

#### **Compartmentalization**
- If one process is compromised, others should remain unaffected.
	- **Example**: Android isolates each user activity in its own virtual machine (sandbox), limiting the scope of potential attacks.

#### **Complete Mediation**
- Every access to an object must be checked for proper authority.
	- **Example**: If a user tries to access a file, the system must verify permissions each time rather than relying on cached access decisions.

#### **Open Design**
- Security should not rely on the secrecy of the design but rather on robust mechanisms like encryption keys.
	- **Example**: Public scrutiny of encryption algorithms improves their reliability.

#### **Defense in Depth**
- Implement multiple layers of defense, so that failure in one control doesn't compromise the entire system.
	- **Example**: Combining firewalls, intrusion detection systems, and secure coding ensures better protection.

### **OWASP Guidelines for Secure Software Design (Use Case Level)**

The OWASP (Open Web Application Security Project) guidelines provide best practices for securing software at the use case level.

#### **User Authentication**
- **Best Practice**: Implement strong authentication mechanisms.
	- Use **multi-factor authentication (MFA)** to add layers of security.
	- Ensure **passwords are hashed** using strong algorithms like **bcrypt**.
	- Implement **account lockout** after repeated failed login attempts to prevent brute force attacks.

#### **User Authorization**
- **Best Practice**: Enforce access controls consistently.
	- Use **role-based access control (RBAC)** to limit user permissions.
	- Validate permissions on the server side and avoid trusting client-side checks.

#### **Input Validation**
- **Best Practice**: Validate all inputs to prevent **injection** attacks.
	- Use **allowlist validation** (permitting only known good data).
	- **Sanitize inputs** to remove dangerous characters and prevent SQL injection.

---

# **Lecture 4: Security Requirements & Design Principles (OWASP) pt2**

## **Session Management**

Session management ensures that users' interactions with a system remain secure over multiple requests.

### **Best Practices**:
- Use **secure, randomly generated session IDs**.
- Store session identifiers in **HttpOnly cookies** to prevent access by JavaScript.
- Implement **session timeout and logout** mechanisms to protect inactive sessions.
- Use **HTTPS** to secure session data in transit and prevent session hijacking.

### **Error Handling and Logging**
- **Best Practice**: Implement secure error handling and logging mechanisms.
	- Display **generic error messages** to users, but log detailed errors server-side.
	- Ensure **logs do not expose sensitive information** (like passwords).
	- Monitor logs for suspicious activity (e.g., multiple failed login attempts).

### **Data Encryption**
- **Best Practice**: Protect sensitive data using strong encryption.
	- Encrypt data both at rest (e.g., in databases) and in transit (e.g., using **TLS**).
	- Use strong, industry-standard algorithms like **AES-256** for encryption.
	- Ensure that **encryption keys** are stored securely and separately from the encrypted data.

### **File Uploads**
- **Best Practice**: Securely handle file uploads to prevent attacks.
	- Restrict file types using an **allowlist**.
	- Validate file names to prevent **path traversal** attacks.
	- Store uploaded files outside the web root to prevent direct execution of malicious files.

### **Cross-Site Scripting (XSS) Prevention**
- **Best Practice**: Prevent XSS by sanitizing and escaping user input.
	- Escape user input when rendering content in HTML or JavaScript.
	- Use **Content Security Policy (CSP)** to limit the sources from which scripts can be loaded.

### **Cross-Site Request Forgery (CSRF) Protection**
- **Best Practice**: Protect against CSRF by using anti-CSRF tokens.
	- Ensure state-changing actions (e.g., form submissions) include unique tokens.
	- Validate the origin of requests using **Referrer** or **Origin** headers.

### **API Security**
- **Best Practice**: Secure APIs with robust authentication and validation.
	- Use **OAuth2** or other secure authentication methods for APIs.
	- Implement **rate limiting** to prevent DoS attacks.
	- **Encrypt API traffic** using TLS to secure sensitive data.

### **Handling Sensitive Data**
- **Best Practice**: Minimize the exposure of sensitive data.
	- Collect and store only the minimum necessary sensitive data (e.g., personally identifiable information or PII).
	- Use **strong encryption** and apply **data masking** where applicable.

### **Secure Configuration Management**
- **Best Practice**: Follow secure configuration practices.
	- Disable unnecessary services and follow the **principle of least privilege** when configuring systems.
	- Regularly review configurations and update them according to the latest security best practices.

### **Logging and Monitoring**
- **Best Practice**: Implement logging and monitoring to detect security incidents.
	- Log key events like login attempts and access to sensitive data.
	- Protect logs from unauthorized access and tampering.

### **Third-Party Components**
- **Best Practice**: Manage third-party components to minimize risks.
	- Regularly update components to their latest secure versions.
	- Use tools like **software composition analysis (SCA)** to monitor third-party components for vulnerabilities.

### **Secure Software Update Mechanisms**
- **Best Practice**: Ensure secure distribution of software updates.
	- Sign updates with cryptographic signatures to verify their authenticity.
	- Use secure channels (e.g., **HTTPS**) to distribute updates.

### **Continuous Security Testing**
- **Best Practice**: Regularly test and validate security controls.
	- Integrate security testing into the **CI/CD pipeline** to catch vulnerabilities early.
	- Perform both static and dynamic analysis regularly.

---

# **Lecture 5: VM4SEC Case Study**

## **Today’s Agenda**
- **Secure SDLC**: A complete process with an industrial case study (VM4SEC).
- **Architecture and Methodology**: Full discussion of modules from requirements to deployment.
- **Case Study**: Follow the **VM4SEC** platform process.


## **High-Level Methodology**

### **Requirements Elicitation and Architecture Design**
- Functional and non-functional requirements of the platform were gathered through **question and feedback sessions** with software engineers and project managers.
- Based on these requirements, **Data Flow Diagrams (DFDs)** were created during the design phase.


### **Model/Mechanism Configuration and Tuning**
- **Quantitative Security Assessment (QSA)** and **Vulnerability Prediction Models (VPMs)** were used, including real-world vulnerabilities common in the company’s projects.
- The **QSA model** was designed to identify security issues effectively.


### **Implementation and Deployment**
- **Security monitoring mechanisms** were implemented.
- The security evaluation results were visualized and deployed in the company’s environment for practical evaluation during development workflows.

### **Focused Groups: Key Points**
- **Block 1**: Participants preferred **static analysis** for its ability to highlight security issues in the source code, even before compilation or execution. However, a major drawback was the **large volume of alerts**, which made management difficult.
- **Block 2**: Most participants were unaware of trends in software security monitoring but expressed interest in **Quantitative Security Assessment (QSA)** and **Vulnerability Prediction Models (VPM)** as tools for improving development pipelines. They viewed **ML-based fuzzing** and **penetration testing** as unnecessary, preferring traditional tools.
- **Block 3**: Participants wanted the platform to directly access source code repositories like **GitHub**, **Bitbucket**, and **GitLab**. A **Graphical User Interface (GUI)** for results visualization was also emphasized.
- **Block 4**: Critical security characteristics like **Confidentiality**, **Integrity**, and **Availability** were identified as essential for any software under development.


### **Requirements Elicitation Process**
- Valuable feedback from the company led to the elicitation of both **functional** and **non-functional requirements** and the definition of the platform’s **use cases**, architecture, and technical specifications.
- Requirements gathering involved close communication with stakeholders.


### **Use Cases and Requirements**

#### **Functional Requirements**:
1. **Identifying software security issues**.
2. **Assessing the security level of the software**.
3. **Predicting software vulnerabilities**.

---

# **Lecture 6: Architectural Design**

- The system design followed the **IEEE 1471 international standard**, utilizing the **DFD technique** to visualize data flows and system structure.
- **Context Diagram (Level-0 DFD)**: Represents the system as a black box, showing its interactions with external entities such as users and third-party systems. It helps in visualizing the system's scope and its data flows.

## **Level-0 DFD** (Context Diagram)
- **Purpose**: Provides a high-level overview of the entire system, focusing on the interaction between the system and external entities.
	1. **Identify External Entities**: These are the people, organizations, or other systems that interact with your system. Label them clearly (e.g., User, External Tools, Third-party APIs).
	2. **Identify the Main System**: Represent your entire system as a single process or box. This should be the core function or application you are diagramming.
	3. **Define Data Flows**: Show how data moves between external entities and the system. Each external entity will send or receive data from the main system.
	4. **Connect Entities to the System**: Use arrows to represent the flow of data to and from the external entities and the system.

## **Level-1 DFD**
- **Purpose**: Breaks down the main system (from Level-0) into its main sub-processes to show more detailed data flows.
	1. **Decompose the Main System**: Divide the single system from Level-0 into multiple sub-processes that represent key functionalities (e.g., Login, Checkout, Report Generation, etc.).
	2. **Identify Data Stores**: Add data stores where information is stored (e.g., Databases, Logs). These should represent where data is saved or retrieved.
	3. **Define Data Flows Between Processes**: Draw data flows between the sub-processes, showing how information moves between different parts of the system.
	4. **Show Interaction with External Entities**: Continue to show how external entities interact with individual processes or data stores within the system.


## **Component Diagram**
- Provides a high-level system overview, focusing on component interaction rather than technical details.

## **Core Security Components**:
1. **Quantitative Security Assessment**: Uses static analysis results and security models to compute security scores.
2. **Vulnerability Prediction**: Predicts which parts of the software are most likely to have vulnerabilities using text mining techniques.

---

# **Lecture 7: Quantitative Security Assessment**

- Aggregates **static analysis results** to compute high-level **security scores**.
- Security scores are based on characteristics like **Confidentiality**, **Integrity**, and **Availability**, further broken down into low-level properties like **Null Pointer** and **Buffer Overflow** vulnerabilities.
- ### **Process Flow**:
	1. **Start**: Begin by applying static analysis to the application.
	2. **Compute Vulnerability Densities**: Calculate the densities of selected vulnerabilities (e.g., **Null Pointer**, **Weak Cryptography**).
	3. **Assign Scores to Security Properties**: Based on thresholds, assign scores between 0 and 1.
	4. **Aggregate Scores**: Aggregate scores for security properties using weights.
	5. **Compute Security Characteristics Scores**: Calculate scores for overall security characteristics.
	6. **Compute Overall Security Index**: Take the average of the security characteristics scores.
	7. **End**: Finalize the assessment process.
- ### **Security Characteristics**:
	- **Confidentiality**.
	- **Integrity**.
	- **Availability**.
- ### **Security Properties**:
	- **Null Pointer**.
	- **Weak Cryptography**.
	- **Insufficient/Incorrect Logging**.
	- **Security Misconfiguration**.
- ### **Vulnerability Prediction**
	- **Text mining techniques** are used to extract **textual attributes** from the source code.
	- **Deep learning models** are applied to predict which software components are likely to contain vulnerabilities.

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
### DREAD
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

---