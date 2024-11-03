| Chapter<br>Number | Chapter<br>Name                       | Status             |
| ----------------- | ------------------------------------- | ------------------ |
| 4                 | Planning for Security                 | :warning:          |
| 6                 | Security Technology: Firewalls & VPNs | :warning:          |
| 7                 | Security Technology: IDPS             | :warning:          |
| 8                 | Cryptography                          | :white_check_mark: |

# Chapter 4: Planning for Security
## InfoSec Planning & Governance
- **Planning Levels:** Help translate an organization's strategic plans into tactical objectives.
- **Planning and the CISO**
- **Information Security Governance:**
	- **Definition:** Set of responsibilities and practices exercised by the board and executive management.
	- **Goals:**
		- Provide strategic direction
		- Establish objectives
		- Measure progress toward objectives
		- Verify/validate that risk management practices are appropriate and assets are used properly

### Information Security Governance Outcomes
- **Five Goals:**
  - Strategic alignment
  - Risk management
  - Resource management
  - Performance measures
  - Value delivery

### Responsibilities
- Oversee overall corporate security posture (accountable to board) → **CEO**
- Brief board, customers, public → **CEO**
- Set security policy, procedures, program, training for company → **CSO, CIO, CRO + Department/Agency Head**
- Respond to security breaches (investigate, mitigate, litigate) → **CSO, CIO, CRO + Department/Agency Head**
- Responsible for independent annual audit coordination → **Mid Level Manager + CSO, CIO, CRO + Department/Agency Head**
- Implement/audit/enforce/assess compliance → **Mid Level Manager + CSO, CIO, CRO + Department/Agency Head**
- Communicate policies, program (training) → **Staff/Employees + Mid Level Manager**
- Implement policy; report security vulnerabilities and breaches → **Staff/Employees**

---

## InfoSec Policy, Standards & Practices

- Management from communities of interest must make policies the basis for all information security planning, design, and deployment.
- Policies direct how issues should be addressed and technologies used.
- Policies should never contradict law, must be able to stand up in court, and must be properly administered.
- Security policies are the least expensive controls to execute but most difficult to implement properly.

---

## Policy as the Foundation of Planning

- **Function:** Policy acts as organizational law dictating acceptable and unacceptable behavior.
- **Standards:** Detailed statements of what must be done to comply with policy.
- **Practices, Procedures, and Guidelines:** Explain how to comply with policy.
- **Effectiveness:** For a policy to be effective, it must be properly disseminated, read, understood, agreed to by all members of the organization, and uniformly enforced.

---

## Enterprise Information Security Policy (EISP)

- **Purpose:** Sets strategic direction, scope, and tone for all security efforts within the organization.
- **Document Type:** Executive-level, usually drafted by or with the Chief Information Officer (CIO).
- **Compliance Areas:**
  - Ensure meeting requirements to establish the program and assign responsibilities.
  - Use specified penalties and disciplinary action.

### EISP Elements
- Overview of corporate security philosophy
- Information on the structure of the organization and personnel in information security roles
- Articulated responsibilities for security shared by all members of the organization
- Unique responsibilities for security for each role

**Statement of Purpose:**
Answers the question "What is this policy for?" and provides a framework that helps the reader understand the intent of the document. It establishes overarching security policy and direction for the company.

**Information Security Elements:**
Defines information security, for example: "Protecting the confidentiality, integrity, and availability of information through policy, education and training, and technology."

**Need for Information Security:**
Outlines the importance of protecting critical information about customers, employees, and markets.

**Information Security Responsibilities and Roles:**
Defines the organizational structure for supporting information security within the organization.

**Reference to Other Information Standards and Guidelines:**
Lists other standards that influence this policy document, including relevant federal and state laws.

---

## Issue-Specific Security Policy (ISSP)

- **Purpose:** Addresses specific areas of technology, requires frequent updates, and contains statements on the organization's position on specific issues.
- **Common Approaches:**
  - Independent ISSP documents
  - Single comprehensive ISSP document
  - Modular ISSP document

### Components of the Policy:
- **Statement of Policy:**
  - Scope and applicability
  - Definition of technology addressed
  - Responsibilities
- **Authorized Access and Usage of Equipment:**
  - User access
  - Fair and responsible use
  - Protection of privacy
