| Chapter<br>Number | Chapter<br>Name                       | Status             |
| ----------------- | ------------------------------------- | ------------------ |
| 4                 | Planning for Security                 | :white_check_mark: |
| 5                 | Risk Management                       | :warning:          |
| 6                 | Security Technology: Firewalls & VPNs | :white_check_mark: |
| 7                 | Security Technology: IDPS             | :white_check_mark: |
| 8                 | Cryptography                          | :white_check_mark: |
| 9                 | Physical Security                     | :warning:          |
| 10                | Implementing Information Security     | :warning:          |
| 11                | Security & Personnel                  | :warning:          |
| 12                | Information Security Maintenance      | :warning:          |

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

- ### Information Security Governance Outcomes
	- **Five Goals:**
	  - Strategic alignment
	  - Risk management
	  - Resource management
	  - Performance measures
	  - Value delivery

- ### Responsibilities
	- Oversee overall corporate security posture (accountable to board) → **CEO**
	- Brief board, customers, public → **CEO**
	- Set security policy, procedures, program, training for company → **CSO, CIO, CRO + Department/Agency Head**
	- Respond to security breaches (investigate, mitigate, litigate) → **CSO, CIO, CRO + Department/Agency Head**
	- Responsible for independent annual audit coordination → **Mid Level Manager + CSO, CIO, CRO + Department/Agency Head**
	- Implement/audit/enforce/assess compliance → **Mid Level Manager + CSO, CIO, CRO + Department/Agency Head**
	- Communicate policies, program (training) → **Staff/Employees + Mid Level Manager**
	- Implement policy; report security vulnerabilities and breaches → **Staff/Employees**

## InfoSec Policy, Standards & Practices

- Management from communities of interest must make policies the basis for all information security planning, design, and deployment.
- Policies direct how issues should be addressed and technologies used.
- Policies should never contradict law, must be able to stand up in court, and must be properly administered.
- Security policies are the least expensive controls to execute but most difficult to implement properly.

## Policy as the Foundation of Planning

- **Function:** Policy acts as organizational law dictating acceptable and unacceptable behavior.
- **Standards:** Detailed statements of what must be done to comply with policy.
- **Practices, Procedures, and Guidelines:** Explain how to comply with policy.
- **Effectiveness:** For a policy to be effective, it must be properly disseminated, read, understood, agreed to by all members of the organization, and uniformly enforced.

## Enterprise Information Security Policy (EISP)

- **Purpose:** Sets strategic direction, scope, and tone for all security efforts within the organization.
- **Document Type:** Executive-level, usually drafted by or with the Chief Information Officer (CIO).
- **Compliance Areas:**
  - Ensure meeting requirements to establish the program and assign responsibilities.
  - Use specified penalties and disciplinary action.

- ### EISP Elements
	- Overview of corporate security philosophy
	- Information on the structure of the organization and personnel in information security roles
	- Articulated responsibilities for security shared by all members of the organization
	- Unique responsibilities for security for each role
	- **Statement of Purpose:**
		- Answers the question "What is this policy for?" and provides a framework that helps the reader understand the intent of the document. It establishes overarching security policy and direction for the company.
	**Information Security Elements:**
		- Defines information security, for example: "Protecting the confidentiality, integrity, and availability of information through policy, education and training, and technology."
	**Need for Information Security:**
		- Outlines the importance of protecting critical information about customers, employees, and markets.
	**Information Security Responsibilities and Roles:**
		- Defines the organizational structure for supporting information security within the organization.
	**Reference to Other Information Standards and Guidelines:**
		- Lists other standards that influence this policy document, including relevant federal and state laws.

## Issue-Specific Security Policy (ISSP)

- **Purpose:** Addresses specific areas of technology, requires frequent updates, and contains statements on the organization's position on specific issues.
- **Common Approaches:**
	- Independent ISSP documents
	- Single comprehensive ISSP document
	- Modular ISSP document

- ### Components of the Policy:
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

## Systems-Specific Policy (SysSP)

- **Purpose:** Functions as standards or procedures for configuring or maintaining systems.
- **Types:**
	- Managerial guidance
	- Technical specifications
- **Access Control Lists (ACLs):** Restrict access for users, computers, and specific files.
- **Configuration Rule Policies:** Govern how security systems react to received data.
- **Combination SysSPs:** Combine managerial guidance and technical specifications.


## Policy Management

- **Management Needs:** Policies must be managed as they change frequently.
- **Requirements for Viability:**
	- Responsible manager
	- Schedule of reviews
	- Method for recommendations
	- Policy issuance and revision date
	- Automated policy management


## The InfoSec Blueprint

- **Definition:** Basis for design, selection, and implementation of all security policies, education and training programs, and technological controls.
- **Details:** Specifies tasks and order for accomplishment.
- **Scalability:** Should serve as a comprehensive plan for current and future information security needs.


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


