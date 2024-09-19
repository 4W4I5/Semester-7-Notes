| Chapter Number | Chapter Name                                    | Status             |
| -------------- | ----------------------------------------------- | ------------------ |
| 1              | Introduction to InfoSec                         | :white_check_mark: |
| 2              | The need for Security                           | :white_check_mark: |
| 3              | Legal, Ethical & Professional Issues in InfoSec | :x:                |
| 5              | Risk Management                                 | :warning:          |

# Chapter 1: Introduction to InfoSec
## What is Information Security?
- Defined by Jim Anderson in 2002 as "a well-informed sense of assurance that information risks and controls are in balance."
	- This involves **protecting information** and its critical elements, including the systems that use, store, and transmit it.
	- To protect this data, organizations need policies, awareness programs, training, education, and technology.
- CIA triangle
	- Was based on Confidentiality, Integrity & Availability but now focuses on **Critical Characteristics of Information**
- Note that InfoSec is a field that covers the following; All of which lead to a policy being formed
	- Management of InfoSec
	- Network Security
	- Computer & Data Security
- Components of an InfoSec System
	- Software
	- Hardware
	- Data
	- People
	- Procedures/Policy
	- Networks

### Key Concepts:

Organizational Security is built on multiple layers of security;

| **Key Concept**             | **Detail**                                                                    |
| --------------------------- | ----------------------------------------------------------------------------- |
| **Physical security**       | Protecting physical assets from unauthorized access.                          |
| **Personal security**       | Protecting individuals and groups.                                            |
| **Operations security**     | Securing the processes and activities of an organization.                     |
| **Communications security** | Protecting communications media and content.                                  |
| **Network security**        | Securing the components and connections in networks.                          |
| **Information security**    | Ensuring data is safe from unauthorized access, modification, or destruction. |

## History of Information Security
- ### Early Years
	- **World War II**: The need for security arose with the first mainframes, used for military and intelligence purposes.
		- Early controls were mostly **physical**, such as **badges**, **keys**, and **facial recognition**.
    - **Information security** at the time involved rudimentary methods, like document classification, with little focus on system security.
- ### 1960s
	- The **Advanced Research Project Agency (ARPA)** initiated research to develop a **redundant, networked communications system**.
		- This was the origin of **ARPANET**, the precursor to the Internet.
	- **Larry Roberts**, who developed ARPANET, is known as the **founder of the Internet**.
- ### 1970s & 1980s
	- As ARPANET grew, so did **security issues**, especially with dial-up access:
	    - No **user identification** or **authorization**.
	    - Phone numbers for ARPANET were publicly shared, allowing unauthorized access.
	- The development of the **MULTICS** system (Multiplexed Information and Computing Service) focused on **security** from the start, introducing **multiple security levels** and **passwords**.
		- A mainframe, time-sharing OS built by General Electric
		- Also spawned UNIX which was built for text processing
	- In the **late 1970s**, **Rand Report R-609** was the first paper to define **computer security**, shifting the focus from just **physical security** to include the **safety of data** and **access controls**.
		- It defined the safety of data
		- Limiting random & unauthorized access to that data
		- Involved personnel from multiple levels of the organization
- ### 1990s to Present
	- As **networks of computers** became common, so did the **need to secure interconnected systems**.
	- The **Internet**, a global network, expanded, but **security was a low priority** in its early deployments.
	- The interconnected nature of systems today means that the **security of each computer** is dependent on the **security of every connected system**.


### Key InfoSec Concepts

A computer can be both the **subject** (used as a tool to attack another system) and the **object** (the target of the attack) of an attack.

