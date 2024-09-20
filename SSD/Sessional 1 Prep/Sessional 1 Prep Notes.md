> [!NOTE]
> - While the tables for both STRIDE & DREAD modelling have been added at the end, try to first solve them on your own
> - Added graded task into notes as well but not sure if its included

| Lecture<br>Number | Lecture<br>Name                                   | Status                                            |
| ----------------- | ------------------------------------------------- | ------------------------------------------------- |
| 1 & 2             | Introduction to SSD                               | :white_check_mark:                                |
| 3 & 4             | Security Requirements & Design Principles (OWASP) | :white_check_mark:                                |
| Assignment 1      | Paper study on SecSDLC                            | Repeated info from Lectures 1-2 <br>:x:           |
| 5, 6 & 7          | SecSDLC VM4SEC Case Study                         | :white_check_mark:                                |
| Assignment 2      | Threagile                                         | Dunno what can come from this in the exam<br> :x: |
| Task 1            | STRIDE Online Banking                             | :white_check_mark:                                |
| Task 2            | DREAD Threat Modelling                            | :white_check_mark:                                |

# **Lecture 1 & 2: Introduction to SSD**
## **Secure Software Design?**
- ### **Key Characteristics**
	- Secure Software Design refers to the process of embedding security throughout the entire Software Development Lifecycle (SDLC). The goal is to ensure that the system is designed to minimize risks, avoid vulnerabilities, and withstand potential cyberattacks.
		- **Proactive Security**: Security must be considered from the start of the development process, rather than being added as an afterthought.
		- **Resilience to Attacks**: Secure software is built to defend against known vulnerabilities and unforeseen security threats.
		- **Minimized Attack Surface**: The attack surface refers to the total number of potential entry points for an attacker. By limiting unnecessary features and access points, secure software reduces these vulnerabilities.
		- **Compliance with Standards**: Secure software adheres to relevant security standards and legal requirements (e.g., **OWASP**, **GDPR**, **HIPAA**).
- ### **Importance of Secure Software Design**
	- The increasing frequency of cyberattacks has made security an essential consideration in software development. Failing to integrate security can lead to:
		- **Financial losses** due to breaches and theft of sensitive information.
		- **Reputational damage** as customers and users lose trust.
		- **Legal repercussions**, including fines for non-compliance with regulations like **GDPR** or **HIPAA**.
- ### **Core Security Principles**
	- **CIA Triad**:
		- **Confidentiality**:
			- Protecting information from unauthorized access.
		- **Integrity**:
			- Ensuring data is accurate and not tampered with.
		- **Availability**:
			- Ensuring the system and its data are accessible to authorized users when needed.
	- **Principle of Least Privilege (PoLP)**:
		- Each user or process should have only the minimal privileges necessary to complete its function.
	- **Separation of Duties (SoD)**:
		- Critical tasks should be divided among different people or systems to reduce the risk of fraud or abuse.
	- **Defense in Depth**:
		- Layers of security controls are implemented to ensure that if one control fails, others will still protect the system.
	- **Fail-Safe Defaults**:
		- Systems should default to a secure state, such as locking user accounts after a set number of failed login attempts.

## **Secure SDLC vs. Traditional SDLC**

| SDLC Phase         | Traditional SDLC         | Secure SDLC                     |
| ------------------ | ------------------------ | ------------------------------- |
| **Planning**       | Functional Requirements  | Security Requirements           |
| **Design**         | Functional Design        | Secure Design (Threat Modeling) |
| **Implementation** | Code Development         | Secure Coding Practices         |
| **Testing**        | Unit/Integration Testing | Security Testing (SAST/DAST)    |
| **Deployment**     | Launch                   | Secure Deployment (Hardening)   |
| **Maintenance**    | Updates                  | Patching Vulnerabilities        |

### **Integrating Security into the SDLC?**