- **Prohibited Use of Equipment:**
  - Disruptive use or misuse
  - Criminal use
  - Offensive or harassing materials
  - Copyrighted or licensed materials
  - Other restrictions
- **Systems Management:**
  - Management of stored materials
  - Employee monitoring
  - Virus protection
  - Physical security
  - Encryption
- **Violations of Policy:**
  - Procedures for reporting violations
  - Penalties for violations
- **Policy Review and Modification:**
  - Scheduled review of policy procedures for modification
  - Legal disclaimers
- **Limitations of Liability:**
  - Statements of liability
  - Other disclaimers as needed

---

## Systems-Specific Policy (SysSP)

- **Purpose:** Functions as standards or procedures for configuring or maintaining systems.
- **Types:**
  - Managerial guidance
  - Technical specifications
- **Access Control Lists (ACLs):** Restrict access for users, computers, and specific files.
- **Configuration Rule Policies:** Govern how security systems react to received data.
- **Combination SysSPs:** Combine managerial guidance and technical specifications.

---

## Policy Management

- **Management Needs:** Policies must be managed as they change frequently.
- **Requirements for Viability:**
  - Responsible manager
  - Schedule of reviews
  - Method for recommendations
  - Policy issuance and revision date
  - Automated policy management

---

## The InfoSec Blueprint

- **Definition:** Basis for design, selection, and implementation of all security policies, education and training programs, and technological controls.
- **Details:** Specifies tasks and order for accomplishment.
- **Scalability:** Should serve as a comprehensive plan for current and future information security needs.

---

## The ISO-27000 Series

- **Overview:** One of the most widely referenced security models, providing a standard framework for information security management.
- **Purpose:** Offers recommendations for information security management and a starting point for developing organizational security.

| **ISO 27000 Series Standard** | **Title or Topic** | **Comment** |
| ----------------------------- | ----------------- | ----------- |
| 27000:2014                    | Series Overview and Terminology | Defines terminology and vocabulary for the series |
| 27001:2013                    | Information Security Management System Specification | Drawn from B57799:2 |
| 27002:2013                    | Code of Practice for Information Security Management | Renamed from ISO/IEC 17799; drawn from B57799:1 |
| 27003:2010                    | Information Security Management Systems Implementation Guidelines | Guidelines for project planning for implementing ISMS |
| 27004:2009                    | Information Security Measurements and Metrics | Performance measures and metrics for management decisions |
| 27005-2011                    | ISMS Risk Management | Supports 27001 without recommending a specific risk method |
| 27006-2011                    | Requirements for Bodies Providing Audit and Certification of an ISMS | Supports accreditation of certification bodies |
| 27007:2011                    | Guideline for ISMS Auditing | Focuses on management systems |
| 27008:2011                    | Guideline for Information Security Auditing | Focuses on security controls |
| 27013:2012                    | Guideline on the Integrated Implementation of ISO/IEC 20000-1 and ISO/IEC 27001 | Supports implementing an integrated dual management system |
| 27014:2013                    | Information Security Governance Framework | Guidance on evaluating and monitoring information security |
| 27015:2012                    | Information Security Management Guidelines for Financial Services | Guidance for financial services organizations |
| 27019:2013                    | Information Security Management Guidelines for Process Control Systems in Energy Industry | Focused on helping energy organizations implement ISO standards |

---

## NIST Security Models

- **Key Publications:**
  - SP 800-12
  - SP 800-14
  - SP 800-18 Rev. 1
  - SP 800-26
  - SP 800-30

---

## NIST Special Publication 800-14

- **Key Principles:**
  - Security supports the organization's mission and is integral to sound management.
  - Security should be cost-effective; owners have responsibilities beyond their organizations.
  - Responsibilities and accountability should be explicit; security requires a comprehensive approach.
  - Security should be periodically reassessed; it's constrained by societal factors.
  - Includes thirty-three principles for securing systems.

---

## NIST CYSEC Framework

- **Components:**
  - **Framework Core:** Set of information security activities expected from an organization.
  - **Framework Tiers:** Relate the maturity of security programs to corresponding measures and functions.
  - **Framework Profile:** Used for gap analysis between current and desired information security states.