| **Key InfoSec Concepts** | **Definition**                                                                                                                                                                       |
| ------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Access**                                  | A subject or object’s ability to use, manipulate, modify, or affect another subject or object.                                                                                       |
| **Asset**                                   | The organizational resource that is being protected.                                                                                                                                 |
| **Attack**                                  | An act that is an intentional or unintentional attempt to cause damage or compromise to the information and/or the systems that support it.                                          |
| **Control, Safeguard, or Countermeasure**   | Security mechanisms, policies, or procedures that can successfully counter attacks, reduce risk, resolve vulnerabilities, and otherwise improve the security within an organization. |
| **Exploit**                                 | To take advantage of weaknesses or vulnerability in a system.                                                                                                                        |
| **Exposure**                                | A single instance of being open to damage.                                                                                                                                           |
| **Hack**                                    | Good: To use computers or systems for enjoyment; Bad: To illegally gain access to a computer or system.                                                                              |
| **Object**                                  | A passive entity in the information system that receives or contains information.                                                                                                    |
| **Risk**                                    | The probability that something can happen.                                                                                                                                           |
| **Security Blueprint**                      | The plan for the implementation of new security measures in the organization.                                                                                                        |
| **Security Model**                          | A collection of specific security rules that represents the implementation of a security policy.                                                                                     |
| **Security Posture or Security Profile**    | A general label for the combination of all policies, procedures, technologies, and programs that make up the total security effort currently in place.                               |
| **Subject**                                 | An active entity that interacts with an information system and causes information to move through the system for a specific end purpose.                                             |
| **Threats**                                 | A category of objects, persons, or other entities that represents a potential danger to an asset.                                                                                    |
| **Threat Agent**                            | A specific instance or component of a more general threat.                                                                                                                           |
| **Vulnerability**                           | Weaknesses or faults in a system or protection mechanism that expose information to attack or damage.                                                                                |

### Critical Characteristics of Information (The new CIA)

| **Critical Characteristic** | **Summary**                                                                                                                                                                                                |
| --------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Availability**            | Ensures authorized users can access information when and where needed, in the correct format.<br> - A breach can result in downtime or inability to access critical information.                                 |
| **Accuracy**                | Information must be free from errors and meet user expectations; modifications compromise accuracy.<br> - Breaches can lead to misinformation and potentially flawed decisions.                                  |
| **Authenticity**            | Information should be genuine and original, not altered or fabricated.<br> - A breach can cause loss of trust and legitimacy, leading to misinformation.                                                         |
| **Confidentiality**         | Prevents unauthorized access or exposure to information.<br> - Breaches can lead to unauthorized access, data leaks, and privacy violations.                                                                     |
| **Integrity**               | Information must remain whole and uncorrupted; corruption or damage threatens integrity.<br> - Breaches can lead to data corruption, loss of trust, and operational disruptions.                                 |
| **Utility**                 | Information must be valuable and useful for its intended purpose, and in a meaningful format.<br> - Breaches can render information useless, impairing decision-making and functionality.                        |
| **Possession**              | Ownership or control of information, regardless of format; breaches in confidentiality imply loss of possession.<br> - Breaches can result in unauthorized control or theft of information, affecting ownership. |

## CNSS Model

![](/IA/Pasted%20image%2020240917195504.png)

| **Aspect**          | **Storage (Stored Information)**                                                              | **Transmission (In Transit Information)**                                                     | **Processing (In Use Information)**                                                                 |
| ------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| **Confidentiality** | Protect stored data from unauthorized access or breaches.                                     | Secure data during transmission to prevent interception and unauthorized access.              | Ensure that data is not exposed to unauthorized individuals during processing or use.               |
| **Integrity**       | Maintain the accuracy and completeness of stored data, preventing unauthorized modifications. | Verify that data is not altered or tampered with during transmission.                         | Ensure that data remains accurate and uncorrupted while being processed or accessed.                |
| **Availability**    | Ensure that stored data is accessible to authorized users when needed.                        | Guarantee that data can be transmitted reliably and is available for retrieval when needed.   | Ensure that data is accessible and usable by authorized applications and users during processing.   |
| **Policy**          | Develop and enforce policies for data storage and access controls.                            | Create policies for secure data transmission methods and encryption standards.                | Implement policies that govern secure handling and processing of data.                              |
| **Education**       | Train users on proper data storage practices and awareness of access controls.                | Educate users about secure communication practices and the importance of data encryption.     | Provide training on safe data handling procedures and the importance of protecting data during use. |
| **Technology**      | Use encryption and access control systems to protect stored data.                             | Implement secure communication protocols and encryption methods to safeguard data in transit. | Utilize secure processing environments and monitoring tools to protect data during use.             |

