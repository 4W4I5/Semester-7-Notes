| Chapter Number | Chapter Name                                    | Status    |
| -------------- | ----------------------------------------------- | --------- |
| 1              | Introduction to InfoSec                         | :warning: |
| 2              | The need for Security                           | :warning: |
| 3              | Legal, Ethical & Professional Issues in InfoSec | :warning: |
| 4              | Risk Management                                 | :warning: |

# Chapter 1: Introduction to InfoSec
## What is Information Security?
- Defined by Jim Anderson in 2002 as "a well-informed sense of assurance that information risks and controls are in balance."
- This involves **protecting information** and its critical elements, including the systems that use, store, and transmit it.
- To protect this data, organizations need policies, awareness programs, training, education, and technology.

### Key Concepts:
- **Security**: The state of being free from danger. Security involves multiple layers, including:
    - **Physical security**: Protecting physical assets from unauthorized access.
    - **Personal security**: Protecting individuals and groups.
    - **Operations security**: Securing the processes and activities of an organization.
    - **Communications security**: Protecting communications media and content.
    - **Network security**: Securing the components and connections in networks.
    - **Information security**: Ensuring data is safe from unauthorized access, modification, or destruction.

## History of Information Security
### Early Years
- **World War II**: The need for security arose with the first mainframes, used for military and intelligence purposes.
    - Early controls were mostly **physical**, such as **badges**, **keys**, and **facial recognition**.
    - **Information security** at the time involved rudimentary methods, like document classification, with little focus on system security.

### 1960s
- The **Advanced Research Project Agency (ARPA)** initiated research to develop a **redundant, networked communications system**. This was the origin of **ARPANET**, the precursor to the Internet.
- **Larry Roberts**, who developed ARPANET, is known as the **founder of the Internet**.

### 1970s & 1980s
- As ARPANET grew, so did **security issues**, especially with dial-up access:
    - No **user identification** or **authorization**.
    - Phone numbers for ARPANET were publicly shared, allowing unauthorized access.
- The development of the **MULTICS** system (Multiplexed Information and Computing Service) focused on **security** from the start, introducing **multiple security levels** and **passwords**.
- In the **late 1970s**, **Rand Report R-609** was the first paper to define **computer security**, shifting the focus from just **physical security** to include the **safety of data** and **access controls**.

### 1990s to Present
- As **networks of computers** became common, so did the **need to secure interconnected systems**.
- The **Internet**, a global network, expanded, but **security was a low priority** in its early deployments.
- The interconnected nature of systems today means that the **security of each computer** is dependent on the **security of every connected system**.

## Key Information Security Concepts
- **Access**: The ability to use or manipulate a system or data.
- **Asset**: Resources being protected, like hardware, software, data, or information.
- **Attack**: An attempt to damage or compromise information systems, either intentionally or unintentionally.
- **Control/Safeguard**: Mechanisms, policies, or procedures that counter threats and vulnerabilities.
- **Exploit**: Taking advantage of a weakness or vulnerability.
- **Risk**: The probability of loss or damage.
- **Threat**: Any potential danger to an asset (e.g., hackers, malware).
- **Vulnerability**: Weaknesses in a system that can be exploited.

### Computers as Subjects or Objects of Attack
- A computer can be both the **subject** (used as a tool to attack another system) and the **object** (the target of the attack) of an attack.

## Critical Characteristics of Information
The value of information comes from the following key characteristics:
1. **Availability**: Information should be available to authorized users when needed and in the required format.
2. **Accuracy**: Data should be free from errors and reflect what the user expects.
3. **Authenticity**: Information should be genuine and original, not fabricated.
4. **Confidentiality**: Ensures that information is accessible only to those authorized to view it.
5. **Integrity**: Information should be complete and uncorrupted.
6. **Utility**: Information should serve its intended purpose.
7. **Possession**: The state of having control or ownership of information.

## The Security Systems Development Life Cycle (SecSDLC)
The **SecSDLC** is a structured methodology for implementing information security, adapted from the traditional Systems Development Life Cycle (SDLC).

### Phases of SecSDLC:
1. **Investigation**:
    - Identifies the problem the system is being developed to solve.
    - Specifies project objectives, scope, and constraints.
    - **Feasibility analysis**: Assesses whether the project is economically, technically, and behaviorally feasible.
2. **Analysis**:
    - Involves assessing the organization, current systems, and their capabilities.
    - Analysts document findings and update feasibility analyses.
3. **Logical Design**:
    - Based on the analysis, select applications and technologies that will meet business needs.
    - Data structures are chosen to support the system, followed by another feasibility analysis.