- **Seven-Step Approach:**
  - Prioritize and scope
  - Orient
  - Create current profile
  - Conduct risk assessment
  - Create target profile
  - Determine, analyze, prioritize gaps
  - Implement action plan

---

## Other Sources of Security Frameworks

- Federal Agency Security Practices (FASP)
- Computer Emergency Response Team Coordination Center (CERT/CC)
- International Association of Professional Security Consultants

---

## Design of Security Architecture

- **Spheres of Security:** Foundation of the security framework.
- **Levels of Controls:**
  - **Management Controls:** Set direction and scope, provide detailed instructions.
  - **Operational Controls:** Address personnel and physical security, protect production inputs/outputs

Here’s a concise summary of your security education and contingency planning materials, highlighting key points and concepts:

### Security Education, Training & Awareness Program (SETA)

- **Purpose**: SETA aims to minimize accidental security breaches through education, training, and awareness.

#### Components:
1. **Security Education**:
   - Everyone should be aware of information security principles; formal degrees are not necessary for all.
   - Employees may pursue relevant courses in higher education.

2. **Security Training**:
   - Provides detailed, hands-on instruction for secure job performance.
   - Can be customized in-house or outsourced; alternatives include professional conferences.

3. **Awareness Program**:
   - Essential for keeping security at the forefront of employees' minds.
   - Should be simple and cost-effective; lack of implementation can increase security risks.

|                       | **Education**                     | **Training**                      | **Awareness**                  |
|-----------------------|-----------------------------------|----------------------------------|--------------------------------|
| **Attribute**         | Why                               | How                              | What                           |
| **Level**             | Insight                           | Knowledge                        | Information                    |
| **Objective**         | Understanding                     | Skill                            | Exposure                       |
| **Teaching Method**   | Theoretical instruction           | Practical instruction            | Media, videos, newsletters     |
| **Test Measure**      | Essays                            | Problem-solving                  | True/False, MCQ               |
| **Impact Time Frame** | Long-term                         | Intermediate                     | Short-term                     |

### Continuity Strategies
- Involves **Incident Response Plans (IRPs)**, **Disaster Recovery Plans (DRPs)**, and **Business Continuity Plans (BCPs)**.
- **Key Functions**:
  - **IRP**: Immediate response to incidents.
  - **DRP**: Focus on restoring systems after disasters.
  - **BCP**: Ensures ongoing operations during major disruptions.

### Contingency Planning Process
1. Develop CP policy statement.
2. Conduct business impact analysis (BIA).
3. Identify preventive controls.
4. Create contingency strategies.
5. Develop contingency plans.
6. Ensure testing and maintenance.

### Business Impact Analysis (BIA)
- Evaluates potential adverse events on the organization.
- Key Stages:
  - Identify critical business processes.
  - Set recovery priorities.
  - Assess resource requirements.

### Incident Response Planning
- Focuses on identifying and responding to incidents affecting information assets.
- **Key Components of IR Policy**:
  - Management commitment.
  - Definition of incidents.
  - Organizational structure and severity ratings.
- **Incident Management**:
  - Detection, reaction, recovery, and assessment of incidents.

### Disaster Recovery & Business Continuity Planning
- **Disaster Recovery Planning (DRP)**: Prepares for recovery after disasters.
- **Business Continuity Planning (BCP)**: Ensures continuation of critical operations during disruptions.
- Continuity strategies include hot, warm, and cold sites.

### Crisis Management
- Actions to minimize harm during emergencies.
- Involves training and preparation for disaster response teams.

### Consolidated Contingency Plan
- Combines all contingency policies into a single document for accessibility.

### Law Enforcement Involvement
- Considerations for involving law enforcement in security incidents:
  - Timing and level of agency involvement.
  - Legal implications and evidence handling.

### Benefits of Law Enforcement Involvement
- Enhanced evidence processing and legal support.
- Expertise in handling investigations and securing necessary legal documentation.

# Chapter 6: Security Technology: Firewalls & VPNs
- ### Physical Design Process
	- Selects technologies to support information security blueprint
	- Identifies complete technical solutions based on these technologies, including deployment, operations, and maintenance elements, to improve security of environment
	- Designs physical security measures to support technical solution
	- Prepares project plans for implementation phase that follows