Fixing security issues early in the SDLC is much more cost-effective than addressing them post-deployment. The **cost of fixing vulnerabilities** increases significantly when security flaws are identified later in the process.

## **Threat Modeling**
- Threat modeling is a structured process used to identify, assess, and mitigate potential security risks to a software system. Key steps in threat modeling include:
	- **Identifying potential threats**:
		- Understanding how attackers might exploit the system.
	- **Prioritizing threats**:
		- Determining which threats are most critical.
	- **Implementing security measures**:
		- Incorporating protections into the design to reduce or eliminate risks.

## **Secure Coding Standards**
- Secure coding involves following guidelines to prevent vulnerabilities, such as:
	- Avoiding **SQL Injection**, **Cross-Site Scripting (XSS)**, and **Cross-Site Request Forgery (CSRF)**.
	- Using **input validation** and **output encoding** to prevent attacks.
	- Implementing strong **authentication** and **authorization** mechanisms.

## **Security Testing**
- **Static Application Security Testing (SAST)**:
	- Analyzing the source code to identify security flaws.
- **Dynamic Application Security Testing (DAST)**:
	- Testing the application in its running state to uncover vulnerabilities.
- **Penetration Testing**:
	- Simulating real-world attacks to uncover potential security weaknesses.

## **Secure Deployment Practices**

Deploying software securely involves **hardening** the application, which means removing unnecessary services and ensuring secure configuration. Post-deployment, it’s crucial to monitor security logs and conduct regular audits to identify any suspicious activities.

## **Misuse Cases**
- ### Definition
	- A misuse case details how the system can be attacked or misused, focusing on security threats rather than system errors.
		- Draw the team’s attention to security issues.
		- Help identify potential attack vectors early in the project.
		- Ensure security is part of functional requirements, not just an afterthought.
- ### Examples:
	- **Defacing a website**:
		- An attacker’s goal might be to alter or vandalize a website's content.
	- **Stealing sensitive information**:
		- Hackers may aim to extract trade secrets or personal data.
	- **Exploiting system resources**: For instance, hacking into a bank’s website to steal money.
- ### **Building Misuse Cases**
	- Misuse cases use the same format as regular use cases but focus on malicious actions.
		- **Security experts** should collaborate with development teams to help identify how hackers might attack.
		- **Key steps** hackers might take should be understood and addressed early.
		- **Encourage team discussions** to think like attackers.
		- **Enforce Security** to be a part of the development process
- ### **Key Reminders**:
	- Focus on **breadth over depth**: Cover as many potential attack vectors as possible, even if you can’t model all threats in detail.
	- Every misuse case reduces your system’s vulnerability.
	- Misuse cases do **NOT** include human/system error

## Security Oriented Modelling
- #### **Security-Oriented Development**
	- **Security-Oriented Implementation**:
		- How you set system requirements and write code impacts security. Proper coding standards must be followed to avoid introducing vulnerabilities.
	- **Verification**:
		- Regular checks are needed to catch **common code smells**, such as hardcoded passwords or improper error handling.
	- **Security-Oriented Processes**:
		- Having a structured security strategy ensures the development team works together to build a more secure system.
	- **Cost of Fixing Vulnerabilities**
		- It’s essential to remember that addressing security issues early in the SDLC is not only cheaper but also more efficient.
			- Fixing a vulnerability post-deployment can cost **up to 100 times more** than fixing it during the design or coding phase.

---

# **Lecture 3 & 4: Security Requirements & Design Principles (OWASP)**

## **Security Requirements**

Security requirements define the conditions that a software system must meet to remain secure. These should be identified early in the development process and incorporated into the design phase.

### **Security Design Principles**

> [!NOTE]
> - **Fail-Safe Defaults** can be linked to **Accountability** (A).
> - **Psychological Acceptability** connects with **Least Astonishment** (L).
> - **Complete Mediation** connects with **Accountability** (A).

