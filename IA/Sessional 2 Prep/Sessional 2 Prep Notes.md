| Chapter<br>Number | Chapter<br>Name                       | Status             |
| ----------------- | ------------------------------------- | ------------------ |
| 4                 | Planning for Security                 | :warning:          |
| 6                 | Security Technology: Firewalls & VPNs | :warning:          |
| 7                 | Security Technology: IDPS             | :warning:          |
| 8                 | Cryptography                          | :white_check_mark: |

# Chapter 4: Planning for Security
- InfoSec Planning & Governance
```
· Planning levels help translate organization's strategic
plans into tactical objectives.
. Planning and the CISO
. Information Security Governance
	- Governance:
	. Set of responsibilities and practices exercised by the
	board and executive management
	· Goal to provide strategic direction, establishment of
	objectives, and measurement of progress toward
	objectives
	. Also verifies/validates that risk management practices
	are appropriate and assets used properly


. Information Security Governance outcomes
	- Five goals:
		· Strategic alignment
		. Risk management
		. Resource management
		. Performance measures
		· Value delivery


Responsibilities
· Oversee overall corporate security
posture (accountable to board) -> CEO

. Brief board, customers, public -> CEO

. Set security policy, procedures,
program, training for company -> CSO, CIO, CRO + Department/Agency Head

. Respond to security breaches
(investigate, mitigate, litigate) -> CSO, CIO, CRO + Department/Agency Head

· Responsible for independent
annual audit coordination -> Mid Level Manager + CSO, CIO, CRO + Department/Agency Head

. Implement/audit/enforce/assess
compliance -> Mid Level Manager + CSO, CIO, CRO + Department/Agency Head

· Communicate policies, program
(training)  -> Staff/Emp + Mid Level Manager

. Implement policy; report security
vulnerabilities and breaches -> Staff/Emp

```

- InfoSec Policy, Standards & Practices

```

. Management from communities of interest must
make policies the basis for all information security
planning, design, and deployment.
. Policies direct how issues should be addressed
and technologies used.
. Policies should never contradict law, must be able
to stand up in court, and must be properly
administered.
. Security policies are the least expensive controls to
execute but most difficult to implement properly.

```


- Policy as the Foundation of Planning

```

. Policy functions as organizational law that dictates
acceptable and unacceptable behavior.
. Standards: more detailed statements of what must
be done to comply with policy
. Practices, procedures, and guidelines effectively
explain how to comply with policy.
. For a policy to be effective, it must be properly
disseminated, read, understood, and agreed to by
all members of the organization, and uniformly
enforced.

```
NOTE:: Check the diag on slide 10

- Enterprise Information Security Policy (EISP)

```
· Sets strategic direction, scope, and tone for all
security efforts within the organization
. Executive-level document, usually drafted by or
with Chief Information Officer (CIO) of the
organization
. Typically addresses compliance in two areas:
	- Ensure meeting of requirements to establish program and assigning responsibilities therein to various organizational components
	- Use of specified penalties and disciplinary action

. EISP Elements should include:
	- Overview of corporate security philosophy
	- Information on the structure of the organization and
	people in information security roles
	- Articulated responsibilities for security shared by all
	members of the organization
	- Articulated responsibilities for security unique to
	each role in the organization

Statement of Purpose -> Answers the question "What is this policy for?" Provides a framework that helps the
reader understand the intent of the document. Can include text such as the following:
"This document will:
. Identify the elements of a good security policy
. Explain the need for information security
. Specify the various categories of information security
Identify the information security responsibilities and roles
Identify appropriate levels of security through standards and guidelines
This document establishes an overarching security policy and direction for our
company. Individual departments are expected to establish standards, guidelines,
and operating procedures that adhere to and reference this policy while
addressing their specific and individual needs."#

Information Security Elements -> Defines information security. For example:
"Protecting the confidentiality, integrity, and availability of information while in
processing, transmission, and storage, through the use of policy, education and
training, and technology ... "
This section can also lay out security definitions or philosophies to darify the policy.

Need for Information Security -> Provides information on the importance of information security in the
organization and the legal and ethical obligation to protect critical information
about customers, employees, and markets.

Information Security Responsibillities and Roles -> Defines the organizational structure designed to support information security
within the organization. Identifies categories of people with responsibility for
information security (IT department, management, users) and those
responsibilities, induding maintenance of this document.

Reference to Other Information Standards and Guidelines -> Lists other standards that influence this policy document and are influenced by it,
perhaps incuding relevant federal laws, state laws, and other policies.

```