## NIST Security Models

- **Key Publications:**
	- SP 800-12
	- SP 800-14
	- SP 800-18 Rev. 1
	- SP 800-26
	- SP 800-30

## NIST Special Publication 800-14

- **Key Principles:**
	- Security supports the organization's mission and is integral to sound management.
	- Security should be cost-effective; owners have responsibilities beyond their organizations.
	- Responsibilities and accountability should be explicit; security requires a comprehensive approach.
	- Security should be periodically reassessed; it's constrained by societal factors.
	- Includes thirty-three principles for securing systems.

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

## Other Sources of Security Frameworks

- Federal Agency Security Practices (FASP)
- Computer Emergency Response Team Coordination Center (CERT/CC)
- International Association of Professional Security Consultants


## Design of Security Architecture

- **Spheres of Security:** Foundation of the security framework.
- **Levels of Controls:**
	- **Management Controls:** Set direction and scope, provide detailed instructions.
	- **Operational Controls:** Address personnel and physical security, protect production inputs/outputs
- ### Security Education, Training & Awareness Program (SETA)
	- **Purpose**: SETA aims to minimize accidental security breaches through education, training, and awareness.
	- #### Components:
		1. **Security Education**:
			- Everyone should be aware of information security principles; formal degrees are not necessary for all.
			- Employees may pursue relevant courses in higher education.
		2. **Security Training**:
			- Provides detailed, hands-on instruction for secure job performance.
			- Can be customized in-house or outsourced; alternatives include professional conferences.
		3. **Awareness Program**:
			- Essential for keeping security at the forefront of employees' minds.
			- Should be simple and cost-effective; lack of implementation can increase security risks.

|                       | **Education**           | **Training**          | **Awareness**              |
| --------------------- | ----------------------- | --------------------- | -------------------------- |
| **Attribute**         | Why                     | How                   | What                       |
| **Level**             | Insight                 | Knowledge             | Information                |
| **Objective**         | Understanding           | Skill                 | Exposure                   |
| **Teaching Method**   | Theoretical instruction | Practical instruction | Media, videos, newsletters |
| **Test Measure**      | Essays                  | Problem-solving       | True/False, MCQ            |
| **Impact Time Frame** | Long-term               | Intermediate          | Short-term                 |

- ### Continuity Strategies
	- **Key Functions**:
		- **IRP**: Immediate response to incidents.
		- **DRP**: Focus on restoring systems after disasters.
		- **BCP**: Ensures ongoing operations during major disruptions.
- ### Contingency Planning Process
	1. Develop CP policy statement.
	2. Conduct business impact analysis (BIA).
	3. Identify preventive controls.
	4. Create contingency strategies.
	5. Develop contingency plans.
	6. Ensure testing and maintenance.
- ### Business Impact Analysis (BIA)
	- Evaluates potential adverse events on the organization.
	- Key Stages:
		- Identify critical business processes.
		- Set recovery priorities.
		- Assess resource requirements.
- ### Incident Response Planning
	- Focuses on identifying and responding to incidents affecting information assets.
	- **Key Components of IR Policy**:
		- Management commitment.
		- Definition of incidents.
		- Organizational structure and severity ratings.
	- **Incident Management**:
		- Detection, reaction, recovery, and assessment of incidents.
- ### Disaster Recovery & Business Continuity Planning
	- **Disaster Recovery Planning (DRP)**: Prepares for recovery after disasters.
	- **Business Continuity Planning (BCP)**: Ensures continuation of critical operations during disruptions.
	- Continuity strategies include hot, warm, and cold sites.
- ### Crisis Management
	- Actions to minimize harm during emergencies.
	- Involves training and preparation for disaster response teams.
- ### Consolidated Contingency Plan
	- Combines all contingency policies into a single document for accessibility.
- ### Law Enforcement Involvement
	- Considerations for involving law enforcement in security incidents:
		- Timing and level of agency involvement.
		- Legal implications and evidence handling.
- ### Benefits of Law Enforcement Involvement
	- Enhanced evidence processing and legal support.
	- Expertise in handling investigations and securing necessary legal documentation.

---

# Chapter 5: Risk Management


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

