| Lecture Number | Lecture Name                                           | Status    |
| -------------- | ------------------------------------------------------ | --------- |
| 1 & 2          | Introduction to SSD                                    | :warning: |
| 3 & 4          | Security Requirements & Design Principles (OWASP)      | :warning: |
| Assignment 1   | Paper study on SecSDLC                                 | :warning: |
| 5, 6 & 7       | SecSDLC Architecture & Methodology + VM4SEC Case Study | :warning: |
| Assignment 2   | Threagile                                              | :warning: |
| Task 1         | STRIDE Online Banking                                  | :warning: |
| Task 2         | DREAD Threat Modelling                                 | :warning: |



# **Lecture 1: Introduction to SSD pt1**

### **What is Secure Software Design?**
Secure Software Design refers to the process of embedding security throughout the entire Software Development Lifecycle (SDLC). The goal is to ensure that the system is designed to minimize risks, avoid vulnerabilities, and withstand potential cyberattacks.

### **Key Characteristics**
- **Proactive Security**: Security must be considered from the start of the development process, rather than being added as an afterthought.
- **Resilience to Attacks**: Secure software is built to defend against known vulnerabilities and unforeseen security threats.
- **Minimized Attack Surface**: The attack surface refers to the total number of potential entry points for an attacker. By limiting unnecessary features and access points, secure software reduces these vulnerabilities.
- **Compliance with Standards**: Secure software adheres to relevant security standards and legal requirements (e.g., **OWASP**, **GDPR**, **HIPAA**).

### **Importance of Secure Software Design**
The increasing frequency of cyberattacks has made security an essential consideration in software development. Failing to integrate security can lead to:
- **Financial losses** due to breaches and theft of sensitive information.
- **Reputational damage** as customers and users lose trust.
- **Legal repercussions**, including fines for non-compliance with regulations like **GDPR** or **HIPAA**.

### **Core Security Principles**
- **CIA Triad**:
	- **Confidentiality**: Protecting information from unauthorized access.
	- **Integrity**: Ensuring data is accurate and not tampered with.
	- **Availability**: Ensuring the system and its data are accessible to authorized users when needed.
- **Principle of Least Privilege (PoLP)**: Each user or process should have only the minimal privileges necessary to complete its function.
- **Separation of Duties (SoD)**: Critical tasks should be divided among different people or systems to reduce the risk of fraud or abuse.
- **Defense in Depth**: Layers of security controls are implemented to ensure that if one control fails, others will still protect the system.
- **Fail-Safe Defaults**: Systems should default to a secure state, such as locking user accounts after a set number of failed login attempts.

### **Secure SDLC vs. Traditional SDLC**

| SDLC Phase         | Traditional SDLC         | Secure SDLC                     |
| ------------------ | ------------------------ | ------------------------------- |
| **Planning**       | Functional Requirements  | Security Requirements           |
| **Design**         | Functional Design        | Secure Design (Threat Modeling) |
| **Implementation** | Code Development         | Secure Coding Practices         |
| **Testing**        | Unit/Integration Testing | Security Testing (SAST/DAST)    |
| **Deployment**     | Launch                   | Secure Deployment (Hardening)   |
| **Maintenance**    | Updates                  | Patching Vulnerabilities        |

### **Why Integrate Security into the SDLC?**
Fixing security issues early in the SDLC is much more cost-effective than addressing them post-deployment. The **cost of fixing vulnerabilities** increases significantly when security flaws are identified later in the process.

### **Threat Modeling**
Threat modeling is a structured process used to identify, assess, and mitigate potential security risks to a software system. By understanding and prioritizing these threats, developers can incorporate security measures to mitigate risks before the software is deployed. Key steps in threat modeling include:
- **Identifying potential threats**: Understanding how attackers might exploit the system.
- **Prioritizing threats**: Determining which threats are most critical.
- **Implementing security measures**: Incorporating protections into the design to reduce or eliminate risks.

### **Secure Coding Standards**
Secure coding involves following guidelines to prevent vulnerabilities, such as:
- Avoiding **SQL Injection**, **Cross-Site Scripting (XSS)**, and **Cross-Site Request Forgery (CSRF)**.
- Using **input validation** and **output encoding** to prevent attacks.
- Implementing strong **authentication** and **authorization** mechanisms.

### **Security Testing**
There are several types of security testing that must be conducted to ensure the system is secure:
- **Static Application Security Testing (SAST)**: Analyzing the source code to identify security flaws.
- **Dynamic Application Security Testing (DAST)**: Testing the application in its running state to uncover vulnerabilities.
- **Penetration Testing**: Simulating real-world attacks to uncover potential security weaknesses.

# **Lecture 2: Introduction to SSD pt2**
### **Secure Deployment Practices**
Deploying software securely involves **hardening** the application, which means removing unnecessary services and ensuring secure configuration. Post-deployment, it’s crucial to monitor security logs and conduct regular audits to identify any suspicious activities.

### **Misuse Cases**
A misuse case details how the system can be attacked or misused, focusing on security threats rather than system errors. Misuse cases are critical because they:
- Draw the team’s attention to security issues.
- Help identify potential attack vectors early in the project.
- Ensure security is part of functional requirements, not just an afterthought.

### **Examples of Misuse Cases**:
- **Defacing a website**: An attacker’s goal might be to alter or vandalize a website's content.
- **Stealing sensitive information**: Hackers may aim to extract trade secrets or personal data.
- **Exploiting system resources**: For instance, hacking into a bank’s website to steal money.

### **Building Misuse Cases**
- Misuse cases use the same format as regular use cases but focus on malicious actions.
	- **Security experts** should collaborate with development teams to help identify how hackers might attack.
	- **Key steps** hackers might take should be understood and addressed early.
	- **Encourage team discussions** to think like attackers.

### **Key Reminders**:
- Focus on **breadth over depth**: Cover as many potential attack vectors as possible, even if you can’t model all threats in detail.
- Every misuse case reduces your system’s vulnerability.

### **Security-Oriented Development**
- **Security-Oriented Implementation**: How you set system requirements and write code impacts security. Proper coding standards must be followed to avoid introducing vulnerabilities.
- **Verification**: Regular checks are needed to catch **common code smells**, such as hardcoded passwords or improper error handling.
- **Security-Oriented Processes**: Having a structured security strategy ensures the development team works together to build a more secure system.

### **Cost of Fixing Vulnerabilities**
It’s essential to remember that addressing security issues early in the SDLC is not only cheaper but also more efficient. Fixing a vulnerability post-deployment can cost **up to 100 times more** than fixing it during the design or coding phase.

---

# **Lecture 3: Security Requirements & Design Principles (OWASP) pt 1**

### **Security Requirements**
Security requirements define the conditions that a software system must meet to remain secure. These should be identified early in the development process and incorporated into the design phase.

#### **Key Examples**:
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

### **Session Management**
Session management ensures that users' interactions with a system remain secure over multiple requests.

#### **Best Practices**:
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