- Issue-Specific Security Policy (ISSP)

```

· The ISSP:
	- Addresses specific areas of technology
	- Requires frequent updates
	- Contains statement on the organization's position on
	specific issue
. Three common approaches when creating and
managing ISSPs:
	- Create a number of independent ISSP documents
	- Create a single comprehensive ISSP document
	- Create a modular ISSP document

. Components of the policy:
- Statement of policy
	a. Scope and applicability
	b. Definition of technology addressed
	c. Responsibilities
- Authorized access and usage of equipment
	a. User access
	b. Fair and responsible use
	C. Protection of privacy
- Prohibited use of equipment
	a. Disruptive use or misuse
	b. Criminal use
	c. Offensive or harassing materials
	d. Copyrighted, licensed, or other intellectual property
	e. Other restrictions
- Systems management
	a. Management of stored materials
	b. Employee monitoring
	C. Virus protection
	d. Physical security
	e. Encryption
- Violations of policy
	a. Procedures for reporting violations
	b. Penalties for violations
- Policy review and modification
	a. Scheduled review of policy procedures for modification
	b. Legal disclaimers
- Limitations of liability
	a. Statements of liability
	b. Other disclaimers as needed

```

- Systems-Specific (SysSP)
```

. SysSPs often function as standards or procedures used
when configuring or maintaining systems.
· Systems-specific policies fall into two groups:
	- Managerial guidance
	- Technical specifications
. Access control lists (ACLs) can restrict access for a
particular user, computer, time, duration-even a
particular file.
. Configuration rule policies govern how security system
reacts to received data.
. Combination SysSPs combine managerial guidance
and technical specifications.

```
- Policy Management

```

. Policies must be managed as they constantly
change.
· To remain viable, security policies must have:
	- A responsible manager
	- A schedule of reviews
	- A method for making recommendations for reviews
	- A policy issuance and revision date
	- Automated policy management

```

- The InfoSec Blueprint
```

· Basis for design, selection, and implementation of
all security policies, education and training
programs, and technological controls
. Detailed version of security framework (outline of
overall information security strategy for
organization)
. Specifies tasks and order in which they are to be
accomplished
· Should also serve as a scalable, upgradeable, and
comprehensive plan for the current and future
information security needs

```
- The ISO-27000 Series
```

. One of the most widely referenced security models
. Standard framework for information security that
states organizational security policy is needed to
provide management direction and support
. Purpose is to give recommendations for
information security management
. Provides a starting point for developing
organizational security

```

| **ISO 27000 Series Standard** | **Title or Topic**                                                                                     | **Comment**                                                                                                                  |
| ----------------------------- | ------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| 27000:2014                    | Series Overview and Terminology                                                                        | Defines terminology and vocabulary for the standard series                                                                   |
| 27001:2013                    | Information Security Management System Specification                                                   | Drawn from B57799:2                                                                                                          |
| 27002:2013                    | Code of Practice for Information Security Management                                                   | Renamed from ISO/IEC 17799; drawn from B57799:1                                                                              |
| 27003:2010                    | Information Security Management Systems Implementation Guidelines                                      | Guidelines for project planning requirements for implementing an I5MS                                                        |
| 27004:2009                    | Information Security Measurements and Metrics                                                          | Performance measure and metrics for information security management decisions                                                |
| 27005-2011                    | ISMS Risk Management                                                                                   | Supports 27001, but doesn't recommend any specific risk method                                                               |
| 27006-2011                    | Requirements for Bodies Providing Audit and Certification of an ISMS                                   | Largely intended to support the accreditation of certification bodies providing ISMS certification                           |
| 27007:2011                    | Guideline for ISMS Auditing                                                                            | Focuses on management systems                                                                                                |
| 27008:2011                    | Guideline for Inforation Security Auditing                                                             | Focuses on security controls                                                                                                 |
| 27013:2012                    | Guideline on the Integrated Implementation of ISO/EC 20000-1 and ISO1EC 27001                          | Support for implementing an integrated dual management system                                                                |
| 27014:2013                    | Information Security Governance Framework                                                              | ISO's approach to security governance- guidance on evaluating, directing. monitoring, and communicating information security |
| 27015:2012                    | Information Security Management Guidelines for Financial Services                                      | Guidance for financial services organizations                                                                                |
| 27019:2013                    | Information security management guidelines for process control systems specific to the energy industry | Focused on helping organizations in the energy industry implement IS0 standards                                              |