---

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
		- Three subsets of packet filtering firewalls:
			- Static filtering: requires that filtering rules governing how the firewall decides which packets are allowed and which are denied are developed and installed
			- Dynamic filtering: allows firewall to react to emergent event and update or create rules to deal with event
			- Stateful inspection: firewalls that keep track of each network connection between internal and external systems using a state table
	- Application Gateways
		- Frequently installed on a dedicated computer; also known as a proxy server.
		- Since a proxy server is often placed in an unsecured area of the network (e.g., DMZ), it is exposed to higher levels of risk from less trusted networks.
		- Additional filtering routers can be implemented behind the proxy server, further protecting internal systems.
	- Circuit Gateways
		- Circuit gateway firewalls operate at the transport layer.
		- Similar to filtering firewalls, they do not usually look at data traffic flowing between two networks but prevent direct connections between one network and another.
		- This is accomplished by creating tunnels connecting specific processes or systems on each side of the firewall and allowing only authorized traffic in the tunnels.
	- MAC Layer Firewalls
		- Designed to operate at the media access control layer of the OSI network model.
		- Able to consider the specific identity of a host computer in its filtering decisions.
		- MAC addresses of specific host computers are linked to access control list (ACL) entries that identify specific types of packets that can be sent to each host; all other traffic is blocked.
	- Hybrids
		- Combine elements of other types of firewalls, such as packet filtering and proxy services, or packet filtering and circuit gateways.
		- Alternately, they may consist of two separate firewall devices, each a separate firewall system, but connected to work in tandem.
- ### Categorization of Firewalls
	- #### By Generation
		1. **First generation**: Static packet filtering firewalls.
		2. **Second generation**: Application-level firewalls or proxy servers.
		3. **Third generation**: Stateful inspection firewalls.
		4. **Fourth generation**: Dynamic packet filtering firewalls, allowing only packets with particular source, destination, and port addresses to enter.
		5. **Fifth generation**: Kernel proxies, which are specialized forms working under the kernel of Windows NT.
	- #### By Structure
		- Most firewalls are appliances: stand-alone, self-contained systems
		- Commercial-grade firewall system consists of firewall application software running on general-purpose computer
		- Small office/home office (SOHO) or residential-grade firewalls, aka broadband gateways or DSL/cable modem routers, connect user's local area network or a specific computer system to Internetworking device
		- Residential-grade firewall software is installed directly on the user's system
- ### Firewall Architectures
	- Firewall devices can be configured in various network connection architectures.
	- The configuration that works best depends on three factors:
		1. Objectives of the network.
		2. The organization’s ability to develop and implement architectures.
		3. The budget available for the function.
	- Four common architectural implementations of firewalls:
		- **Packet Filtering Routers**
			- Most organizations with Internet connection have a router serving as interface to Internet
			- Many of these routers can be configured to reject packets that organization does not allow into network
			- Drawbacks include a lack of auditing and strong authentication
		- **Screened Host Firewalls**
			- Combines packet filtering router with separate, dedicated firewall such as an application proxy server
			- Allows router to prescreen packets to minimize traffic/load on internal proxy
			- Separate host is often referred to as bastion host; can be rich target for external attacks and should be very thoroughly secured
		- **Dual-Homed Firewalls**
			- Bastion host contains two network interface cards (NICs): one connected to external network, one connected to internal network
			- Implementation of this architecture often makes use of network address translation (NAT), creating another barrier to intrusion from external attackers
		- **Screened Subnet Firewalls**
			- Dominant architecture used today is the screened subnet firewall
			- Commonly consists of two or more internal bastion hosts behind packet filtering router, with each host protecting trusted network:
				- Connections from outside (untrusted network) routed through external filtering router
				- Connections from outside (untrusted network) are routed into and out of routing firewall to separate network segment known as DMZ
				- Connections into trusted internal network allowed only from DMZ bastion host servers
			- Screened subnet performs two functions:
				- Protects DMZ systems and information from outside threats
				- Protects the internal networks by limiting how external connections can gain access to internal systems
			- Another facet of DMZs: extranets
- ### Selecting the Right Firewall
	- What firewall offers the right balance between protection and cost for the organization’s needs?
	- Which features are included in the base price and which are not?
	- Ease of setup and configuration. How accessible are staff technicians who can configure the firewall?
	- Can the firewall adapt to the organization’s growing network?
	- Cost is the second most important issue.
- ### Configuring & Managing Firewalls
	- Each firewall device must have its own set of configuration rules regulating its actions.
	- Firewall policy configuration is usually complex and difficult.
	- Configuring firewall policies is both an art and a science.
	- When security rules conflict with business performance, security often loses.
- ### Best Practices
	- All traffic from the trusted network is allowed out.
	- The firewall device is never directly accessed from the public network.
	- Simple Mail Transport Protocol (SMTP) data is allowed to pass through the firewall.
	- Internet Control Message Protocol (ICMP) data is denied.
	- Telnet access to internal servers should be blocked.
	- When Web services are offered outside the firewall, HTTP traffic should be denied from reaching internal networks.
- ### Firewall Rules
	- Operate by examining data packets and performing comparison with predetermined logical rules
	- Logic based on set of guidelines most commonly referred to as firewall rules, rule base, or firewall logic
	- Most firewalls use packet header information to determine whether specific packet should be allowed or denied
- ### Content Filters
	- Content filters allow administrators to restrict access to certain content from within the network.
	- They are essentially scripts or programs restricting user access to certain networking protocols or Internet locations.
	- The primary focus is to restrict internal access to external material.
	- Commonly restrict access to non-business Web sites or deny incoming spam.
