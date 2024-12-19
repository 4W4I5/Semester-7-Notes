
| Lecture<br>Number | Lecture<br>Name                                   | Status                                            |
| ----------------- | ------------------------------------------------- | ------------------------------------------------- |
| 1 & 2             | Introduction to SSD                               | :white_check_mark:                                |
| 3 & 4             | Security Requirements & Design Principles (OWASP) | :white_check_mark:                                |
| Assignment 1      | Paper study on SecSDLC                            | Repeated info from Lectures 1-2 <br>:x:           |
| 5, 6 & 7          | SecSDLC VM4SEC Case Study                         | :white_check_mark:                                |
| Assignment 2      | Threagile                                         | Dunno what can come from this in the exam<br> :x: |

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
- Threat modeling is a structured process used to identify, assess, and mitigate potential security risks to a software system.
	- Key steps in threat modeling include:
		- **Identifying potential threats**:
			- Understanding how attackers might exploit the system.
		- **Prioritizing threats**:
			- Determining which threats are most critical.
		- **Implementing security measures**:
			- Incorporating protections into the design to reduce or eliminate risks.
	- Model Types
		- STRIDE
			- **Spoofing (S)**: Can an attacker pretend to be someone else?
			- **Tampering (T)**: Can an attacker modify data or processes?
			- **Repudiation (R)**: Can an attacker deny their actions?
			- **Information Disclosure (I)**: Can sensitive information be exposed?
			- **Denial of Service (D)**: Can an attacker prevent legitimate access to services?
			- **Elevation of Privilege (E)**: Can an attacker gain unauthorized access or higher-level permissions?
		- DREAD
			- **Damage Potential (D)**: How severe is the damage if the threat is realized?
			- **Reproducibility (R)**: How easy is it to reproduce the attack?
			- **Exploitability (E)**: How easy is it to exploit the vulnerability?
			- **Affected Users (A)**: How many users will be affected by the attack?
			- **Discoverability (D)**: How easy is it to discover the vulnerability?

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
- ### **Possible Threats & Attacks**

| **Threat Type**               | **Examples of Attacks (Excluding Human Error)**                                                                                                         |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Data Breach**               | - Bruteforce attacks<br>- Exploiting Weak Authentication Mechanisms<br>- Insecure API Endpoints                                                         |
| **Data Tampering**            | - SQL Injection<br>- NoSQL Injection<br>- Command Injection                                                                                             |
| **Unauthorized Access**       | - Privilege Escalation (Vertical/Horizontal)<br>- Broken Access Control<br>- Exploiting Misconfigured Permissions                                       |
| **Eavesdropping**             | - Man-in-the-Middle (MITM) Attacks<br>- Packet Sniffing<br>- ARP Spoofing<br>- Exploiting Unsecured Communication Channels                              |
| **Denial of Service**         | - DoS/DDoS Attacks<br>- Resource Exhaustion Attacks (CPU, Memory, Bandwidth Overload)<br>- Ransomware Lockdowns                                         |
| **Replay Attacks**            | - Session Hijacking<br>- Token Reuse via Captured Data Packets                                                                                          |
| **Cryptographic Failures**    | - Weak Encryption Algorithms (e.g., MD5, SHA-1)<br>- Exploiting Poor Key Management Practices<br>- Padding Oracle Attacks                               |
| **Misuse of Software**        | - Cross-Site Scripting (XSS)<br>- Cross-Site Request Forgery (CSRF)<br>- Insecure Deserialization<br>- Exploiting Insecure API Design                   |
| **Supply Chain Attacks**      | - Malicious Code in Third-Party Libraries<br>- Dependency Tampering<br>- Backdoors in Software Packages                                                 |
| **Cloud/Virtualization**      | - Account Hijacking via Cloud APIs<br>- Exploiting Misconfigured Cloud Services<br>- Hypervisor Attacks (Compromising Virtual Machines)                 |
| **IoT Exploits**              | - Compromising Weakly Secured IoT Devices<br>- Pivoting Attacks Through IoT to Core Systems                                                             |
| **Physical Security Threats** | - Direct Physical Access to Systems (Stolen Hardware)<br>- Physical Tampering of Hardware Components                                                    |
| **Emerging Threats**          | - AI/ML Poisoning (Training Models with Malicious Data)<br>- Exploiting Predictive Systems for Faulty Outputs<br>- Quantum-Based Cryptographic Exploits |

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

> [!WARNING]
> - **Fail-Safe Defaults** can be linked to **Accountability** (A).
> - **Psychological Acceptability** connects with **Least Astonishment** (L).
> - **Complete Mediation** connects with **Accountability** (A).