- NIST Security Models
```

. Another possible approach described in the
documents available from Computer Security
Resource Center of NIST
	- SP 800-12
	- SP 800-14
	- SP 800-18 Rev. 1
	- SP 800-26
	- SP 800-30

```
- NIST Special Publication 800-14
```

. Security supports the mission of the organization
and is an integral element of sound management.
. Security should be cost effective; owners have
security responsibilities outside their own
organizations.
. Security responsibilities and accountability should
be made explicit; security requires a
comprehensive and integrated approach.
. Security should be periodically reassessed;
security is constrained by societal factors.
. Thirty-three principles for securing systems (see
Table 4-5)

```
- NIST CYSEC Framework

```

. Consists of three fundamental components:
	- Framework core: set of information security activities
	an organization is expected to perform and their
	desired results
	- Framework tiers: help relate the maturity of security
	programs and implement corresponding measures
	and functions
	- Framework profile: used to perform a gap analysis
	between the current and a desired state of
	information security/risk management
· Seven-step approach to implementing/improving
programs:
	- Prioritize and scope
	- Orient
	- Create current profile
	- Conduct risk assessment
	- Create target profile
	- Determine, analyze, prioritize gaps
	- Implement action plan
```
- Other Sources of Security Frameworks
```

. Federal Agency Security Practices (FASP)
. Computer Emergency Response Team
Coordination Center (CERT/CC)
. International Association of Professional Security
Consultants

```
- Design of Security Architecture
```

. Spheres of security: foundation of the security
framework
. Levels of controls:
	- Management controls set the direction and scope of
	the security processes and provide detailed
	instructions for its conduct.
	- Operational controls address personnel and physical
	security, and the protection of production
	inputs/outputs.
	- Technical controls are the tactical and technical
	implementations related to designing and integrating
	security in the organization.
· Defense in depth
	- Implementation of security in layers
	- Requires that organization establish multiple layers
	of security controls and safeguards
· Security perimeter
	- Border of security protecting internal systems from
	outside threats
	- Does not protect against internal attacks from
	employee threats or onsite physical threats

```
- Security Education, Training & Awareness Program (SETA)
```

. Once general security policy exists, implement
security education, training, and awareness (SETA)
program
. SETA is a control measure designed to reduce
accidental security breaches.
. The SETA program consists of security education,
security training, and security awareness.
. Enhances security by improving awareness,
developing skills, and knowledge, and building in-
depth knowledge

```
- Security Education
```

. Everyone in an organization needs to be trained
and aware of information security; not every
member needs a formal degree or certificate in
information security.
. When formal education is deemed appropriate, an
employee can investigate courses in continuing
education from local institutions of higher learning.
. A number of universities have formal coursework in
information security.

```

- Security Training
```

. Provides members of the organization with detailed
information and hands-on instruction to prepare
them to perform their duties securely
. Management of information security can develop
customized in-house training or outsource the
training program.
. Alternatives to formal training include conferences
and programs offered through professional
organizations.

```
- Awareness Program
```

. One of the least frequently implemented but most
beneficial programs is the security awareness
program.
. Designed to keep information security at the
forefront of users' minds
. Need not be complicated or expensive
. If the program is not actively implemented,
employees may begin to neglect security matters,
and risk of employee accidents and failures are
likely to increase.

```

|                       | **Education**                                                                                  | **Training**                                                             | **Awareness**                                |
| --------------------- | ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ | -------------------------------------------- |
| **Attribute**         | Why                                                                                            | How                                                                      | What                                         |
| **Level**             | Insight                                                                                        | Knowledge                                                                | Information                                  |
| **Objective**         | Understanding                                                                                  | Skill                                                                    | Exposure                                     |
| **Teaching Method**   | Theoretical instruction<br>- Discussion seminar<br>- Background reading<br>- Hands-on practice | Practical instruction<br>- Lecture<br>- Case study workshop<br>- Posters | Media<br>- Videos<br>- Newsletters           |
| **Test Measure**      | Essay (interpret learning)                                                                     | Problem solving (apply learning)                                         | - True or False<br>- MCQ (Identify Learning) |
| **Impact Time Frame** | Long term                                                                                      | Intermediate                                                             | Short term                                   |