- ### Protecting Remote Connections
	- Installing Internetwork connections requires leased lines or other data channels; these connections are usually secured under formal service agreements.
	- When individuals seek to connect to the organization's network, a more flexible option must be provided.
	- Virtual Private Networks (VPNs) have become more popular due to the spread of the Internet.
- ### Remote Access
	- Unsecured dial-up connection points represent a substantial exposure to attack.
	- Attackers can use a device called a war dialer to locate connection points.
	- A war dialer is an automatic phone-dialing program that dials every number in a configured range and records the number if a modem picks up.
	- Some technologies (such as RADIUS, TACACS, and CHAP password systems) have improved the authentication process.
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
	- Kerberos provides secure third-party authentication using symmetric key encryption to validate individual users to various network resources.
	- Kerberos keeps a database containing private keys of clients and servers.
	- Consists of three interacting services:
		- Authentication Server (AS)
		- Key Distribution Center (KDC)
		- Ticket Granting Service (TGS)
- ### SEASME
	- Secure European System for Applications in a Multivendor Environment (SESAME); similar to Kerberos in that user is first authenticated to authentication server and receives token
	- Token then presented to privilege attribute server (instead of ticket granting service as in Kerberos) as proof of identity to gain privilege attribute certificate (PAC)
	- Uses public key encryption; adds additional and more sophisticated access control features; more scalable encryption systems; improved manageability; auditing features; delegation of responsibility for allowing access
## Virtual Private Networks (VPNs)
- Private and secure network connection between systems; uses data communication capability of unsecured and public network
- Securely extends organization's internal network connections to remote locations beyond trusted network
- Three VPN technologies defined:
	- Trusted VPN
	- Secure VPN
	- Hybrid VPN (combines trusted and secure)
- VPN must accomplish:
	- Encapsulation of incoming and outgoing data
	- Encryption of incoming and outgoing data
	- Authentication of remote computer and (perhaps) remote user as well
- ### Modes
	- **Transport Mode**
		- Data within IP packet is encrypted, but header information is not
		- Allows user to establish secure link directly with remote host, encrypting only data contents of packet
		- Two popular uses:
			- End-to-end transport of encrypted data
			- Remote access worker connects to office network over Internet by connecting to a VPN server on the perimeter
	- **Tunnel Mode**
		- Organization establishes two perimeter tunnel servers
		- These servers act as encryption points, encrypting all traffic that will traverse unsecured network
		- Primary benefit to this model is that an intercepted packet reveals nothing about true destination system
		- Example of tunnel mode VPN: Microsoft's Internet Security and Acceleration (ISA) Server
---

| Chapter<br>Number | Chapter<br>Name                       | Status             |
| ----------------- | ------------------------------------- | ------------------ |
| 4                 | Planning for Security                 | :white_check_mark: |
| 6                 | Security Technology: Firewalls & VPNs | :white_check_mark: |
| 7                 | Security Technology: IDPS             | :white_check_mark: |
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

|                       | **Education**           | **Training**          | **Awareness**              |
| --------------------- | ----------------------- | --------------------- | -------------------------- |
| **Attribute**         | Why                     | How                   | What                       |
| **Level**             | Insight                 | Knowledge             | Information                |
| **Objective**         | Understanding           | Skill                 | Exposure                   |
| **Teaching Method**   | Theoretical instruction | Practical instruction | Media, videos, newsletters |
| **Test Measure**      | Essays                  | Problem-solving       | True/False, MCQ            |
| **Impact Time Frame** | Long-term               | Intermediate          | Short-term                 |

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

---

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
		- Three subsets of packet filtering firewalls:
			- Static filtering: requires that filtering rules governing how the firewall decides which packets are allowed and which are denied are developed and installed
			- Dynamic filtering: allows firewall to react to emergent event and update or create rules to deal with event
			- Stateful inspection: firewalls that keep track of each network connection between internal and external systems using a state table
	- Application Gateways
		- Frequently installed on a dedicated computer; also known as a proxy server.
		- Since a proxy server is often placed in an unsecured area of the network (e.g., DMZ), it is exposed to higher levels of risk from less trusted networks.
		- Additional filtering routers can be implemented behind the proxy server, further protecting internal systems.
	- Circuit Gateways
		- Circuit gateway firewalls operate at the transport layer.
		- Similar to filtering firewalls, they do not usually look at data traffic flowing between two networks but prevent direct connections between one network and another.
		- This is accomplished by creating tunnels connecting specific processes or systems on each side of the firewall and allowing only authorized traffic in the tunnels.
	- MAC Layer Firewalls
		- Designed to operate at the media access control layer of the OSI network model.
		- Able to consider the specific identity of a host computer in its filtering decisions.
		- MAC addresses of specific host computers are linked to access control list (ACL) entries that identify specific types of packets that can be sent to each host; all other traffic is blocked.
	- Hybrids
		- Combine elements of other types of firewalls, such as packet filtering and proxy services, or packet filtering and circuit gateways.
		- Alternately, they may consist of two separate firewall devices, each a separate firewall system, but connected to work in tandem.