## Firewalls
- Prevent specific types of information from moving between the outside world (untrusted network) and the inside world (trusted network)
- May be separate computer system; a software service running on existing router or server; or a separate network containing supporting devices
- ### Processing Modes of Firewalls
	- Packet Filtering
		- Packet filtering firewalls examine header information of data packets
		- Most often based on combination of:
			- Internet Protocol (IP) source and destination address
			- Direction (inbound or outbound)
			- Transmission Control Protocol (TCP) or User Datagram Protocol (UDP) source and destination port requests
		- Simple firewall models enforce rules designed to prohibit packets with certain addresses or partial addresses
	- Application Gateways
	- Circuit Gateways
	- MAC Layer Firewalls
	- Hybrids
- ### Categorization of Firewalls
	- #### By Generation
	- #### By Structure
- ### Software vs Hardware: The SOHO Firewall Debate
- ### Firewall Architectures
	- Packet Filtering Routers
	- Screened Host Firewalls
	- Dual-Homed Firewalls
	- Screened Subnet Firewalls
- ### Selecting the Right Firewall
- ### Configuring & Managing Firewalls
- ### Best Practices
- ### Firewall Rules
- ### Content Filters
- ### Protecting Remote Connections
- ### Remote Access
- ### RADIUS, TACACS & Diameter
| Feature                  | RADIUS                                                                                                  | Diameter                                                                                             | TACACS+                                                                        | Kerberos                                                                    |
|:------------------------ |:------------------------------------------------------------------------------------------------------- |:---------------------------------------------------------------------------------------------------- |:------------------------------------------------------------------------------ |:--------------------------------------------------------------------------- |
| **Purpose**              | Centralized authentication and authorization for remote access, network devices, and wireless networks. | The advanced version of RADIUS is used for AAA in IP-based networks, especially 3G and LTE networks. | Centralized AAA, is typically used in network devices (Cisco).                 | Secure authentication for user sessions in a centralized environment (SSO). |
| **Protocol Type**        | UDP (User Datagram Protocol)                                                                            | TCP/SCTP (Stream Control Transmission Protocol)                                                      | TCP (Transmission Control Protocol)                                            | Symmetric Key Cryptography (with a trusted third party for tickets)         |
| **Encryption**           | Only passwords are encrypted                                                                            | Encrypts full packets                                                                                | Encrypts the entire payload                                                    | Uses cryptographic tickets and session keys for authentication              |
| **Authentication**       | Single-step authentication is often used for 802.1x, VPNs, and dial-up.                                 | Multi-step authentication offers better scalability and reliability than RADIUS.                     | Handles separate authentication, authorization, and accounting (AAA) services. | Ticket-based authentication with Single Sign-On (SSO) functionality         |
| **Transport Protocol**   | UDP                                                                                                     | TCP/SCTP                                                                                             | TCP                                                                            | None (uses tickets and secret keys)                                         |
| **Vendor**               | Open, widely supported                                                                                  | Evolved from RADIUS, 3GPP standard                                                                   | Cisco proprietary                                                              | MIT-developed, often used in Microsoft Active Directory                     |
| **Performance**          | Lightweight, lower reliability due to UDP.                                                              | More reliable and scalable than RADIUS.                                                              | High reliability due to the use of TCP.                                        | High security, built for strong, centralized environments                   |
| **Compatibility**        | Compatible with a wide range of devices and services                                                    | It is mainly used in modern mobile and IP-based networks.                                            | Primarily used with Cisco devices.                                             | Common in Windows environments (integrated with AD)                         |
| **Authentication Model** | Centralized (Username/Password)                                                                         | Centralized                                                                                          | Centralized (AAA)                                                              | Centralized using tickets (SSO model)                                       |
| **Scalability**          | Moderate (due to UDP limitations)                                                                       | Highly scalable (designed for telecom and large networks).                                           | Moderate, typically for managing fewer devices.                                | High scalability, especially in AD environments                             |
- ### Securing Authn w/ Kerberos
- ### Seasme
## Virtual Private Networks (VPNs)
- ### Modes
	- Transport Mode
	- Tunnel Mode
# Chapter 7: Security Technology: IDPS
- Introduction
- Terminology
- Why use an IDPS
- Types
- Detection Methods
- Response Behavior
- Approaches & Products
- Strengths & Limitations
- Deployment & Implementation
- Measuring the Effectiveness of IDPS
	- Honeypots, Honeynets & Padded Cell Systems
	- Trap & Trace Systems