- Continuity Strategies
```

. Incident response plans (IRPs); disaster recovery plans
(DRPs); business continuity plans (BCPs)
. Primary functions of above plans:
	- IRP focuses on immediate response; if attack escalates
	or is disastrous, process changes to disaster recovery
	and BCP.
	- DRP typically focuses on restoring systems after
	disasters occur; as such, it is closely associated with
	BCP.
	- BCP occurs concurrently with DRP when damage is
	major or ongoing, requiring more than simple restoration
	of information and information resources.
. Before planning can actually begin, a team has to
start the process.
. Champion: high-level manager to support,
promote, and endorse findings of the project
. Project manager: leads project and ensures sound
project planning process is used, a complete and
useful project plan is developed, and project
resources are prudently managed
. Team members: should be managers, or their
representatives, from various communities of
interest: business, IT, and information security
```

NOTE:: Add the CP Timeline on Slide 41

```
			|Contingency Planning|
					  |
					  V
		  |Business Impact Analysis|
		/        	  |             \
	   /		      V              \
     |IR|     |Disaster Recovery|   |Business Continunity|
				  
```

- Contingency Planning Process
```

. Includes the following steps:
- Develop CP policy statement
- Conduct business impact analysis
- Identify preventive controls
- Create contingency strategies
- Develop contingency plan
- Ensure plan testing, training, and exercises
- Ensure plan maintenance

DIAGRAM:
- Form the CP Team
- Develop the CP policy Statement
- Conduct BIA
	- Determine mission/business processes & recover criticality
	- Identity Resource requirements
	- Identity Recovery Priorities for system resources
- Form subordinate planning teams (IR/DR/BC)
- Develop subordinate planning policies (IR/DR/BC)
- Integrate the BIA
- Identity Preventative controls
- Organize Response teams (IR/DR/BC)
- Create Response Strategies (IR/DR/BC)
- Develop subordinate plans (IR/DR/BC)
- Ensure plan testing, training & excerises
- Ensure plan maintenance

```
- CP Policy
```

. Should contain the following sections:
	- Introductory statement of philosophical perspective
	- Statement of scope/purpose
	- Call for periodic risk assessment/BIA
	- Specification of CP's major components
	- Call for/guidance in the selection of recovery options
	- Requirement to test the various plans regularly
	- Identification of key regulations and standards
	- Identification of key people responsible for CP operations
	- Challenge to the organization members for support
	- Administrative information

```
- Business Impact Analysis (BIA)
```

. Investigation and assessment of various adverse
events that can affect organization
. Assumes security controls have been bypassed, have
failed, or have proven ineffective, and attack has
succeeded
· Organization should consider scope, plan, balance,
knowledge of objectives, and follow-ups
· Three stages:
- Determine mission/business processes and recovery criticality
- Identify recovery priorities for system resources
- Identify resource requirements

```

NOTE:: Add diag on slide 46