**"PLASTIC MOLES"**
1. **P** – **Principle of Least Privilege**
2. **L** – **Layering**
3. **A** – **Accountability (Check Every Access)**
4. **S** – **Separation of Privilege**
5. **T** – **Transparency (Open Design)**
6. **I** – **Isolation**
7. **C** – **Compartmentalization (Least Common Mechanism)**
8. **M** – **Modularity**
9. **O** – **Open Design**
10. **L** – **Least Astonishment**
11. **E** – **Encapsulation**
12. **S** – **Simplicity (Economy of Mechanism)**

| **Security Design Principles**      | **Description**                                                                                                                                                                                                                                                                                                                                                                      |
| ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **1. Principle of Least Privilege** | - A subject/program should be given only the minimum privileges necessary to complete its task. <br> - Temporary privilege elevation should be abandoned immediately. <br> - Append permission only for logging processes. <br> - Server processes should run with only the required privileges.                                                                                     |
| **2. Fail-Safe Defaults**           | - Access to an object should be denied unless explicitly allowed. <br> - Basic access decisions rely on permissions, not exclusion. <br> - Default action is to deny access. <br> - If an action fails, the system should remain as secure as before. <br> - New files are accessible only to their creator. <br> - The system must retrieve the user ID for access requests.        |
| **3. Economy of Mechanism**         | - Security mechanisms should be as simple as possible. <br> - Design, implementation, and interactions should remain straightforward to enable easier analysis, verification, and testing.                                                                                                                                                                                           |
| **4. Open Design**                  | - Security should not depend on secrecy. <br> - The key should remain secret, but the algorithm should be open to public scrutiny. <br> - Complexity does not enhance security (e.g., DVD players decrypt disk keys with publicly known algorithms).                                                                                                                                 |
| **5. Check Every Access**           | - Every access to every object must be checked for authorization.                                                                                                                                                                                                                                                                                                                    |
| **6. Separation of Privilege**      | - Systems should not grant permission based on a single condition. <br> - Separation of duties: No single entity controls the entire transaction. <br> - Compartmentalization: A security issue in one process should not affect others. <br> - User actions (e.g., logins) should trigger system messages. <br> - Android activities run in separate virtual machines (sandboxing). |
| **7. Least Common Mechanism**       | - Shared resources increase the likelihood of one service influencing another. <br> - Mechanisms for accessing resources should not be shared. <br> - A compromised web server could lead to complete system access.                                                                                                                                                                 |
| **8. Complete Mediation**           | - Changes in authority should be carefully managed in local memories. <br> - Every access should be verified against the access control mechanism, not cached decisions. <br> - Access control must be enforced when reading files and database items.                                                                                                                               |
| **9. Psychological Acceptability**  | - Security mechanisms should be user-friendly, with minimal interference. <br> - If security measures are confusing, users are likely to make errors. <br> - Authorized users should experience minimal obstructions.                                                                                                                                                                |
| **10. Isolation**                   | - Physical isolation is critical: No physical connections should exist between systems. <br> - Processes, files, and user data should be isolated in modern OS environments. <br> - Public access systems must be isolated from critical infrastructure. <br> - Cryptographic software should be isolated to prevent tampering and exposure.                                         |
| **11. Encapsulation**               | - Internal data structures should only be accessible to protected subsystem procedures. <br> - Encapsulation secures data and procedures in their own domain.                                                                                                                                                                                                                        |
| **12. Modularity**                  | - Protocols and applications should use common cryptographic modules. <br> - Separate, protected modules enhance system security. <br> - Modular architecture supports upgrading without redesign.                                                                                                                                                                                   |
| **13. Layering**                    | - Systems should implement multiple protection layers (defense in depth). <br> - Failure of one mechanism should not compromise the entire system.                                                                                                                                                                                                                                   |
| **14. Least Astonishment**          | - Authorization mechanisms should be transparent, allowing users to intuitively understand security goals.                                                                                                                                                                                                                                                                           |