- ### Scenario 1: Financial Institution
	- **Stored Information:**
	    - **Confidentiality:** Customer account details stored in a database are encrypted to prevent unauthorized access.
	    - **Integrity:** The database system uses checksums and validation rules to ensure data accuracy and prevent corruption.
	    - **Availability:** Backup systems and redundancy ensure that customer data is always accessible even if a server fails.
	- **In Transit Information:**
	    - **Confidentiality:** Data transmitted between a customer’s browser and the bank’s server is encrypted using TLS/SSL to prevent interception.
	    - **Integrity:** Digital signatures are used to ensure that the transmitted data is not altered during transfer.
	    - **Availability:** The bank’s network infrastructure is designed to handle high traffic volumes to ensure data is transmitted without delays.
	- **In Use Information:**
	    - **Confidentiality:** Access controls and user authentication prevent unauthorized users from accessing sensitive financial data while it’s being processed.
	    - **Integrity:** Real-time validation checks are performed to ensure that data remains correct while being used for transactions.
	    - **Availability:** The banking application is designed to handle user requests efficiently, minimizing downtime and ensuring that data is available during transactions.
- ### Scenario 2: Healthcare System
	- **Stored Information:**
	    - **Confidentiality:** Patient health records are stored in encrypted electronic health record (EHR) systems to safeguard patient privacy.
	    - **Integrity:** Regular audits and validation checks are performed to ensure that health records are accurate and not tampered with.
	    - **Availability:** Health records are backed up in multiple locations to ensure they are accessible in case of hardware failure or disaster.
	- **In Transit Information:**
	    - **Confidentiality:** Patient data sent between healthcare providers and insurance companies is encrypted to protect sensitive information.
	    - **Integrity:** Data integrity checks are performed to ensure that the information received is exactly as it was sent.
	    - **Availability:** Network systems are designed to ensure that patient data can be transmitted reliably even during peak times or network congestion.
	- **In Use Information:**
	    - **Confidentiality:** Access controls and session management ensure that only authorized medical staff can view or update patient records while they are being used.
	    - **Integrity:** The system logs all changes to patient records to track and review any modifications for accuracy and consistency.
	    - **Availability:** The healthcare application is built to handle simultaneous access by multiple users without performance issues, ensuring data is accessible when needed.
## The Security Systems Development Life Cycle (SecSDLC)


### Phases of SecSDLC:

The SecSDLC mirrors the SDLC but adds a security focus in each phase.

| **SDLC Phase**                | **Description**                                                                                                                                                                                                                | **SecSDLC Security Aspect**                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **1. Investigation**          | - Identifies the problem the system is being developed to solve.  <br> - Specifies project objectives, scope, and constraints.  <br> - **Feasibility analysis** assesses economic, technical, and behavioral feasibility. <br> | - Begins with **Enterprise Information Security Policy (EISP)** outlining security needs.<br> - **Organizational feasibility** is performed to assess resources and commitment to security.<br> - Scope includes defining security goals and policies.<br> - Security problems and constraints are highlighted for further analysis.                                                                                                                         |
| **2. Analysis**               | - Assess organization, current systems, and capabilities to support the new system.<br> - Analysts document findings and update feasibility analyses.<br>                                                                      | - **Risk management** starts by identifying potential security threats and vulnerabilities.<br> - Existing **security policies and controls** are reviewed.<br> - **Legal issues** related to security compliance are analyzed.<br> - Threat assessments and evaluations of current controls are documented.<br>                                                                                                                                             |
| **3. Logical Design**         | - Select applications and technologies to meet business needs.<br> - Define data structures and perform a feasibility analysis.<br>                                                                                            | - **Security blueprints** are developed based on the threat analysis and policies.<br> - Plan for **incident response** and disaster recovery is created.<br> - **Security policy integration** ensures proper security mechanisms are selected.<br> - **Feasibility analysis** ensures that security requirements can be met in-house or outsourced.<br>                                                                                                    |
| **4. Physical Design**        | - Choose specific technologies and evaluate components (make-or-buy decisions).<br> - Final design is presented for user approval.<br>                                                                                         | - Evaluate **security technologies** that support the logical security design.<br> - Update **security blueprints** to align with any new physical design needs.<br> - Establish **physical security measures** (e.g., firewalls, access control systems).<br> - **Feasibility study** determines if the organization is prepared to implement the proposed security measures.<br> - All stakeholders approve the security design before implementation.<br> |
| **5. Implementation**         | - Software is created, purchased, and tested. Users are trained.<br> - Feasibility analysis is conducted, and the system is reviewed.<br>                                                                                      | - Security solutions are **acquired, developed, tested**, and re-tested.<br> - **Personnel training** on security protocols and incident handling.<br> - Implemented security features undergo **continuous monitoring and testing** for vulnerabilities.<br> - **Final security approval** is obtained from upper management before the system goes live.<br>                                                                                               |
| **6. Maintenance and Change** | - Ongoing support and modification of the system.<br> - As new threats emerge, the system must adapt to evolving risks.<br>                                                                                                    | - Continuously monitor and update the system’s **security profile**.<br> - Perform regular **vulnerability assessments** and **patch management**.<br> - Adapt security measures in response to new and evolving threats.<br> - Ensure proper **disaster recovery** and **incident response** processes are in place for potential security breaches.<br> - Implement **security audits** to validate and ensure the effectiveness of existing controls.<br> |