- Incident Response Planning
```

. Incident response planning includes identification
of, classification of, and response to an incident.
. Attacks classified as incidents if they:
	- Are directed against information assets
	- Have a realistic chance of success
	- Could threaten confidentiality, integrity, or availability
	of information resources
. Incident response (IR) is more reactive than
proactive, with the exception of planning that must
occur to prepare IR teams to be ready to
ady to react to

. Incident response planning includes identification
of, classification of, and response to an incident.
. Attacks classified as incidents if they:
	- Are directed against information assets
	- Have a realistic chance of success
	- Could threaten confidentiality, integrity, or availability
	of information resources
. Incident response (IR) is more reactive than
proactive, with the exception of planning that must
occur to prepare IR teams to be ready to react to
an incident.

. Incident response policy identifies the following key
components:
	- Statement of management commitment
	- Purpose/objectives of policy
	- Scope of policy
	- Definition of InfoSec incidents and related terms
	- Organizational structure
	- Prioritization or severity ratings of incidents
	- Performance measures
	- Reporting and contact forms

. Incident Planning
	- Predefined responses enable the organization to react
	quickly and effectively to the detected incident if:
. The organization has an IR team
. The organization can detect the incident
	- IR team consists of individuals needed to handle
	systems as incident takes place.
. Incident response plan
	- Format and content
	- Storage
	- Testing

. Incident detection
	- Most common occurrence is complaint about
	technology support, often delivered to help desk.
	- Careful training is needed to quickly identify and
	classify an incident.
	- Once incident is properly identified, the organization
	can respond.
	- Incident indicators vary.

. Incident reaction
	- Consists of actions that guide the organization to stop incident,
	mitigate its impact, and provide information for recovery
	- Actions that must occur quickly:
		. Notification of key personnel
		. Documentation of the incident
. Incident containment strategies
	- Containment of incident's scope or impact as first priority; must
	then determine which information systems are affected
	- Organization can stop incident and attempt to recover control
	through a number or strategies.

. Incident recovery
	- Once incident has been contained and control of
	systems regained, the next stage is recovery.
	- The first task is to identify human resources needed
	and launch them into action.
	- Full extent of the damage must be assessed.
	- Organization repairs vulnerabilities, addresses any
	shortcomings in safeguards, and restores data and
	services of the systems.

· Damage assessment
	- Several sources of information on damage can be
	used, including system logs, intrusion detection logs,
	configuration logs and documents, documentation
	from incident response, and results of detailed
	assessment of systems and data storage.
	- Computer evidence must be carefully collected,
	documented, and maintained to be usable in formal
	or informal proceedings.
	- Individuals who assess damage need special
	training.
	
. Automated response
	- New systems can respond to incident threat
	autonomously.
	- Downsides of current automated response systems
	may outweigh benefits.
		. Legal liabilities of a counterattack
		. Ethical issues
```
- Disaster Recovery Planning
```

. Disaster recovery planning (DRP) is preparation for
and recovery from a disaster.
· The contingency planning team must decide which
actions constitute disasters and which constitute
incidents.
. When situations are classified as disasters, plans
change as to how to respond; take action to secure
most valuable assets to preserve value for the
longer term.
. DRP strives to reestablish operations at the
primary site.

```
- Business Continuity Planning
```

· Prepares the organization to reestablish or relocate
critical business operations during a disaster that
affects operations at the primary site
. If disaster has rendered the current location
unusable, there must be a plan to allow business to
continue functioning.
. Development of BCP is somewhat simpler than
IRP or DRP.
	- Consists primarily of selecting a continuity strategy
	and integrating off-site data storage and recovery
	functions into this strategy

· Continuity strategies
	- There are a number of strategies for planning for
	business continuity.
	- Determining factor in selecting between options is
	usually cost.
	- In general, there are three exclusive options: hot
	sites, warm sites, and cold sites.
	- Three shared functions: time-share, service bureaus,
	and mutual agreements

. Off-site disaster data storage
	- To get sites up and running quickly, an organization
	must have the ability to move data into new site's
	systems.
	- Options for getting operations up and running
	include:
		. Electronic vaulting
		· Remote journaling
		· Database shadowing
```
- Crisis Management
```

· Actions taken in response to an emergency to
minimize injury/loss of life, preserve organization's
image/market share, and complement disaster
recovery/business continuity processes
. What may truly distinguish an incident from a
disaster are the actions of the response teams.
. Disaster recovery personnel must know their roles
without any supporting documentation.
	- Preparation
	- Training
	- Rehearsal

· Crisis management team is responsible for
managing the event from an enterprise perspective
and covers:
	- Supporting personnel and families during crisis
	- Determining impact on normal business operations
	and, if necessary, making disaster declaration
	- Keeping the public informed
	- Communicating with major customers, suppliers,
	partners, regulatory agencies, industry
	organizations, the media, and other interested
	parties
· Key areas of crisis management also include:
	- Verifying personnel head count
	- Checking alert roster
	- Checking emergency information cards
```
- The Consolidated Contingency Plan
```

· Single document set approach combines all
aspects of contingency policy and plan,
incorporating IR, DR, and BC plans.
. Often created and stored electronically, it should be
easily accessible by employees in time of need.
	- Small- and medium-sized organizations may also
	store hard copies of the document.

```
- Law Enforcement Involvement
```

. When incident at hand constitutes a violation of
law, the organization may determine involving law
enforcement is necessary.
· Questions:
	- When should law enforcement get involved?
	- What level of law enforcement agency should be
	involved (local, state, federal)?
	- What happens when law enforcement agency is
	involved?
. Some questions are best answered by the legal
department.

```
- Benefits/Drawbacks of Law Enforcement Involvement
```

. Involving law enforcement agencies has
advantages:
	- Agencies may be better equipped at processing
	evidence.
	- Organization may be less effective in extracting
	necessary information to legally convict suspected
	criminal.
	- Law enforcement agencies are prepared to handle
	any necessary warrants and subpoenas.
	- Law enforcement is skilled at obtaining witness
	statements and other information collection.

```
# Chapter 6: Security Technology: Firewalls & VPNs
- ### Physical Design Process
. The physical design process:

Selects technologies to support information security blueprint

- Identifies complete technical solutions based on these
technologies, including deployment, operations, and
maintenance elements, to improve security of environment

. Designs physical security measures to support technical
solution

. Prepares project plans for implementation phase that follows
## Firewalls
- ### Processing Modes of Firewalls
	- Packet Filtering
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