- ### Categorization of Firewalls
	- #### By Generation
		1. **First generation**: Static packet filtering firewalls.
		2. **Second generation**: Application-level firewalls or proxy servers.
		3. **Third generation**: Stateful inspection firewalls.
		4. **Fourth generation**: Dynamic packet filtering firewalls, allowing only packets with particular source, destination, and port addresses to enter.
		5. **Fifth generation**: Kernel proxies, which are specialized forms working under the kernel of Windows NT.
	- #### By Structure
		- Most firewalls are appliances: stand-alone, self-contained systems
		- Commercial-grade firewall system consists of firewall application software running on general-purpose computer
		- Small office/home office (SOHO) or residential-grade firewalls, aka broadband gateways or DSL/cable modem routers, connect user's local area network or a specific computer system to Internetworking device
		- Residential-grade firewall software is installed directly on the user's system
- ### Firewall Architectures
	- Firewall devices can be configured in various network connection architectures.
	- The configuration that works best depends on three factors:
		1. Objectives of the network.
		2. The organization’s ability to develop and implement architectures.
		3. The budget available for the function.
	- Four common architectural implementations of firewalls:
		- **Packet Filtering Routers**
			- Most organizations with Internet connection have a router serving as interface to Internet
			- Many of these routers can be configured to reject packets that organization does not allow into network
			- Drawbacks include a lack of auditing and strong authentication
		- **Screened Host Firewalls**
			- Combines packet filtering router with separate, dedicated firewall such as an application proxy server
			- Allows router to prescreen packets to minimize traffic/load on internal proxy
			- Separate host is often referred to as bastion host; can be rich target for external attacks and should be very thoroughly secured
		- **Dual-Homed Firewalls**
			- Bastion host contains two network interface cards (NICs): one connected to external network, one connected to internal network
			- Implementation of this architecture often makes use of network address translation (NAT), creating another barrier to intrusion from external attackers
		- **Screened Subnet Firewalls**
			- Dominant architecture used today is the screened subnet firewall
			- Commonly consists of two or more internal bastion hosts behind packet filtering router, with each host protecting trusted network:
				- Connections from outside (untrusted network) routed through external filtering router
				- Connections from outside (untrusted network) are routed into and out of routing firewall to separate network segment known as DMZ
				- Connections into trusted internal network allowed only from DMZ bastion host servers
			- Screened subnet performs two functions:
				- Protects DMZ systems and information from outside threats
				- Protects the internal networks by limiting how external connections can gain access to internal systems
			- Another facet of DMZs: extranets
- ### Selecting the Right Firewall
	- What firewall offers the right balance between protection and cost for the organization’s needs?
	- Which features are included in the base price and which are not?
	- Ease of setup and configuration. How accessible are staff technicians who can configure the firewall?
	- Can the firewall adapt to the organization’s growing network?
	- Cost is the second most important issue.
- ### Configuring & Managing Firewalls
	- Each firewall device must have its own set of configuration rules regulating its actions.
	- Firewall policy configuration is usually complex and difficult.
	- Configuring firewall policies is both an art and a science.
	- When security rules conflict with business performance, security often loses.
- ### Best Practices
	- All traffic from the trusted network is allowed out.
	- The firewall device is never directly accessed from the public network.
	- Simple Mail Transport Protocol (SMTP) data is allowed to pass through the firewall.
	- Internet Control Message Protocol (ICMP) data is denied.
	- Telnet access to internal servers should be blocked.
	- When Web services are offered outside the firewall, HTTP traffic should be denied from reaching internal networks.
- ### Firewall Rules
	- Operate by examining data packets and performing comparison with predetermined logical rules
	- Logic based on set of guidelines most commonly referred to as firewall rules, rule base, or firewall logic
	- Most firewalls use packet header information to determine whether specific packet should be allowed or denied
- ### Content Filters
	- Content filters allow administrators to restrict access to certain content from within the network.
	- They are essentially scripts or programs restricting user access to certain networking protocols or Internet locations.
	- The primary focus is to restrict internal access to external material.
	- Commonly restrict access to non-business Web sites or deny incoming spam.
- ### Protecting Remote Connections
	- Installing Internetwork connections requires leased lines or other data channels; these connections are usually secured under formal service agreements.
	- When individuals seek to connect to the organization's network, a more flexible option must be provided.
	- Virtual Private Networks (VPNs) have become more popular due to the spread of the Internet.