## Security Professionals and the Organization
- ### Key Roles:
	- **Chief Information Officer (CIO)**:
		- The senior technology officer responsible for advising on strategic planning related to information management.
	- **Chief Information Security Officer (CISO)**:
		- Oversees the assessment, management, and implementation of information security within the organization.
		- Usually directly reports to CIO
- ### Information Security Project Team:
	- **Champion**:
		- A senior executive who supports the project financially and administratively.
	- **Team Leader**:
		- A project manager who understands both project management and technical security requirements.
	- **Security Policy Developers**:
		- Experts in developing organizational security policies.
	- **Risk Assessment Specialists**:
		- Understand financial risk and security methods.
	- **Security Professionals**:
		- Specialists with deep knowledge in various areas of information security.
	- **Systems Administrators**:
		- Manage and maintain systems that house critical information.
	- **End Users**:
		- Individuals who interact with the system and provide feedback on security measures.

## Data Responsibilities
- **Data Owner**:
	- Responsible for the security and use of a particular set of information. They define data classification levels.
- **Data Custodian**:
	- Manages data storage, maintenance, and backup procedures.
- **Data Users**:
	- Individuals who work with information as part of their daily responsibilities.

## Approaches to Security Implementation (Balance b/w Security & Access)
- ### Bottom-Up Approach:
	- **Grassroots** effort, typically initiated by **systems administrators**.
	- **Advantage**: Technical expertise of the individuals implementing the security.
	- **Disadvantage**: Often lacks organizational support and staying power, making it less successful.
- ### Top-Down Approach:
	- **Initiated by upper management**, with clear goals, policies, and accountability.
	- Supported by **dedicated resources** and a formal development strategy like the SecSDLC.
	- This approach has **higher success rates** due to **management backing**.

## Security as an Art, Science, and Social Science
- ### Security as an Art:
	- **No hard and fast rules** for implementing security across systems.
	- Security relies on individual expertise and interpretation, especially in complex environments.
- ### Security as a Science:
	- Technology operates based on well-defined principles and interactions.
	- Nearly all **system failures** and **security vulnerabilities** can be traced to specific causes within hardware or software.
	- Given enough time, most faults could be **resolved by developers**.
- ### Security as a Social Science:
	- Focuses on **human behavior** and how people interact with systems.
	- End-users are often the **weakest link** in security.
	- **Security administrators** can reduce risks by understanding behavioral factors and implementing **user-friendly controls**.

## Review Questions
1. What is the difference between a threat agent and a threat?
2. What is the difference between vulnerability and exposure?
3. How is infrastructure protection (assuring the security of utility services) related to information security?
4. What type of security was dominant in the early years of computing?
5. What are the three components of the C.I.A. triangle? What are they used for?
6. If the C.I.A. triangle is incomplete, why is it so commonly used in security?
7. Describe the critical characteristics of information. How are they used in the study of computer security?
8. Identify the six components of an information system. Which are most directly affected by the study of computer security? Which are most commonly associated with its study?
9. What system is the father of almost all modern multiuser systems?
10. Which paper is the foundation of all subsequent studies of computer security?
11. Why is the top-down approach to information security superior to the bottom-up approach?
12. Why is a methodology important in the implementation of information security? How does a methodology improve the process?
13. Which members of an organization are involved in the security system development life cycle? Who leads the process?
14. How can the practice of information security be described as both an art and a science? How does security as a social science influence its practice?
15. Who is ultimately responsible for the security of information in the organization?
16. What is the relationship between the MULTICS project and the early development of computer security?
17. How has computer security evolved into modern information security?
18. What was important about Rand Report R-609?
19. Who decides how and when data in an organization will be used or controlled? Who is responsible for seeing that these wishes are carried out?
20. Who should lead a security team? Should the approach to security be more managerial or technical?

