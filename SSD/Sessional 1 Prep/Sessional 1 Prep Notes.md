| Lecture Number | Lecture Name                                           | Status    |
| -------------- | ------------------------------------------------------ | --------- |
| 1 & 2          | Introduction to SSD                                    | :warning: |
| 3 & 4          | Security Requirements & Design Principles (OWASP)      | :warning: |
| Assignment 1   | Paper study on Secure SDLC                             | :warning: |
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