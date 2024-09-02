## Lecture 2: Core Principles and Practices of Secure Software Design

### What is Secure Software Design?
- **Definition**: The practice of designing software systems with security as a primary concern from the earliest stages of the Software Development Lifecycle (SDLC).
- **Objective**: Integrating security principles, standards, and best practices to prevent vulnerabilities, minimize risk, and ensure that software can withstand various types of attacks.

### Key Characteristics of Secure Software Design
- **Proactive Security**: Security is embedded from the start rather than being added as an afterthought.
- **Resilience to Attacks**: Designed to withstand known vulnerabilities and unpredictable security threats.
- **Minimized Attack Surface**: By limiting unnecessary features and access, secure software reduces potential points of entry for attackers.
- **Compliance with Standards**: Designed to adhere to security standards and regulations (e.g., OWASP, GDPR, HIPAA).

### Importance of Secure Software Design
- **Growing Cyber Threat Landscape**: Increasing number of cyber threats necessitates secure software design.
- **Financial Loss**: Breaches can lead to the theft of sensitive data, resulting in significant financial loss.
- **Reputational Damage**: Customer trust can be severely impacted after a security breach.
- **Legal Repercussions**: Non-compliance with regulations such as GDPR can result in hefty fines.

### Core Principles of Secure Software Design
1. **Confidentiality, Integrity, Availability (CIA Triad)**:
   - **Confidentiality**: Protecting information from unauthorized access.
   - **Integrity**: Ensuring information is not tampered with or altered.
   - **Availability**: Ensuring information is available to authorized users when needed.
2. **Principle of Least Privilege (PoLP)**: Providing users only the permissions they need to perform their tasks.
3. **Separation of Duties (SoD)**: Dividing responsibilities among multiple people to reduce the risk of fraud or error.
4. **Defense in Depth**: Implementing multiple layers of security controls to protect information.
5. **Fail-Safe Defaults**: Ensuring that systems default to a secure state in the event of a failure (e.g., automatically locking accounts after too many failed login attempts).

### Secure SDLC vs. Traditional SDLC
| **SDLC Phase**       | **Traditional SDLC**        | **Secure SDLC**                        |
|----------------------|-----------------------------|---------------------------------------|
| **Planning**         | Functional Requirements     | Security Requirements                 |
| **Design**           | Functional Design           | Secure Design (Threat Modeling)       |
| **Implementation**   | Code Development            | Secure Coding Practices               |
| **Testing**          | Unit/Integration Testing    | Security Testing (SAST/DAST)          |
| **Deployment**       | Launch                      | Secure Deployment (Hardening)         |
| **Maintenance**      | Updates                     | Patching Vulnerabilities              |

### Why Integrate Security into SDLC?
- **Cost and Impact**: Fixing vulnerabilities post-deployment is significantly more costly than addressing them during the development phase. Security integration from the start reduces overall costs and minimizes risks.

### What is Threat Modeling?
- **Definition**: A structured process used to identify, assess, and mitigate potential security threats to a software system during the design phase.
- **Objective**: To understand possible threats, prioritize them, and integrate security measures to mitigate or eliminate these risks before the software is developed or deployed.

### Secure Coding Standards and Guidelines
- **Secure Coding Practices**: Follow best practices in coding to prevent vulnerabilities.
- **Common Secure Coding Guidelines**:
  - Validate input to prevent injection attacks.
  - Manage memory effectively to avoid buffer overflows.
  - Use cryptography properly to protect sensitive data.

### Security Testing & Verification
- **Security Testing Types**:
  - **Static Application Security Testing (SAST)**: Analyzing source code for security vulnerabilities without executing the program.
  - **Dynamic Application Security Testing (DAST)**: Testing the application in runtime to identify security vulnerabilities.
  - **Penetration Testing**: Simulating cyber-attacks to find and fix exploitable vulnerabilities.

### Secure Deployment Practices
- **Application Hardening**: Removing unnecessary services, applying secure configurations, and ensuring only essential components are enabled.
- **Monitoring and Auditing**: Continuously monitor and audit security logs post-deployment to detect and respond to potential security incidents.

### Misuse Cases
- **Definition**: Describes undesirable interactions between actors (users) and the system, often leading to security breaches.
- **Importance**:
  - Helps teams consider potential security threats and integrate defenses from the start.
  - Encourages thinking like a hacker to anticipate and mitigate possible attacks.
- **Examples**:
  - **Deface the System**: Attacker changes the appearance of a website.
  - **Steal Information**: Gaining unauthorized access to sensitive data, like trade secrets.
  - **Steal Resources**: Unauthorized use of resources, such as hacking into a bank’s website to steal money.

### Building Misuse Cases
- **Process**:
  - Identify potential misuse cases just as you would for normal use cases.
  - Work with security experts to understand potential attack methods and design controls to prevent these interactions.
  - Encourage creative thinking beyond traditional hacking scenarios to anticipate diverse security threats.

### Security-Oriented Modeling and Implementation
1. **Security-Oriented Modeling**: Align system requirements with security goals to build secure software models.
2. **Security-Oriented Implementation**: Implement security measures during coding and continuously test for vulnerabilities.

### Security Verification and Process
- **Verification**: Ensure software is secure by checking for common code issues and performing regular security audits.
- **Security-Oriented Process**: Establish a secure strategy that guides the development team in building secure systems from the ground up.