- ### Remote Access
	- Unsecured dial-up connection points represent a substantial exposure to attack.
	- Attackers can use a device called a war dialer to locate connection points.
	- A war dialer is an automatic phone-dialing program that dials every number in a configured range and records the number if a modem picks up.
	- Some technologies (such as RADIUS, TACACS, and CHAP password systems) have improved the authentication process.
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
	- Kerberos provides secure third-party authentication using symmetric key encryption to validate individual users to various network resources.
	- Kerberos keeps a database containing private keys of clients and servers.
	- Consists of three interacting services:
		- Authentication Server (AS)
		- Key Distribution Center (KDC)
		- Ticket Granting Service (TGS)
- ### SEASME
	- Secure European System for Applications in a Multivendor Environment (SESAME); similar to Kerberos in that user is first authenticated to authentication server and receives token
	- Token then presented to privilege attribute server (instead of ticket granting service as in Kerberos) as proof of identity to gain privilege attribute certificate (PAC)
	- Uses public key encryption; adds additional and more sophisticated access control features; more scalable encryption systems; improved manageability; auditing features; delegation of responsibility for allowing access
## Virtual Private Networks (VPNs)
- Private and secure network connection between systems; uses data communication capability of unsecured and public network
- Securely extends organization's internal network connections to remote locations beyond trusted network
- Three VPN technologies defined:
	- Trusted VPN
	- Secure VPN
	- Hybrid VPN (combines trusted and secure)
- VPN must accomplish:
	- Encapsulation of incoming and outgoing data
	- Encryption of incoming and outgoing data
	- Authentication of remote computer and (perhaps) remote user as well
- ### Modes
	- **Transport Mode**
		- Data within IP packet is encrypted, but header information is not
		- Allows user to establish secure link directly with remote host, encrypting only data contents of packet
		- Two popular uses:
			- End-to-end transport of encrypted data
			- Remote access worker connects to office network over Internet by connecting to a VPN server on the perimeter
	- **Tunnel Mode**
		- Organization establishes two perimeter tunnel servers
		- These servers act as encryption points, encrypting all traffic that will traverse unsecured network
		- Primary benefit to this model is that an intercepted packet reveals nothing about true destination system
		- Example of tunnel mode VPN: Microsoft's Internet Security and Acceleration (ISA) Server
# Chapter 7: Security Technology: IDPS
- ### Introduction
	- An intrusion occurs when a hacker attempts to gain entry into or disrupt the normal operations of an organization's information systems.
	- Intrusion prevention consists of activities that deter an intrusion.
	- Intrusion detection consists of procedures and systems that identify system intrusions.
	- Intrusion reaction encompasses actions an organization undertakes when an intrusion event is detected.
	- Intrusion correction activities involve the complete restoration of operations to a normal state and seek to identify the source and method of intrusion.
	- Intrusion detection systems detect a violation of their configuration and activate alarms.
	- Many IDPSs enable administrators to configure systems to notify them directly of trouble via e-mail or pagers.
	- Systems can also be configured to notify an external security service organization of a “break-in.”
- ### Terminology
	- Alarm clustering and compaction
	- Alarm filtering
	- Alert or alarm
	- Confidence value
	- Evasion
	- False attack stimulus
	- False negative and false positive
	- Noise
	- Site policy
	- Site policy awareness
	- True attack stimulus
	- Tuning
- ### Why use an IDPS
	- **Intrusion detection:**
		- Primary purpose is to identify and report an intrusion.
		- Can quickly contain an attack and prevent/mitigate loss or damage.
		- Detects and deals with preambles to attacks.
	- Data collection allows the organization to examine what happened after an intrusion and why.
	- Serves as a deterrent by increasing the fear of detection.
	- Can help management with quality assurance and continuous improvement.
