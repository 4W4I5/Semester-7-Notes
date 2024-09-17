| Chapter Number | Chapter Name                                    | Status    |
| -------------- | ----------------------------------------------- | --------- |
| 1              | Introduction to InfoSec                         | :warning: |
| 2              | The need for Security                           | :warning: |
| 3              | Legal, Ethical & Professional Issues in InfoSec | :x:       |
| 4              | Risk Management                                 | :warning: |

# Chapter 1: Introduction to InfoSec
## What is Information Security?
- Defined by Jim Anderson in 2002 as "a well-informed sense of assurance that information risks and controls are in balance."
- This involves **protecting information** and its critical elements, including the systems that use, store, and transmit it.
- To protect this data, organizations need policies, awareness programs, training, education, and technology.

### Key Concepts:
| **Key Concept**             | **Detail**                                                                    |
| --------------------------- | ----------------------------------------------------------------------------- |
| **Security**                | The state of being free from danger. Involves multiple layers:                |
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
		- Also spawned UNIX who wanted text processing
	- In the **late 1970s**, **Rand Report R-609** was the first paper to define **computer security**, shifting the focus from just **physical security** to include the **safety of data** and **access controls**.
		- It defined the safety of data
		- Limiting random & unauthorized access to that data
		- Involved personnel from multiple levels of the organization
- ### 1990s to Present
	- As **networks of computers** became common, so did the **need to secure interconnected systems**.
	- The **Internet**, a global network, expanded, but **security was a low priority** in its early deployments.
	- The interconnected nature of systems today means that the **security of each computer** is dependent on the **security of every connected system**.

## Key Information Security Concepts
A computer can be both the **subject** (used as a tool to attack another system) and the **object** (the target of the attack) of an attack.

### Critical Characteristics of Information
| **Characteristics**                     | **Details**                                                                                                                         |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| **Access**                              | The ability to use or manipulate a system or data.                                                                                  |
| **Asset**                               | Resources being protected, like hardware, software, data, or information.                                                           |
| **Attack**                              | An attempt to damage or compromise information systems, either intentionally or unintentionally.                                    |
| **Control/Safeguard**                   | Mechanisms, policies, or procedures that counter threats and vulnerabilities.                                                       |
| **Exploit**                             | Taking advantage of a weakness or vulnerability.                                                                                    |
| **Exposure**                            | The state of being exposed to potential loss or damage.                                                                             |
| **Loss**                                | The loss of information or assets due to an attack, accident, or other incidents.                                                   |
| **Protection Profile/Security Posture** | The overall security stance and set of measures to protect assets and mitigate risks.                                               |
| **Subjects & Objects**                  | Subjects are entities that perform actions (e.g., users, processes), and objects are the targets of actions (e.g., files, systems). |
| **Risk**                                | The probability of loss or damage.                                                                                                  |
| **Threat**                              | Any potential danger to an asset (e.g., hackers, malware).                                                                          |
| **Threat Agent**                        | The individual or entity that carries out a threat (e.g., attacker, hacker).                                                        |
| **Vulnerability**                       | Weaknesses in a system that can be exploited.                                                                                       |

### Critical Characteristics of Information
| **Characteristics** | **Details**                                                                  |
| ------------------- | ---------------------------------------------------------------------------- |
| **Availability**    | Ensuring that information and resources are accessible when needed.          |
| **Accuracy**        | The correctness and precision of information.                                |
| **Authenticity**    | Verification that information is genuine and from a legitimate source.       |
| **Confidentiality** | Ensuring that information is only accessible to those authorized to view it. |
| **Integrity**       | Ensuring that information is protected from unauthorized modification.       |
| **Utility**         | The usefulness or applicability of information for its intended purpose.     |
| **Possession**      | The ownership or control of information.                                     |


## The Security Systems Development Life Cycle (SecSDLC)

### Phases of SecSDLC:
1. **Investigation**:
    - Identifies the problem the system is being developed to solve.
    - Specifies project objectives, scope, and constraints.
    - **Feasibility analysis**:
	    - Assesses whether the project is economically, technically, and behaviorally feasible.
1. **Analysis**:
    - Involves assessing the organization, current systems, and their capabilities.
    - Analysts document findings and update feasibility analyses.
2. **Logical Design**:
    - Based on the analysis, select applications and technologies that will meet business needs.
    - Data structures are chosen to support the system, followed by another feasibility analysis.
3. **Physical Design**:
    - Specific technologies are selected to support the logical design.
    - Components are evaluated based on a **make-or-buy** decision (whether to develop in-house or purchase).
    - Final design is presented to end-users for approval.
4. **Implementation**:
    - Software is created or purchased, components are tested, and users are trained.
    - **Feasibility analysis** is conducted, and the system is reviewed by users.
5. **Maintenance and Change**:
    - This phase is the **longest and most expensive**. It involves ongoing support and modification of the system.
    - **Threats evolve**, and the system must constantly adapt to new risks.

## Security Professionals and the Organization
- ### Key Roles:
	- **Chief Information Officer (CIO)**: The senior technology officer responsible for advising on strategic planning related to information management.
	- **Chief Information Security Officer (CISO)**: Oversees the assessment, management, and implementation of information security within the organization.
- ### Information Security Project Team:
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