### Case Exercises

The next day at SLS found everyone in technical support busy restoring computer systems to their former state and installing new virus and worm control software. Amy found herself learning how to install desktop computer operating systems and applications as SLS made a heroic effort to recover from the attack of the previous day.

Questions:

1. Do you think this event was caused by an insider or outsider? Why do you think this?
2. Other than installing virus and worm control software, what can SLS do to prepare for the next incident?
3. Do you think this attack was the result of a virus or a worm? Why do you think this?


---


# Chapter 2: The need for Security
- The **primary mission of information security** is to ensure that systems and their content remain unchanged despite potential threats. Information security is not only about preventing attacks but also maintaining the integrity, confidentiality, and availability of data. In addition, information security safeguards organizations' critical assets, ensuring they can operate efficiently.
- If there were no threats, the focus could shift to optimizing system performance, improving ease of use, and enhancing operational efficiency.
- **Attacks on information systems are frequent** and come in many forms, including malware, phishing, denial-of-service attacks, and insider threats. These attacks are evolving, necessitating constant vigilance and robust defensive measures.

## Business Needs for Security

Information security serves four vital functions for organizations:

1. **Protects the ability to function**:
    - Both **general management** and **IT management** play a critical role in ensuring the security of an organization’s systems. A security breach can have devastating consequences, from operational disruptions to financial loss.
    - Information security is a **management and people issue** as much as it is a technical one. Organizations must foster a culture of security awareness, ensuring employees understand the risks and their role in mitigating them.
2. **Enables the safe operation of applications**:
    - Modern organizations depend on applications to manage day-to-day operations, customer relations, and business intelligence. These applications must be protected from internal and external threats.
    - Management must oversee the **IT infrastructure**, ensuring that applications are continuously monitored, updated, and protected from vulnerabilities.
3. **Protects the data organizations collect and use**:
    - **Data is one of the most valuable assets** an organization possesses, essential for operational success and customer trust. Unauthorized access to this data can lead to breaches that damage both reputation and financial stability.
    - **Data at rest** (stored data) and **data in motion** (data being transmitted) must be protected using encryption, access controls, and monitoring.
4. **Safeguards technology assets**:
    - The infrastructure supporting technology operations must be robust, scalable, and secure. This includes servers, networks, databases, and software platforms.
    - As the organization grows, security solutions must evolve, requiring **upgrades** to outdated systems to prevent emerging threats.


## Types of Threats:
- A **threat** is any potential event or action that could harm an organization’s information systems, such as a hacker attempting to access sensitive data or a natural disaster disrupting operations.
- Organizations must develop security policies and implement controls to mitigate these threats. Management plays a key role in recognizing and addressing potential risks.