- ### Types
	- IDPSs operate as network-based or host-based systems.
	- Network-based IDPS is focused on protecting network information assets.
		- Wireless IDPS: focuses on wireless networks.
		- Network behavior analysis IDPS: examines traffic flow on a network in an attempt to recognize abnormal patterns.
		- Resides on a computer or an appliance connected to a segment of an organization's network; looks for indications of attacks.
		- When examining packets, a NIDPS looks for attack patterns within network traffic.
		- Installed at specific places in the network where it can monitor traffic going into and out of a particular network segment.
		- To determine whether an attack has occurred or is underway, compare measured activity to known signatures in the knowledge base.
		- This is done by using a special implementation of the TCP/IP stack:
			- In the process of protocol stack verification, NIDPSs look for invalid data packets.
			- In the application protocol verification, higher-order protocols are examined for unexpected packet behavior or improper use.
		- **Advantages of NIDPSs:**
			- Good network design and placement can enable an organization to monitor a large network with few devices.
			- NIDPSs are usually passive and can be deployed into existing networks with little disruption to normal operations.
			- NIDPSs are not usually susceptible to direct attack and may not be detectable by attackers.
		- **Disadvantages of NIDPSs:**
			- Can become overwhelmed by network volume and fail to recognize attacks.
			- Require access to all traffic to be monitored.
			- Cannot analyze encrypted packets.
			- Cannot reliably ascertain if an attack was successful or not.
			- Some forms of attack are not easily discerned by NIDPSs, specifically those involving fragmented packets.
		- **Wireless NIDPS:**
			- Monitors and analyzes wireless network traffic.
			- Issues associated with it include physical security, sensor range, access point and wireless switch locations, wired network connections, and cost.
	- **Network behavior analysis systems:**
		- Identify problems related to the flow of traffic.
		- Types of events commonly detected include denial-of-service (DoS) attacks, scanning, worms, unexpected application services, and policy violations.
		- Offer intrusion prevention capabilities that are passive, inline, and both passive and inline.
	- **Host-based IDPS (HIDPS):**
		- Resides on a particular computer or server (host) and monitors activity only on that system.
		- Benchmarks and monitors the status of key system files and detects when an intruder creates, modifies, or deletes files.
		- Advantage over NIDPS: can access encrypted information traveling over the network and make decisions about potential or actual attacks.
		- Most HIDPSs work on the principle of configuration or change management.
		- **Advantages of HIDPSs:**
			- Can detect local events on host systems and detect attacks that may elude a network-based IDPS.
			- Functions on the host system, where encrypted traffic will have been decrypted and is available for processing.
			- Not affected by the use of switched network protocols.
			- Can detect inconsistencies in how applications and systems programs were used by examining records stored in audit logs.
		- **Disadvantages of HIDPSs:**
			- Pose more management issues.
			- Vulnerable both to direct attacks and attacks against the host operating system.
			- Does not detect multi-host scanning nor scanning of non-host network devices.
			- Susceptible to some DoS attacks.
			- Can use large amounts of disk space.
			- Can inflict a performance overhead on its host systems.
	- **Signature-based detection:**
		- Matches known signatures.
		- Examines network traffic in search of patterns that distinct signatures.
		- Widely used because many attacks have clear signatures.
		- Problem with this approach is that new attack patterns must continually be added to the IDPS's database of signatures.
		- Slow, methodical attacks involving multiple events might escape detection.
	- **Anomaly-based detection:**
		- Anomaly-based detection (or behavior-based detection) collects statistical summaries by observing traffic known to be normal.
		- When measured activity is outside baseline parameters or clipping level, IDPS sends an alert to the administrator.
		- IDPS can detect new types of attacks.
		- Requires much more overhead and processing capacity than signature-based detection.
		- May generate many false positives.
	- **Stateful protocol analysis:**
		- SPA: process of comparing known normal/benign protocol profiles against observed traffic.
		- Stores and uses relevant data detected in a session to identify intrusions involving multiple requests/responses; allows IDPS to better detect specialized, multi-session attacks (also called deep packet inspection).
		- Drawbacks: analytical complexity; heavy processing overhead; may fail to detect intrusion unless the protocol violates fundamental behavior; may interfere with normal operations of the protocol.
	- **Log file monitors:**
		- Log file monitor (LFM) similar to NIDPS.
		- Reviews log files generated by servers, network devices, and even other IDPSs for patterns and signatures.
		- Patterns that signify an attack may be much easier to identify when the entire network and its systems are viewed as a whole.
		- Requires considerable resources since it involves the collection, movement, storage, and analysis of large quantities of log data.
- ### Detection Methods
- merged w above
- ### Response Behavior
	- IDPS response to external stimulation depends on the configuration and function; many response options are available.
	- IDPS responses can be classified as active or passive:
		- Active response: collecting additional information about the intrusion, modifying the network environment, taking action against the intrusion.
		- Passive response: setting off alarms or notifications, collecting passive data through SNMP traps.
	- Many IDPSs can generate routine reports and other detailed documents.
	- Failsafe features protect IDPS from being circumvented.
- ### Approaches & Products
	- **Technical and policy considerations:**
		- What is your systems environment?
		- What are your security goals and objectives?
		- What is your existing security policy?
	- **Organizational requirements and constraints:**
		- What requirements are levied from outside the organization?
		- What are your organization's resource constraints?
	- **IDPS product features and quality:**
		- Is the product sufficiently scalable for your environment?
		- How has the product been tested?
		- What user level of expertise is targeted by the product?
		- Is the product designed to evolve as the organization grows?
		- What are the support provisions for the product?