4. **Physical Design**:
    - Specific technologies are selected to support the logical design.
    - Components are evaluated based on a **make-or-buy** decision (whether to develop in-house or purchase).
    - Final design is presented to end-users for approval.
5. **Implementation**:
    - Software is created or purchased, components are tested, and users are trained.
    - **Feasibility analysis** is conducted, and the system is reviewed by users.
6. **Maintenance and Change**:
    - This phase is the **longest and most expensive**. It involves ongoing support and modification of the system.
    - **Threats evolve**, and the system must constantly adapt to new risks.

## Security Professionals and the Organization
### Key Roles:
- **Chief Information Officer (CIO)**: The senior technology officer responsible for advising on strategic planning related to information management.
- **Chief Information Security Officer (CISO)**: Oversees the assessment, management, and implementation of information security within the organization.

### Information Security Project Team:
- **Champion**: A senior executive who supports the project financially and administratively.
- **Team Leader**: A project manager who understands both project management and technical security requirements.
- **Security Policy Developers**: Experts in developing organizational security policies.
- **Risk Assessment Specialists**: Understand financial risk and security methods.
- **Security Professionals**: Specialists with deep knowledge in various areas of information security.
- **Systems Administrators**: Manage and maintain systems that house critical information.
- **End Users**: Individuals who interact with the system and provide feedback on security measures.

## Data Responsibilities
- **Data Owner**: Responsible for the security and use of a particular set of information. They define data classification levels.
- **Data Custodian**: Manages data storage, maintenance, and backup procedures.
- **Data Users**: Individuals who work with information as part of their daily responsibilities.

## Approaches to Security Implementation
### Bottom-Up Approach:
- **Grassroots** effort, typically initiated by **systems administrators**.
- **Advantage**: Technical expertise of the individuals implementing the security.
- **Disadvantage**: Often lacks organizational support and staying power, making it less successful.

### Top-Down Approach:
- **Initiated by upper management**, with clear goals, policies, and accountability.
- Supported by **dedicated resources** and a formal development strategy like the SecSDLC.
- This approach has **higher success rates** due to **management backing**.

## Security as an Art, Science, and Social Science
### Security as an Art:
- **No hard and fast rules** for implementing security across systems.
- Security relies on individual expertise and interpretation, especially in complex environments.

### Security as a Science:
- Technology operates based on well-defined principles and interactions.
- Nearly all **system failures** and **security vulnerabilities** can be traced to specific causes within hardware or software.
- Given enough time, most faults could be **resolved by developers**.

### Security as a Social Science:
- Focuses on **human behavior** and how people interact with systems.
- End-users are often the **weakest link** in security.
- **Security administrators** can reduce risks by understanding behavioral factors and implementing **user-friendly controls**.

# Chapter 2: The need for Security
- The **primary mission of information security** is to ensure systems and their content remain unchanged despite threats.
- In the absence of threats, efforts could be directed at improving systems' ease of use and overall efficiency.
- Attacks on information systems are **frequent** and require constant attention.

## Business Needs for Security
Information security supports four vital functions for organizations:
1. **Protects the ability to function**:
    - Both **general management** and **IT management** are responsible for ensuring the organization can operate securely.
    - Information security is both a **management** and **people** issue, not just technical.
2. **Enables the safe operation of applications**:
    - Modern organizations rely on complex applications, which must be safeguarded against breaches.
    - Management must oversee IT infrastructure to ensure continuous safe operation.
3. **Protects the data organizations collect and use**:
    - Data is one of the organization's most valuable assets, critical for operations and customer interactions.
    - **Data at rest** and **data in motion** must be protected to maintain the organization’s integrity.
4. **Safeguards technology assets**:
    - Technology infrastructure should be robust and scalable to handle growth.
    - As needs evolve, older security programs may require more sophisticated replacements.

## Threats to Information Security
### Threat Overview
- A **threat** is any entity or event that poses a danger to an asset.
- Management must be aware of various threats to make informed decisions regarding security policies and controls.

### Common Threats:
1. **Compromises to Intellectual Property**:
    - Intellectual property (IP) involves ownership of ideas and their representations.
    - **Software piracy** is the most common form of IP compromise, monitored by organizations like the **Software & Information Industry Association (SIIA)** and the **Business Software Alliance (BSA)**.