| **Threat Type**                          | **Description**                                                                                                                                                                                                                                                                                                                                                                |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Compromises to Intellectual Property** | Intellectual property (IP) refers to ownership of ideas, trade secrets, copyrights, trademarks, and patents. **Software piracy**, or the illegal use and distribution of software, is the most common form of IP compromise. Organizations like **SIIA** and **BSA** monitor IP breaches and enforce copyright protections.                                                    |
| **Deliberate Software Attacks**          | These attacks use **malware** to damage or disrupt systems. Examples include **viruses**, **worms**, **Trojan horses**, and **logic bombs**. More advanced attacks include **polymorphic threats**, which change to avoid detection, and **virus hoaxes** that spread misinformation and cause disruptions.                                                                    |
| **Deviations in Quality of Service**     | Failures by service providers, such as **ISPs** or utility companies, can disrupt operations. **Power irregularities** like spikes or brownouts can compromise system performance, leading to downtime and potential data loss.                                                                                                                                                |
| **Espionage or Trespass**                | Unauthorized access to confidential information, whether through **legal competitive intelligence** or **illegal industrial espionage**. **Hackers** exploit vulnerabilities using technical skills or deception. These hackers can be categorized as **expert hackers**, who develop attack methods, and **script kiddies**, who use prewritten scripts to carry out attacks. |
| **Human Error or Failure**               | Unintentional actions, such as mishandling data or making incorrect configurations, can expose systems to threats. **Inadequate training** or carelessness can result in data breaches or system vulnerabilities.                                                                                                                                                              |
| **Information Extortion**                | Attackers **steal sensitive information** and demand payment in exchange for not disclosing or returning it. This is common in cases involving stolen credit card information or intellectual property.                                                                                                                                                                        |
| **Sabotage or Vandalism**                | Vandalism can range from defacing websites to **cyberterrorism**, where attackers aim to damage an organization’s reputation or infrastructure for ideological purposes. Hacktivists and cyberactivists often engage in these acts.                                                                                                                                            |
| **Theft**                                | **Physical theft** involves stealing hardware or devices, while **electronic theft** can involve the unauthorized copying or downloading of data without the victim’s knowledge.                                                                                                                                                                                               |
| **Technical Failures**                   | **Hardware failures** may occur when faulty components cause systems to malfunction, while **software failures** may stem from bugs or hidden flaws, sometimes intentionally placed by developers.                                                                                                                                                                             |
| **Technological Obsolescence**           | **Outdated technologies** present security vulnerabilities, as they may no longer be supported with updates or patches, leaving them susceptible to modern threats. Regular system upgrades are essential for maintaining security.                                                                                                                                            |
| **Forces of Nature**                     | Natural disasters such as **fire**, **flood**, **earthquake**, and **tornado** pose serious threats. These events can disrupt operations, damage infrastructure, and cause loss of data. Organizations must implement controls to limit damage and have contingency plans for continuous operations. 【4†source】                                                              |

## Types of Attacks
- Acts or actions that exploits vulnerability (i.e., an identified weakness) in controlled system
- Accomplished by threat agent that damages or steals organization’s information

| **Threat Type**             | **Description**                                                                                                                                                               |
| --------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Malicious Code**          | Includes **viruses**, **worms**, **Trojan horses**, and **active Web scripts** designed to steal or destroy information.                                                      |
| **Hoaxes**                  | False virus alerts that cause panic and waste resources.                                                                                                                      |
| **Backdoors**               | Exploiting previously unknown vulnerabilities to access systems without authorization.                                                                                        |
| **Password Cracking**       | Methods include **brute force**, where all possible combinations are attempted, and **dictionary attacks**, where common words and phrases are used to guess passwords.       |
| **Denial-of-Service (DoS)** | Overloading a system with requests, leading to crashes or downtime. **Distributed Denial-of-Service (DDoS)** attacks are similar but use multiple sources to target a system. |
| **Spoofing**                | Impersonating a trusted entity by **spoofing IP addresses** to gain unauthorized access.                                                                                      |
| **Man-in-the-Middle**       | Intercepting and modifying communications between two parties to steal or alter data.                                                                                         |
| **Sniffers**                | Programs that capture network traffic, which can be used for both legitimate monitoring or malicious data theft.                                                              |
| **Phishing & Pharming**     | **Phishing** deceives users into providing sensitive information, while **pharming** redirects legitimate traffic to fraudulent websites.                                     |
| **Social Engineering**      | Manipulating people to reveal confidential information, often by exploiting trust or fear.                                                                                    |

## Types of Software Vulnerabilities