- ### Strengths & Limitations
	- IDPSs perform the following functions well:
		- Monitoring and analysis of system events and user behaviors.
		- Testing security states of system configurations.
		- Baselining security state of systems and tracking changes.
		- Recognizing patterns of system events corresponding to known attacks.
		- Recognizing activity patterns that vary from normal activity.
		- Managing OS audit and logging mechanisms and data they generate.
		- Alerting appropriate staff when attacks are detected.
		- Measuring enforcement of security policies encoded in the analysis engine.
		- Providing default information on security policies.
		- Allowing non-security experts to perform important security monitoring functions.
	- IDPSs have weaknesses and vulnerabilities:
		- Can produce false alerts and negatives.
		- Configuring and managing IDPSs can be complex.
		- IDPSs do not address all risks.
		- Not all IDPSs are designed to detect every type of intrusion.
		- Effectiveness depends on the level of experience and knowledge of the individuals managing the systems.
- ### Deployment & Implementation
	- **Control Strategies**:
		- **Centralized**: Central management of all IDPS functions.
		- **Fully Distributed**: Control functions applied locally at each IDPS component.
		- **Partially Distributed**: Combines centralized and local response; local agents handle immediate threats, reporting to a central hub for broad threat analysis.
	- **Deployment Considerations**:
		- Careful component placement to avoid performance impact.
		- NIDPS (Network-based) and HIDPS (Host-based) IDPS can be deployed together to cover both individual systems and networks.
	- **Deploying Network-Based IDPSs (NIDPS)**:
		- Recommended locations:
			- **Location 1**: Behind external firewalls in the DMZ.
			- **Location 2**: Outside external firewalls.
			- **Location 3**: On major network backbones.
			- **Location 4**: On critical subnets.
	- **Deploying Host-Based IDPSs (HIDPS)**:
	- Implement on critical systems first, expanding to cover additional systems based on desired security coverage.
- ### Measuring the Effectiveness of IDPS
	- **Evaluation Metrics**:
		- Key metrics include thresholds, blacklists/whitelists, alert configurations, and code review.
		- Vendors often include testing mechanisms to validate IDPS performance.
	- **Testing IDPSs**:
		- Administrators can:
			- Replay real virus or worm packets.
			- Simulate incomplete TCP/IP sessions.
			- Conduct tests on hardened systems to replicate realistic threats.
- ### Honeypots, Honeynets & Padded Cell Systems
	- **Honeypots**: Decoy systems designed to divert attackers from critical systems.
	- **Honeynets**: Networks of honeypots connected to gather attacker data.
	- **Padded Cell Systems**: Protected honeypots that redirect attackers to a controlled environment when detected.
	- **Advantages**:
		- Divert attackers from valuable resources.
		- Provide response time to administrators.
		- Capture detailed data on attacker actions.
		- Effective for detecting insider threats.
	- **Disadvantages**:
		- Legal concerns and unclear implications.
		- High maintenance and expertise required.
		- Potential to provoke more aggressive attacks.
- ### Trap & Trace Systems
	- **Trap-and-Trace Techniques**: Detect and trace intrusions using a combination of honeypots and alarms.
	- **Legal Considerations**:
		- **Enticement**: Legally attracting attackers (e.g., with sensitive-looking data).
		- **Entrapment**: Illegally luring someone into a crime.
- ### Active Intrusion Prevention
	- **Countermeasures**:
		- Tools like **LaBrea** simulate live systems by holding attacker connections to deter or analyze attacker behavior.
- ### Scanning & Analysis Tools
	- **Footprinting**: Collecting publicly available information on a target.
	- **Fingerprinting**: Surveying target networks to identify services, operating systems, and vulnerabilities.
- ### Port Scanners
	- Tools to identify active devices and services on a network, aiding attackers and defenders in discovering networked assets and potential weaknesses.
- ### Firewall Analysis Tools
	- **Purpose**: Automated tools to analyze firewall configurations and assist in identifying security gaps.
	- **Usage Considerations**:
		- Defensive intent is key; understanding attack methods can help close security gaps effectively.
- ### OS Detection Tools
	- **Purpose**: Identify a target system's OS to determine specific vulnerabilities.
	- **Common Use**: Attackers leverage OS detection to plan targeted attacks, while defenders use it to address system-specific weaknesses.
- ### Vulnerability Scanners
	- **Active Scanners**: Generate network traffic to identify vulnerabilities directly.
	- **Passive Scanners**: Monitor network traffic to identify vulnerable server and client software without active probing.
	- **Benefits**: Detect client-side vulnerabilities often missed by active scanners.
- ### Packet Sniffers
	- **Function**: Capture and analyze network traffic.
	- **Legal Usage**: Must be used on authorized networks, with consent from network owners and data creators.
- ### Wireless Security Tools
	- **Purpose**: Essential for assessing risks on wireless networks, which are often overlooked in security planning.
	- **Toolkit Requirements**:
		- Wireless traffic sniffing.
		- Scanning wireless hosts.
		- Assessing the confidentiality level of wireless networks.
---
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

---
# Chapter 9: Physical Security
---
# Chapter 10: Implementing Information Security
---
# Chapter 11: Security & Personnel
---
# Chapter 12: Information Security Maintenance