- Active Intrusion Prevention
- Scanning & Analysis Tools
- Port Scanners
- Firewall Analysis Tools
- OS Detection Tools
- Vuln Scanners
- Packet Sniffers
- Wireless Security Tools
# Chapter 8: Cryptography
## Introduction
- **Cryptology** -> Science of Encryption, includes Cryptography & Cryptanalysis
		- **Cryptography** -> Making and using code to secure messages
		- **Cryptanalysis** -> Cracking or breaking Encrypted messages back into their unencrypted form
	- ~~Foundations of Cryptology (Skipped, nothing to note)~~
- **Terminology**
	- **Algorithm** -> A set of rules or steps designed to perform a specific task, such as encryption or decryption.
	- **Bit stream cipher** -> A cipher that encrypts data one bit at a time, often used for streaming data.
	- **Block cipher** -> A cipher that encrypts data in fixed-size blocks (e.g., 64 or 128 bits) for increased security and structure.
	- **Cipher or cryptosystem** -> A method of encryption and decryption to secure information from unauthorized access.
	- **Ciphertext/cryptogram** -> The encrypted output that appears as an unreadable or scrambled format.
	- **Code** -> A method of converting data into a different form, often used to represent data with symbols or keywords for privacy or brevity.
	- **Decipher** -> The process of converting ciphertext back into readable plaintext.
	- **Decrypt** -> The reverse process of encryption, transforming ciphertext into its original plaintext form.
	- **Encipher** -> The process of converting plaintext into unreadable ciphertext.
	- **Encrypt** -> The process of transforming plaintext into ciphertext to secure information.
	- **Key/Cryptovariable** -> A secret value used in cryptographic algorithms to encrypt and decrypt data.
	- **Keyspace** -> The total number of possible values for a key in a cryptosystem.
	- **Link encryption** -> An encryption method where data is encrypted at each link in a communication chain, including headers and metadata.
	- **Plaintext/cleartext** -> The original, readable data before encryption.
	- **Steganography** -> The practice of hiding messages or information within other non-secret text, images, or media.
	- **Work factor** -> The estimated time and resources required to break a cryptosystem by an attacker.
## Cipher Methods
- **Substitution Cipher**
	- Exchange one value for another
	- Types:
		- Monoalphabetic: Only one alphabet is used
		- Polyalphabetic: Use of two or more alphabets
		- Vigenère: Made up of 26 distinct cipher alphabets where the letters of a key and the PT are mapped onto a grid to get a new letter
- **Transposition Cipher**
	- Rearrange values within a block to create CT
	- Can be done bitwise or bytewise
- **Exclusive OR (XOR)**
	- Boolean Function
		- If two bits are the same, then output a binary 0
		- If two bits are **not** the same, then output a binary 1
	- Not recommended to be used on its own, very simple to break
- **Vernam Cipher**
	- Developed by AT&T
	- Use a set of characters once per encryption process, makes it hard to perform known ciphertext attacks
	- PadValues are added to PT(converted to numeric values), the sum exists in modulo 26 and is converted into a ciphertext letter
- **Book-Based Ciphers**
	- Uses text in a book to decrypt a message
	- **Book Cipher** -> CT is a list of codes representing page, line & word numbers
	- **Running Key Cipher** -> Uses a book for passing a key to cipher that is similar to vigenere, sender provides encrypted message with sequence of numbers from predetermined book to be used as an indicator block
	- **Template Cipher** -> Involves the use of hidden message in book, letter, or other message; requires page with specific number of holes cut into it. Should've been called a cheese slice cipher.
### Hash Functions
- Mathematical algos to confirm message identity and verify that it has not been changed
- Hash Algos
	- Public functions that create hash value
- Use of keys not required, although a Message Authn Code (MAC) can be attached to the message
- Used mainly in password verification systems to confirm the identity of the user.
## Cryptographic Algorithms
- ### Grouped into
	- #### Symmetric Encryption
		- AKA Same key encryption, both the sender and receiver have the key
		- Implemented via DES, 3DES and AES
	- #### Asymmetric Encryption
		- AKA Public-Key encryption
		- Either key can decrypt/encrypt messages encrypted by the other
		- Implemented first via RSA