2. **Deliberate Software Attacks**:
    - **Malware**: Malicious software designed to damage or disrupt systems. Types include:
        - **Viruses**: Self-replicating code that spreads through systems.
        - **Worms**: Programs that replicate and spread without needing a host program.
        - **Trojan horses**: Malicious programs disguised as legitimate.
        - **Logic bombs**: Malicious code triggered by specific events.
        - **Polymorphic threats**: Malware that changes to evade detection.
        - **Virus/worm hoaxes**: False alarms that can still cause disruptions.
3. **Deviations in Quality of Service**:
    - Failures by **service providers** (ISPs, utilities) can disrupt organizational operations.
    - Issues like **power irregularities** (spikes, surges, blackouts) can have significant impacts on system availability and performance.
4. **Espionage or Trespass**:
    - Unauthorized access to confidential information, whether through **legal competitive intelligence** or **illegal industrial espionage**.
    - **Hackers** use skill or deception to bypass system controls. Categories include:
        - **Expert hackers**: Skilled individuals who develop and share attack software.
        - **Unskilled hackers**: Novices who use pre-written scripts (also known as **script kiddies**).
5. **Human Error or Failure**:
    - **Inadvertent actions** by employees, often due to inexperience or poor training, pose a significant risk.
    - Examples include revealing classified data, entering incorrect data, or storing information in unsecured locations.
6. **Information Extortion**:
    - **Attackers steal information** and demand compensation for its return or non-disclosure. This is common in cases of credit card data theft.
7. **Sabotage or Vandalism**:
    - Actions ranging from petty vandalism to **cyberterrorism** can damage an organization's image or infrastructure.
    - **Hacktivists** or **cyberactivists** often deface websites or perform other disruptive acts for ideological reasons.
8. **Theft**:
    - **Physical theft** of devices is easier to control than **electronic theft**, where data can be stolen without detection.
9. **Technical Failures**:
    - **Hardware Failures**: Faulty components distributed by manufacturers that cause system malfunctions.
    - **Software Failures**: Software that contains bugs or hidden flaws, some of which may be left intentionally by developers.
10. **Technological Obsolescence**:
    - Outdated systems and technologies lead to **security vulnerabilities** and reliability issues.
    - Organizations must regularly update their systems to prevent obsolescence.

## Types of Attacks
1. **Malicious Code**:
    - Includes **viruses**, **worms**, **Trojan horses**, and **active Web scripts** designed to steal or destroy information.
2. **Hoaxes**:
    - **Virus hoaxes** waste time and resources by causing panic over non-existent threats.
3. **Backdoors**:
    - Attackers exploit backdoors or previously unknown vulnerabilities to access systems.
4. **Password Cracking**:
    - Techniques include:
        - **Brute force**: Trying all possible combinations.
        - **Dictionary attacks**: Guessing passwords based on common words.
5. **Denial-of-Service (DoS)**:
    - **DoS attacks** overwhelm systems with requests, causing them to crash.
    - **Distributed Denial-of-Service (DDoS)** attacks use multiple sources to flood the target system.
6. **Spoofing**:
    - Attackers masquerade as a trusted source by spoofing **IP addresses**.
7. **Man-in-the-Middle**:
    - Attackers intercept and modify communications between two parties.
8. **Sniffers**:
    - **Sniffers** capture network traffic and can be used for legitimate monitoring or malicious activity.
9. **Phishing & Pharming**:
    - **Phishing**: Trick users into providing sensitive information by posing as a legitimate entity.
    - **Pharming**: Redirect legitimate traffic to fraudulent websites to steal information.
10. **Social Engineering**:
    - Attackers manipulate individuals into revealing sensitive information, often exploiting the **human factor** in security.

## Secure Software Development
### Software Vulnerabilities
Many security issues arise from flaws in software. Common problems include:
- **Buffer overruns**
- **Command injection**
- **Cross-site scripting**
- **SQL injection**
- **Race conditions**
- **Failure to handle errors properly**
- **Failure to protect network traffic or store data securely**

### Secure Development Practices
To address security issues, organizations have adopted secure software development methodologies:
- **Software Assurance (SA)**: A set of principles aimed at ensuring software is **secure and reliable**.
- **SA Common Body of Knowledge (CBK)**: A national effort led by the U.S. Department of Defense and Homeland Security to promote secure software development.

### Key Security Design Principles:
- Keep design **simple** and **small**.
- Check **permissions** for access rather than exclusions.
- Ensure every access to an object is **authorized**.
- Use **keys or passwords** for authentication.
- Use **minimum privileges** required for tasks.
- Make security mechanisms **easy to use**, ensuring users apply them correctly and routinely.

# Chapter 3: Legal, Ethical & Professional Issues InfoSec
# Chapter 4: Risk Management