| **Types of Software Vulnerabilities**                         | **Description**                                                                                                          |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| **Malicious Code**                                            | Includes **viruses**, **worms**, **Trojan horses**, and **active Web scripts** designed to steal or destroy information. |
| **Hoaxes**                                                    | **Virus hoaxes** can cause widespread panic and lead to unnecessary actions that disrupt business operations.            |
| **Backdoors**                                                 | Attackers exploit backdoors in software to gain unauthorized access.                                                     |
| **Password Cracking**                                         | Methods such as **brute force** and **dictionary attacks** are used to guess passwords.                                  |
| **Denial-of-Service (DoS)**                                   | Overwhelming systems with excessive requests, leading to crashes or loss of service.                                     |
| **Spoofing**                                                  | Impersonating trusted sources to bypass security controls.                                                               |
| **Man-in-the-Middle**                                         | Intercepting and altering communication between two parties.                                                             |
| **Sniffers**                                                  | Capturing network traffic for either legitimate monitoring or malicious purposes.                                        |
| **Phishing & Pharming**                                       | Deceptive tactics to steal sensitive information through fake websites or emails.                                        |
| **Social Engineering**                                        | Manipulating individuals to reveal confidential data.                                                                    |
| **Buffer Overruns**                                           | A program writes more data to a buffer than it can handle, leading to system crashes or unauthorized code execution.     |
| **Command Injection**                                         | Attackers inject commands into a system’s input to execute unauthorized actions.                                         |
| **Cross-Site Scripting (XSS)**                                | Injecting malicious scripts into websites to exploit users.                                                              |
| **SQL Injection**                                             | Injecting malicious SQL commands to gain access to databases.                                                            |
| **Race Conditions**                                           | Exploiting timing issues between processes to gain unauthorized access.                                                  |
| **Failure to Handle Errors Properly**                         | Improper error handling can lead to system vulnerabilities or information leaks.                                         |
| **Failure to Protect Network Traffic or Store Data Securely** | Sensitive data not properly encrypted, leading to potential theft.                                                       |

### Secure Development Practices

- **Software Assurance (SA)** focuses on ensuring software is designed to be **secure** and **reliable**.
- Key design principles include: keeping the system simple, using minimum privileges, requiring proper authentication, and ensuring access controls are robust and clear.
- The **Software Assurance Common Body of Knowledge (CBK)** provides a framework for secure software development, guiding developers in creating applications resistant to threats.


---

## Review Questions
1. Why is information security a management problem? What can management do that technology cannot?
2. Why is data the most important asset an organization possesses? What other assets in the organization require protection?
3. Which management groups are responsible for implementing information security to protect the organization’s ability to function?
4. Has the implementation of networking technology created more or less risk for businesses that use information technology? Why?
5. What is information extortion? Describe how such an attack can cause losses, using an example not found in the text.
6. Why do employees constitute one of the greatest threats to information security?
7. What measures can individuals take to protect against shoulder surfing?
8. How has the perception of the hacker changed over recent years? What is the profile of a hacker today?
9. What is the difference between a skilled hacker and an unskilled hacker (other than skill levels)? How does the protection against each differ?
10. What are the various types of malware? How do worms differ from viruses? Do Trojan horses carry viruses or worms?
11. Why does polymorphism cause greater concern than traditional malware? How does it affect detection?
12. What is the most common form of violation of intellectual property? How does an organization protect against it? What agencies fight it?
13. What are the various types of force majeure? Which type might be of greatest concern to an organization in Las Vegas? Oklahoma City? Miami? Los Angeles?
14. How does technological obsolescence constitute a threat to information security? How can an organization protect against it?
15. Does the intellectual property owned by an organization usually have value? If so, how can attackers threaten that value?
16. What are the types of password attacks? What can a systems administrator do to protect against them?
17. What is the difference between a denial-of-service attack and a distributed denial-of-service attack? Which is more dangerous? Why?
18. For a sniffer attack to succeed, what must the attacker do? How can an attacker gain access to a network to use the sniffer system?
19. What methods does a social engineering hacker use to gain information about a user’s login id and password? How would this method differ if it were targeted towards an administrator’s assistant versus a data-entry clerk?
20. What is a buffer overflow, and how is it used against a Web server?

### Case Study

Soon after the board of directors meeting, Charlie was promoted to Chief Information Security Officer, a new position that reports to the CIO, Gladys Williams, and that was created to provide leadership for SLS’s efforts to improve its security profile.

Questions:

1. How do Fred, Gladys, and Charlie perceive the scope and scale of the new information security effort?
2. How will Fred measure success when he evaluates Gladys’ performance for this project? How will he evalute Charlie’s performance?
3. Which of the threats discussed in this chapter should receive Charlie’s attention early in his planning process?


---


# Chapter 3: Legal, Ethical & Professional Issues InfoSec