### **OWASP Guidelines for Secure Software Design (Use Case Level)**

The OWASP (Open Web Application Security Project) guidelines provide best practices for securing software at the use case level.

| **Section**                         | **Guideline**                                  | **Use Case**                              | **Best Practices**                                                                                                                           |
| ----------------------------------- | ---------------------------------------------- | ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| **1. User Authentication**          | Implement strong authentication mechanisms     | When users log into the application       | - Use MFA <br> - Salted password hashing (e.g., bcrypt) <br> - Account lockout <br> - Avoid weak recovery mechanisms                         |
| **2. User Authorization**           | Enforce access controls consistently           | When accessing resources or features      | - Role-based access control (RBAC) <br> - Server-side validation <br> - Apply least privilege <br> - Regularly review permissions            |
| **3. Data Validation**              | Validate all inputs                            | When accepting any input                  | - Validate on both client and server <br> - Use allowlists <br> - Sanitize inputs <br> - Use prepared SQL statements                         |
| **4. Session Management**           | Securely manage user sessions                  | When handling multiple requests           | - Random session IDs <br> - HttpOnly cookies <br> - Session timeout <br> - Use HTTPS                                                         |
| **5. Error Handling/Logging**       | Secure error handling and logging              | On errors or unusual activity             | - Generic error messages <br> - Logs should not expose sensitive info <br> - Monitor for suspicious activity <br> - Secure logging           |
| **6. Data Encryption**              | Encrypt sensitive data                         | When storing or transmitting data         | - Use strong encryption (e.g., AES-256) <br> - Encrypt before storage <br> - Secure cryptographic keys <br> - Implement TLS                  |
| **7. File Uploads**                 | Secure file uploads                            | When allowing file uploads                | - Restrict file types <br> - Sanitize file names <br> - Store files outside web root <br> - Scan for malware                                 |
| **8. Cross-Site Scripting (XSS)**   | Prevent XSS                                    | When displaying user content              | - Escape input <br> - Use Content Security Policy (CSP) <br> - Proper output encoding <br> - Sanitize input                                  |
| **9. CSRF Protection**              | Implement CSRF protection                      | On state-changing requests                | - Use anti-CSRF tokens <br> - Re-authenticate for critical actions <br> - Validate request origin <br> - Use same-site cookies               |
| **10. API Security**                | Secure APIs with authentication, validation    | When exposing APIs                        | - Use OAuth2 <br> - Rate limiting <br> - Validate inputs <br> - Use TLS for encryption                                                       |
| **11. Software Updates**            | Ensure secure update distribution              | When providing updates                    | - Sign updates <br> - Use HTTPS <br> - Automate updates <br> - Validate update integrity                                                     |
| **12. Sensitive Data Handling**     | Protect sensitive data                         | When processing or storing data           | - Minimize storage <br> - Encrypt data <br> - Use data masking <br> - Strong access controls                                                 |
| **13. Configuration Management**    | Maintain secure configurations                 | When deploying and managing software      | - Follow least privilege <br> - Disable unnecessary features <br> - Regularly review settings <br> - Monitor for config drift                |
| **14. Logging and Monitoring**      | Implement logging and monitoring               | For tracking security incidents           | - Log security events <br> - Protect logs <br> - Real-time monitoring <br> - Regularly review logs                                           |
| **15. Third-Party Components**      | Manage third-party libraries                   | When using external components            | - Regularly update components <br> - Fix vulnerabilities <br> - Prefer well-maintained libraries <br> - Use SCA tools                        |
| **16. Mobile App Security**         | Ensure secure coding practices for mobile apps | When developing mobile apps               | - Use secure storage <br> - Strong authentication <br> - TLS for communications <br> - Regularly update security protocols                   |
| **17. Secure Deployment**           | Deploy software securely                       | When deploying to production environments | - Automate deployment <br> - Use environment-specific configs <br> - Security test before deployment <br> - Monitor for compromises          |
| **18. Security Awareness**          | Train teams on security best practices         | During staff training or onboarding       | - Ongoing security training <br> - Promote security-first culture <br> - Stay updated on threats <br> - Encourage secure coding              |
| **19. Continuous Security Testing** | Regularly test security controls               | Throughout development lifecycle          | - Integrate into CI/CD <br> - Regular security assessments <br> - Automate security tests <br> - Promptly fix vulnerabilities                |
| **20. Secure SDLC**                 | Integrate security into SDLC                   | Across all development phases             | - Security in planning/design <br> - Threat modeling <br> - Security at every SDLC phase <br> - Continuous improvement of security practices |