- ### Encryption Key Size
	- Theoretical Operations to break an encryption is thought to be 2<sup>k</sup> operations where `k` is the keysize. However it takes half that time in reality on average.
	- Keysize is what determines an Encryption algos strength, the security of the key is not as important
- ### Use of Cryptography
	- Conceal contents of sensitive messages
	- Verify contents of messages and the identities of their senders
	- Must be able to be integrated into everyday world of computing
- ### Public-Key Infrastructure (PKI)
	- Provides:
		- Authn
		- Auth
		- Integrity
		- Privacy
		- Non-Repudiation
	- Uses:
		- Certificate Authority (CA)
		- Registration Authority (RA)
		- Certificate Directories
		- Management Protocols
		- Polices & Procedures
- ### Digital Sigs
	- Needed to verify sender integrity
	- Follows Digital Signature Standard (DSS)
	- Enforces Non-Repudiation
- ### Digital Certs
	- Issued by trusted Certificate Authorities (CAs)
	- Bind an entity's public key to their identity
	- Contain information such as certificate holder’s name, public key, CA's digital signature, and expiration date
	- Used in SSL/TLS to establish secure connections online
	- Help verify the authenticity of a sender or website, enhancing trust and security
- ### Hybrid Cryptography Systems
	- Asymmetric key encryption not widely used, unless its with digital certs
	- Most common is the Deffie-Hellman Key Exchange:
		- Use of Asymmetric keys to transfer a symmetric key which is then used for transmitting messages
- ### ~~Steganography (Skipped, too simple)~~
## Protocols for Secure Communications
- ### Securing Internet Communication with S-HTTP & SSL
  - **SSL**: Uses public key encryption to establish secure connections over the Internet.
  - **S-HTTP**: Encrypts individual HTTP messages between client and server, layering SSL over HTTP.
  - Together, SSL and S-HTTP secure data exchanges across virtual connections, ensuring data confidentiality and integrity.
- ### Securing Email with S/MIME, PEM, and PGP
  - **S/MIME**: Extends MIME with digital signatures for secure email encoding.
  - **PEM**: Uses 3DES for message encryption and RSA for key exchanges and digital signatures.
  - **PGP**: Employs the IDEA cipher for message encryption, widely used for secure email communications.
- ### Securing Web Transactions with SET, SSL, and S-HTTP
  - **SET**: Developed by MasterCard and VISA to secure online and retail transactions, encrypting credit card details using DES.
  - **SSL & S-HTTP**: Used to secure communications in online transactions, protecting sensitive data exchanges.
- ### Securing Wireless Networks with WEP & WPA
  - **WEP**: Early standard for Wi-Fi security, though vulnerable to attacks.
  - **WPA/WPA2**: Enhanced protocols to address WEP’s flaws, using stronger encryption for network protection.
  - **Next-Gen Protocols**: Includes AES-based standards like RSN and CCMP for robust wireless security.
  - **Bluetooth**: Requires security controls to avoid exploitation within its transmission range.

|                    | **WEP**                                                   | **WPA**                                                                                               |
| ------------------ | --------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Encryption**     | Already Broken                                            | Overcomes all WEP shortcomings                                                                        |
|                    | 40-bit Key                                                | 128-Bit Key                                                                                           |
|                    | Static key                                                | Dynamic Key - Each user is assigned a key per session with additional keys calculated for each packet |
|                    | Manual Key Distribution - Each key is manually punched in | Automatic Key Distribution                                                                            |
| **Authentication** | Broken - WEP key itself is used for Authn                 | Improved User Authn, using 802.1x & EA                                                                |
- ### Securing TCP/IP with IPSec and PGP
  - **IPSec**: Framework for TCP/IP security, incorporating cryptographic methods:
    - Diffie-Hellman key exchange for secure keys
    - Public key cryptography to verify identity
    - Bulk encryption for data privacy
    - Digital certificates as digital ID cards for authentication
  - **PGP**: A hybrid cryptosystem for file and email encryption, combining top cryptographic methods.
    - Provides six key services: digital signature authentication, message encryption, compression, email compatibility, segmentation, and key management, making it an open-source standard for secure communication.