## Review Questions
1. What is the difference between law and ethics?
2. What is civil law, and what does it accomplish?
3. What are the primary examples of public law?
4. Which law amended the Computer Fraud and Abuse Act of 1986, and what did it change?
5. Which law was specifically created to deal with encryption policy in the United States?
6. What is privacy in an information security context?
7. What is another name for the Kennedy-Kassebaum Act (1996), and why is it important to organizations that are not in the health care industry?
8. If you work for a financial service organization such as a bank or credit union, which 1999 law affects your use of customer data? What other affects does it have?
9. What is the primary purpose of the USA PATRIOT Act?
10. Which 1997 law provides guidance on the use of encryption?
11. What is intellectual property (IP)? Is it afforded the same protection in every country of the world? What laws currently protect it in the United States and Europe?
12. How does the Sarbanes-Oxley Act of 2002 affect information security managers?
13. What is due care? Why should an organization make sure to exercise due care in its usual course of operations?
14. How is due diligence different from due care? Why are both important?
15. What is a policy? How is it different from a law?
16. What are the three general categories of unethical and illegal behavior?
17. What is the best method for preventing an illegal or unethical activity?
18. Of the information security organizations listed that have codes of ethics, which has been established for the longest time? When was it founded?
19. Of the organizations listed that have codes of ethics, which is focused on auditing and control?
20. What can be done to deter someone from committing a crime?

### Case Study

Iris called the company security hotline. The hotline was an anonymous way to report any suspicious activity or abuse of company policy, although Iris chose to identify herself. The next morning, she was called to a meeting with an investigator from corporate security, which led to more meetings with others in corporate security, and then finally a meeting with the director of human resources and Gladys Williams, the CIO of SLS.

Questions:

1. Why was Iris justified in determining who the owner of the CD was?
2. Should Iris have approached Henry directly, or was the hotline the most effective way to take action? Why do you think so?
3. Should Iris have placed the CD back at the coffee station and forgotten the whole thing? Explain why that action would have been ethical or unethical.


---


# Chapter 4: Risk Management


## Review Questions
1. What is risk management? Why is the identification of risks, by listing assets and their vulnerabilities, so important to the risk management process?
2. According to Sun Tzu, what two key understandings must you achieve to be successful in battle?
3. Who is responsible for risk management in an organization? Which community of interest usually takes the lead in information security risk management?
4. In risk management strategies, why must periodic review be a part of the process?
5. Why do networking components need more examination from an information security perspective than from a systems development perspective?
6. What value does an automated asset inventory system have for the risk identification process?
7. What information attribute is often of great value for local networks that use static addressing?
8. Which is more important to the systems components classification scheme: that the asset identification list be comprehensive or mutually exclusive?
9. What’s the difference between an asset’s ability to generate revenue and its ability to generate profit?
10. What are vulnerabilities? How do you identify them?
11. What is competitive disadvantage? Why has it emerged as a factor?
12. What are the strategies for controlling risk as described in this chapter?
13. Describe the “defend” strategy. List and describe the three common methods.
14. Describe the “transfer” strategy. Describe how outsourcing can be used for this purpose.
15. Describe the “mitigate” strategy. What three planning approaches are discussed in the text as opportunities to mitigate risk?
16. How is an incident response plan different from a disaster recovery plan?
17. What is risk appetite? Explain why risk appetite varies from organization to organization.
18. What is a cost benefit analysis?
19. What is the definition of single loss expectancy? What is annual loss expectancy?
20. What is residual risk?

### Case Study

As Charlie wrapped up the meeting, he ticked off a few key reminders for everyone involved in the asset identification project. “Okay, everyone, before we finish, please remember that you should try to make your asset lists complete, but be sure to focus your attention on the more valuable assets first. Also, remember that we evaluate our assets based on business impact to profitability first, and then economic cost of replacement. Make sure you check with me about any questions that come up. We will schedule our next meeting in two weeks, so please have your draft inventories ready.”

Questions:

1. Did Charlie effectively organize the work before the meeting? Why or why not? Make a list of the important issues you think should be covered by the work plan. For each issue, provide a short explanation.
2. Will the company get useful information from the team it has assembled? Why or why not?
3. Why might some attendees resist the goals of the meeting? Does it seem that each person invited was briefed on the importance of the event and the issues behind it?