### **Graded Task: NIST VS CERT at use-case levels of a system**
> [!WARNING]
> IDK if the graded task was acc ever spoken about in class but its in the slides

| **Use Case**               | **NIST Guidelines**                                        | **CERT Guidelines**                                                 |
| -------------------------- | ---------------------------------------------------------- | ------------------------------------------------------------------- |
| **User Authentication**    | Emphasizes MFA and strong password policies.               | Focuses on secure password storage and session management.          |
| **User Authorization**     | Enforces RBAC and least privilege principles.              | Stresses server-side validation and secure API authorization.       |
| **Data Validation**        | Focuses on allowlisting and sanitization.                  | Prioritizes prepared statements to prevent SQL injection.           |
| **Session Management**     | Secure session IDs and timeouts are key.                   | Emphasizes HttpOnly cookies and preventing session fixation.        |
| **Error Handling**         | Log sensitive events without exposing data.                | Focuses on secure logging practices.                                |
| **Data Encryption**        | Strong encryption for data at rest and in transit.         | Cryptographic standards with emphasis on protecting sensitive data. |
| **File Uploads**           | Restrict file types and scan for malware.                  | Validating and sanitizing file names to prevent attacks.            |
| **XSS Prevention**         | Sanitization and proper output encoding.                   | Focuses on escaping user input and using secure coding practices.   |
| **CSRF Protection**        | Use of anti-CSRF tokens and origin validation.             | Focuses on re-authentication for critical actions.                  |
| **API Security**           | Use OAuth2, validate inputs, encrypt traffic.              | Emphasizes rate limiting and secure API inputs.                     |
| **Secure Updates**         | Sign updates, secure distribution.                         | Automatic updates and validating integrity.                         |
| **Sensitive Data**         | Encrypt, minimize exposure, and use strong access control. | Focuses on data masking and encryption.                             |
| **Config Management**      | Review and monitor settings, least privilege.              | Focuses on disabling unnecessary services/features.                 |
| **Logging & Monitoring**   | Log security events and protect log integrity.             | Emphasizes real-time monitoring and alerting.                       |
| **Third-Party Components** | Regular updates and monitoring for vulnerabilities.        | Emphasizes using secure, widely used libraries.                     |
| **Mobile Security**        | Strong storage and encryption.                             | Focuses on avoiding client-side checks and secure storage.          |
| **Secure Deployment**      | Automate deployments, perform security testing.            | Prioritizes secure configuration and penetration testing.           |
| **Security Training**      | Ongoing training and promoting a security-first mindset.   | Regular training and keeping up-to-date on threats.                 |
| **Continuous Testing**     | Automate security in CI/CD pipelines.                      | Focuses on continuous security assessments and retesting.           |
| **SDLC Security**          | Integrate security at every phase of SDLC.                 | Emphasizes threat analysis and monitoring throughout SDLC.          |

---