> [!NOTE]
> **"PLASTIC MOLES"**
> 1. **P** – **Principle of Least Privilege**
> 2. **L** – **Layering**
> 3. **A** – **Accountability (Check Every Access)**
> 4. **S** – **Separation of Privilege**
> 5. **T** – **Transparency**
> 6. **I** – **Isolation**
> 7. **C** – **Compartmentalization (Least Common Mechanism)**
> 8. **M** – **Modularity**
> 9. **O** – **Open Design**
> 10. **L** – **Least Astonishment**
> 11. **E** – **Encapsulation**
> 12. **S** – **Simplicity (Economy of Mechanism)**

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

> [!NOTE]
> !!!!!!! This is not perfect at all but not much i can do !!!!!!!
>
> **"A DYNAMIC SAFEGUARD FRAMEWORK STRENGTHENS SOFTWARE DEFENSES"**
> - **A** – Authentication (1)
> - **D** – Data Validation (3)
> - **Y** – (S)ession Management (4)
> - **N** – (E)rror Handling/Logging (5)
> - **A** – API Security (10)
> - **M** – Mobile App Security (16)
> - **I** – Input Validation (8, 9)
> - **C** – Configuration Management (13)
> - **S** – Sensitive Data Handling (12)
> - **A** – Authorization (2)
> - **F** – File Uploads (7)
> - **E** – Encryption (6)
> - **G** – (S)oftware Updates (11)
> - **U** – Updates (third-party, 15)
> - **A** – Awareness (18)
> - **R** – Continuous Security Testing (19)
> - **D** – Deployment (17)
> - **S** – SDLC (20)

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

> [!NOTE]
> **S.E.C.U.R.E.**
> - **S**: **Session Management** – NIST emphasizes session IDs and timeouts, while CERT focuses on **HttpOnly cookies** and **session fixation** prevention.
> - **E**: **Error Handling** – NIST prioritizes **logging sensitive events** without exposing data, while CERT stresses **secure logging practices** to prevent information leaks.
> - **C**: **Configuration Management** – NIST highlights **least privilege** and **monitoring settings**, while CERT focuses on **disabling unnecessary services/features** to minimize attack surfaces.
> - **U**: **User Authentication/Authorization** – NIST emphasizes **MFA**, **RBAC**, and **least privilege**, whereas CERT stresses **secure password storage**, **server-side validation**, and **API security**.
> - **R**: **Rate Limiting and Validation** – NIST suggests **OAuth2** for API security and validating inputs, while CERT emphasizes **rate limiting** and **continuous validation** to prevent abuse.
> - **E**: **Encryption & File Uploads** – NIST focuses on **strong encryption** for sensitive data at rest and in transit, while CERT concentrates on **validating file names** and restricting **file types** to prevent malicious uploads.

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
- ### **1. Requirements Elicitation and Planning | Security Requirements**
	- **Objective**: Gather both **functional** and **non-functional requirements** to define the scope of the security solution.
		- Begin by identifying key stakeholders, such as developers, project managers, and security teams.
		- Conduct **interviews** and **feedback sessions** to capture their security concerns, performance expectations, and compliance requirements.
		- Use the feedback to create **use cases**, focusing on security needs like detecting vulnerabilities, ensuring data confidentiality, and predicting potential threats.
	- **Key Deliverable**:
		- A comprehensive set of **functional** (e.g., software security features) and **non-functional** requirements (e.g., performance benchmarks, compliance standards).
		- Creation of **Data Flow Diagrams (DFDs)**, which provide a high-level overview of the system’s architecture and security processes.
- ### **2. Architectural Design | Threat Modelling**
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
		- Conduct both automated testing (e.g., static analysis, penetration tests, Static Application Security Testing + Dynamic Application Security Testing) and manual reviews to evaluate the security features.
		- Analyze the effectiveness of the QSA and VPM models in detecting vulnerabilities.
		- Gather feedback from development and security teams on the usability of the dashboards and the integration with existing tools like version control systems (e.g., GitHub).
	- **Key Deliverable**:
		- Comprehensive testing reports outlining detected vulnerabilities, security scores, and areas for improvement in future iterations.
- ### **6. Maintenance | Patching Vulns**
	- **Objective**: Ensure ongoing security by continuously updating and fine-tuning the models and mechanisms based on new data and threats.
		- Regularly update the vulnerability databases and machine learning models to address newly discovered vulnerabilities and adapt to evolving security challenges.
		- Monitor the system for false positives and negatives, adjusting thresholds and algorithms as necessary.
		- Plan periodic **security reviews** and **re-assessments** using QSA and VPM to maintain the system’s security posture over time.
			- Patch any vulns if found
	- **Key Deliverable**:
		- A long-term maintenance plan, incorporating regular updates, security reviews, and feedback loops to ensure the system remains secure against emerging threats.