# **VM4SEC Case Study: SecSDLC Walkthrough**
- ### **1. Requirements Elicitation and Planning**
	- **Objective**: Gather both **functional** and **non-functional requirements** to define the scope of the security solution.
		- Begin by identifying key stakeholders, such as developers, project managers, and security teams.
		- Conduct **interviews** and **feedback sessions** to capture their security concerns, performance expectations, and compliance requirements.
		- Use the feedback to create **use cases**, focusing on security needs like detecting vulnerabilities, ensuring data confidentiality, and predicting potential threats.
	- **Key Deliverable**:
		- A comprehensive set of **functional** (e.g., software security features) and **non-functional** requirements (e.g., performance benchmarks, compliance standards).
		- Creation of **Data Flow Diagrams (DFDs)**, which provide a high-level overview of the system’s architecture and security processes.
- ### **2. Architectural Design**
	- **Objective**: Develop a system architecture that supports security from the ground up, aligning with the requirements gathered.
		- Start with high-level **Data Flow Diagrams (DFDs)** to understand how data moves through the system and interacts with external entities.
		- Use the **IEEE 1471 Standard** to ensure that the architecture follows international security best practices.
		- Create a **Level-0 DFD (Context Diagram)** to outline the boundaries of the system and its external connections (e.g., users, APIs, version control).
		- Drill down into a more detailed **Level-1 DFD** to map out internal components, such as vulnerability scanning modules, security assessments, and data stores.
	- **Key Deliverable**:
		- A finalized **architectural design**, featuring high-level diagrams and descriptions of major system components, their interactions, and data flows.
- ### **3. Model/Mechanism Configuration and Tuning**
	- **Objective**: Configure and fine-tune security mechanisms, such as **Quantitative Security Assessments (QSA)** and **Vulnerability Prediction Models (VPM)**, to identify vulnerabilities and predict potential risks.
		- Develop a **Quantitative Security Assessment** model based on security metrics like **confidentiality**, **integrity**, and **availability**.
		- Implement a **Vulnerability Prediction Model (VPM)** by leveraging past vulnerabilities and employing text mining techniques to predict future risks in specific code components.
		- Continuously **tune the models** to improve accuracy, incorporating feedback from real-world security scans and audits.
	- **Key Deliverable**:
		- Configured **QSA** and **VPM** models, ready for deployment, with baseline security metrics established.
- ### **4. Implementation and Deployment**
	- **Objective**: Integrate the developed security mechanisms into the company’s development environment and deploy them for real-world testing.
		- Implement the security models (QSA and VPM) within the existing software development pipelines.
		- Introduce **static analysis** tools to detect vulnerabilities early in the development process, with a focus on reducing false positives.
		- Create visual tools like **dashboards** to present security assessment results in an accessible manner for non-technical stakeholders.
	- **Key Deliverable**:
		- Deployed security tools, including static analysis and vulnerability prediction models, along with visual dashboards to monitor security performance.
- ### **5. Testing and Evaluation**
	- **Objective**: Test the security features for accuracy, effectiveness, and ease of use. Gather feedback for future iterations.
		- Conduct both automated testing (e.g., static analysis, penetration tests) and manual reviews to evaluate the security features.
		- Analyze the effectiveness of the QSA and VPM models in detecting vulnerabilities.
		- Gather feedback from development and security teams on the usability of the dashboards and the integration with existing tools like version control systems (e.g., GitHub).
	- **Key Deliverable**:
		- Comprehensive testing reports outlining detected vulnerabilities, security scores, and areas for improvement in future iterations.
- ### **6. Maintenance and Continuous Improvement**
	- **Objective**: Ensure ongoing security by continuously updating and fine-tuning the models and mechanisms based on new data and threats.
		- Regularly update the vulnerability databases and machine learning models to address newly discovered vulnerabilities and adapt to evolving security challenges.
		- Monitor the system for false positives and negatives, adjusting thresholds and algorithms as necessary.
		- Plan periodic **security reviews** and **re-assessments** using QSA and VPM to maintain the system’s security posture over time.
	- **Key Deliverable**:
		- A long-term maintenance plan, incorporating regular updates, security reviews, and feedback loops to ensure the system remains secure against emerging threats.

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

---