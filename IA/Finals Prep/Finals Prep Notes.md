| Chapter<br>Number | Chapter<br>Name                       | Status             | Second Pass<br>Ignore this |
| ----------------- | ------------------------------------- | ------------------ | -------------------------- |
| 4                 | Planning for Security                 | :white_check_mark: | :warning:                  |
| 5                 | Risk Management                       | :white_check_mark: | :warning:                  |
| 6                 | Security Technology: Firewalls & VPNs | :white_check_mark: | :warning:                  |
| 7                 | Security Technology: IDPS             | :white_check_mark: | :warning:                  |
| 8                 | Cryptography                          | :white_check_mark: | :warning:                  |
| 9                 | Physical Security                     | :white_check_mark: | :warning:                  |
| 10                | Implementing Information Security     | :white_check_mark: | :warning:                  |
| 11                | Security & Personnel                  | :white_check_mark: | :warning:                  |
| 12                | Information Security Maintenance      | :white_check_mark: | :warning:                  |

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

| **ISO 27000 Series Standard** | **Title or Topic**                                                                        | **Comment**                                                     |
| ----------------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------------------- |
| 27000:2014                    | Series Overview and Terminology                                                           | Defines terminology and vocabulary for the series               |
| 27001:2013                    | Information Security Management System Specification                                      | Drawn from B57799:2                                             |
| 27002:2013                    | Code of Practice for Information Security Management                                      | Renamed from ISO/IEC 17799; drawn from B57799:1                 |
| 27003:2010                    | Information Security Management Systems Implementation Guidelines                         | Guidelines for project planning for implementing ISMS           |
| 27004:2009                    | Information Security Measurements and Metrics                                             | Performance measures and metrics for management decisions       |
| 27005-2011                    | ISMS Risk Management                                                                      | Supports 27001 without recommending a specific risk method      |
| 27006-2011                    | Requirements for Bodies Providing Audit and Certification of an ISMS                      | Supports accreditation of certification bodies                  |
| 27007:2011                    | Guideline for ISMS Auditing                                                               | Focuses on management systems                                   |
| 27008:2011                    | Guideline for Information Security Auditing                                               | Focuses on security controls                                    |
| 27013:2012                    | Guideline on the Integrated Implementation of ISO/IEC 20000-1 and ISO/IEC 27001           | Supports implementing an integrated dual management system      |
| 27014:2013                    | Information Security Governance Framework                                                 | Guidance on evaluating and monitoring information security      |
| 27015:2012                    | Information Security Management Guidelines for Financial Services                         | Guidance for financial services organizations                   |
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
	- ### Other Sources of Security Frameworks
		- Federal Agency Security Practices (FASP)
		- Computer Emergency Response Team Coordination Center (CERT/CC)
		- International Association of Professional Security Consultants


## Design of Security Architecture

- **Spheres of Security:** Foundation of the security framework.
- **Levels of Controls:**
	- **Management Controls:** Set direction and scope, provide detailed instructions.
	- **Operational Controls:** Address personnel and physical security, protect production inputs/outputs
	- **Technical Controls:** Tactical & Technical Implementations related to designing and integrating security in the org
- **Defense in Depth:**
	- Implementation of security in layers
	- Requires that organization establish multiple layers of security controls & safeguards
- **Security Perimeter:**
	- Does not protect against internal attacks from employee threats or onsite physical threats

## Security Education, Training & Awareness Program (SETA)
- **Purpose**: SETA aims to minimize accidental security breaches through education, training, and awareness.
- ### Components:
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
- ### Contingency Planning Process (Sessional 2 7-Marks)
	1. Develop CP policy statement.
	2. Conduct business impact analysis (BIA).
	3. Identify preventive controls.
	4. Create contingency strategies.
	5. Develop contingency plans.
	6. Ensure Plan testing, training & exercises
	7. Ensure Plan Maintenance
	- #### Contingency Plan sections to contain
		1. Introductory statement of philosophical perspective
		2. Statement of scope/purpose
		3. Call for periodic risk assessment/BIA
		4. Specification of CP's major components
		5. Call for/guidance in the selection of recovery options
		6. Requirement to test the various plans regularly
		7. Identification of key regulations and standards
		8. Identification of key people responsible for CP operations
		9. Challenge to the organization members for support
		10. Administrative information
- ### Business Impact Analysis (BIA)
	- Evaluates potential adverse events on the organization.
	- Assumes security controls have been bypassed | failed | been proven ineffective | breached via an attack
	- Have to consider scope, plan, balance, knowledge of objectives & follow ups
	- Key Stages:
		- Identify critical business processes.
		- Set recovery priorities.
		- Assess resource requirements.
	- ### BIA Timeline
		- **Key Components**
			- **RPO** -> Recovery Point Objective
				- Point in time to recover state of system to
			- **RTO** -> Recovery Time Objective
				- Max acceptable time that a system can be down
			- **WRT** -> Work Recovery Time
				- Max tolerable time to verify systems are online and operational
			- **MTD** ->
				- Max duration before damage is inevitable due to inoperation
		- **Timeline**
			- A last backup of the system state is known as **RPO**
			- After an incident the goal is to restore the RPO backup and validate all systems nominal before resumption of normal ops
			- Half of MTD is reserved for both RTO and WRT
## Incident Response Planning (IRP)
- **Incident response planning** includes the identification, classification, and response to an incident.
- Attacks are classified as incidents if they:
    - Are directed against information assets
    - Have a realistic chance of success
    - Could threaten the confidentiality, integrity, or availability of information resources
- Incident response (IR) is more reactive than proactive, with the exception of the planning that must occur to prepare IR teams to be ready to react to an incident.
- **Incident response policy** identifies the following key components:
    - Statement of management commitment
    - Purpose/objectives of the policy
    - Scope of the policy
    - Definition of InfoSec incidents and related terms
    - Organizational structure
    - Prioritization or severity ratings of incidents
    - Performance measures
    - Reporting and contact forms

| **Section**                         | **Details**                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ----------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Incident Planning**               | - **Predefined responses** enable the organization to react quickly and effectively to the detected incident if:<br>- The organization has an IR team <br>- The organization can detect the incident <br>- **IR team** consists of individuals needed to handle systems as the incident takes place.                                                                                                                                                              |
| **Incident Response Plan**          | - **Format and content** <br>- **Storage** <br>- **Testing**                                                                                                                                                                                                                                                                                                                                                                                                      |
| **Incident Detection**              | - The most common occurrence is a complaint about technology support, often delivered to the help desk.<br>- Careful training is needed to quickly identify and classify an incident.<br>- Once the incident is properly identified, the organization can respond.<br>- Incident indicators vary.                                                                                                                                                                 |
| **Incident Reaction**               | - **Incident reaction** consists of actions that guide the organization to stop the incident, mitigate its impact, and provide information for recovery.<br>- **Actions that must occur quickly:** - Notification of key personnel - Documentation of the incident                                                                                                                                                                                                |
| **Incident Containment Strategies** | - The containment of the incident's scope or impact is the first priority. The organization must then determine which information systems are affected.<br>- The organization can stop the incident and attempt to recover control through a number of strategies.                                                                                                                                                                                                |
| **Incident Recovery**               | - Once the incident has been contained and control of systems regained, the next stage is recovery.<br>- The first task is to identify human resources needed and launch them into action.<br>- The full extent of the damage must be assessed.<br>- The organization repairs vulnerabilities, addresses any shortcomings in safeguards, and restores data and services of the systems.                                                                           |
| **Damage Assessment**               | - Several sources of information on damage can be used, including: <br>- System logs <br>- Intrusion detection logs <br>- Configuration logs and documents <br>- Documentation from incident response <br>- Results of detailed assessments of systems and data storage <br>- Computer evidence must be carefully collected, documented, and maintained to be usable in formal or informal proceedings.<br>- Individuals who assess damage need special training. |
| **Automated Response**              | - New systems can respond to incident threats autonomously.<br>- Downsides of current automated response systems may outweigh the benefits, including: <br>- Legal liabilities of a counterattack <br>- Ethical issues                                                                                                                                                                                                                                                    |

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
## Classic Risk Analysis Calculations

Some IT security certification exams test a simple process for:

- **Computing probable losses**
- **Computing how countermeasures will alter the likelihood of losses**
- **Deciding whether those countermeasures produce benefits that exceed their costs**
- ### Related Terminologies
	- **Asset Value**
	- **Exposure Factor**
	- **Single Loss Expectancy (SLE)**
	- **Annual Rate of Occurrence (ARO)**
	- **Annual Loss Expectancy (ALE)**
	- **Countermeasure Impact**
	- **Annualized Countermeasure Cost (ACC) and Net Value**
- ### Example
	- **Scenario**:
		- There is an IT server valued at **$100,000**. If an attack occurs, **80%** of the asset is exposed.
		- The attack is likely to happen once in two years.
		- Now after analysis, there are two possible countermeasures (A and B):
			1. **Countermeasure A**: Reduces the exposure by **75%**, but the occurrence rate remains the same. It will cost **$17,000** per year.
			2. **Countermeasure B**: Reduces the occurrence to once in **4 years**, keeping the exposure rate the same. It will cost **$4,000** per year.
		- **Question**: Which countermeasure is better, A or B?
- ### Solution:
## Problems with Classic Risk Analysis
1. **Uneven Multiyear Cash Flows**:
	Issues arise with both attack and defense costs over multiple years, especially in terms of ROI (Return on Investment), NPV (Net Present Value), and IRR (Internal Rate of Return).
2. **Total Cost of Incident**:
	Classic analysis assumes that losses result only from asset loss. In many cases, losses are from factors like personal identification theft or data breach, rather than direct asset damage.
	**Important**: Must compute the total cost of an incident, including repairs, lawsuits, and other factors.
3. **Many-to-Many Relationships**:
	Classic models often assume one countermeasure protects one resource, which is not always true. For example, a firewall may protect multiple resources, and a server may be secured by multiple countermeasures.
4. **Difficulty in Computing Annualized Rates of Occurrence**:
	There is often no reliable way to estimate the occurrence rate of some risks, making it a significant issue in classic risk analysis.
5. **Problems with "Hard-Headed Thinking"**:
	Security benefits are hard to quantify. If only "hard numbers" are considered, it can lead to under-investment in security.

## Risk Management Components
1. **Risk Identification**
	- Identify, inventory, and categorize assets.
	- Classify, value, and prioritize assets.
	- Identify and prioritize threats.
	- Specify asset vulnerabilities.
2. **Risk Assessment**
	- Determine loss frequency.
	- Evaluate loss magnitude.
	- Calculate risk.
	- Assess risk acceptability.
3. **Risk Control**
	- Select control strategies.
	- Justify controls.
	- Implement, monitor, and assess controls.

## The Roles of the Communities of Interest
- **Information Security, Management, Users, and IT**: All must collaborate.
- **Responsibilities**:
	- Evaluating the risk controls.
	- Determining cost-effective control options.
	- Acquiring/installing needed controls.
	- Ensuring effectiveness of controls.

## Risk Appetite and Residual Risk
- **Risk Appetite**: Defines the level of risk an organization is willing to accept, balancing security with accessibility.
- **Residual Risk**: The risk that remains after controls are applied. The goal is to bring residual risk in line with the organization's risk appetite.

## Risk Facing an Information Asset's Value
- **Residual Risk**: The risk not covered by safeguards.
- **Amount of vulnerability** reduced by safeguards.
- **Amount of threat** reduced by safeguards.
- **Amount of asset value** protected by safeguards.

## Risk Identification Process
1. **Plan & Organize the Process**:
	- Form a team from all affected groups.
	- Set periodic deliverables, reviews, and presentations.
2. **Identify, Inventory, and Categorize Assets**:
	- Start with identifying assets, including people, procedures, data, software, hardware, and networking.
	- Categorize assets based on their type.
3. **Classify, Value, and Prioritize Information Assets**:
	- Classification schemes may include confidential, internal, and public data.
	- Prioritize assets based on criticality to business success, revenue, and potential damage if lost.

## Asset Categorization
- **People**: Employees and non-employees.
- **Procedures**: Can either expose valuable knowledge or be sensitive.
- **Data**: Includes management and protection of information.
- **Software**: Applications, OS, and security components.
- **Hardware**: System devices, peripherals, and security controls.

## Identifying and Prioritizing Threats
- Assess which threats pose the greatest danger to assets.
- Consider the costs of recovery and prevention of attacks.

## Specifying Asset Vulnerabilities
- **Vulnerabilities**: Specific avenues threat agents can exploit.
- Involve brainstorming sessions with diverse organizational backgrounds.

## Risk Assessment
1. **Plan & Organize the Process**
2. **Determine Loss Frequency**: Likelihood of an attack occurring.
3. **Evaluate Loss Magnitude**: How much of an asset can be lost.
4. **Calculate Risk**: Risk = Loss Frequency x Loss Magnitude.
5. **Assess Risk Acceptability**: Evaluate residual risk against the risk appetite.

## Risk Assessment Example:

<Placeholder for Loss Frequency, Loss Magnitude, Risk Calculation>

## The FAIR Approach to Risk Assessment
1. Identify scenario components.
2. Evaluate loss event frequency.
3. Evaluate probable loss magnitude.
4. Derive and articulate risk.

## Risk Control Strategies
- **Defense**: Prevent exploitation of vulnerabilities.
- **Transfer**: Shift the risk to other assets or organizations.
- **Mitigate**: Reduce the impact of attacks.
- **Acceptance**: Accept the risk if the cost of mitigation is too high.
- **Termination**: Avoid business activities that introduce uncontrollable risks.

## Selecting a Risk Control Strategy
- Consider asset value, threat level, and potential loss.
- Rules of thumb for selecting a strategy:
	- When a vulnerability exists.
	- When the cost of exploitation is less than the potential gain.

## Justifying Controls
- Estimate the costs and benefits of a proposed control.
- Compare the **Annualized Loss Expectancy (ALE)** before and after implementing the control.

## **Cost-Benefit Analysis (CBA)**
- **CBA = ALE(prior) - ALE(post) - ACS**
	- **ALE(prior)**: Pre-implementation annualized loss expectancy.
	- **ALE(post)**: Post-implementation annualized loss expectancy.
	- **ACS**: Annualized cost of safeguard.
	- ### **Cost-Benefit Analysis (CBA) Formula**:
		- CBA=ALE(prior)−ALE(post)−Annualized Cost of Safeguard (ACS)\text{CBA} = \text{ALE(prior)} - \text{ALE(post)} - \text{Annualized Cost of Safeguard (ACS)}

## Implementation, Monitoring, and Assessment of Risk Controls
- **Implementation**: Put the control strategy into action.
- **Monitoring**: Continuously assess the effectiveness of the controls.
- **Ongoing Assessment**: Adjust controls as needed to reduce residual risk.

## Quantitative vs Qualitative Risk Control Practices
- **Quantitative**: Uses actual values or estimates to assess risk.
- **Qualitative**: Relies on non-numerical measures or scales for evaluation.

## Benchmarking and Best Practices
- **Benchmarking**: Study practices from other organizations.
- **Best Practices**: Apply superior methods for information protection.
- **Challenges**: No two organizations are identical, and best practices evolve over time.

## Other Feasibility Studies
1. **Organizational Feasibility**: Assesses the fit of IS alternatives with organizational goals.
2. **Operational Feasibility**: Assesses user and management support.
3. **Technical Feasibility**: Assesses the technical capacity for implementing controls.
4. **Political Feasibility**: Evaluates consensus and relationships among stakeholders.

## Recommended Risk Control Practices
- Justify the budget for protecting critical assets.
- Select balanced controls to protect multiple asset-threat pairs.

## Documenting Results
- Document the chosen control strategy for each information asset-threat pair.
- Action plans can be documented for each asset-vulnerability pair.

## The NIST Risk Management Framework
- **Framing Risk**: Understand the overall risk context.
- **Assessing Risk**: Evaluate threats and vulnerabilities.
- **Responding to Risk**: Implement appropriate control measures.
- **Monitoring Risk**: Continuously review and update risk management processes.

## Review Questions
1. **What is risk management? Why is the identification of risks, by listing assets and their vulnerabilities, so important to the risk management process?**
	- **Risk management** is the process of identifying, assessing, and controlling risks to minimize potential negative impacts on an organization's assets. The identification of risks by listing assets and their vulnerabilities is critical because it allows an organization to prioritize its efforts. Understanding which assets are most valuable and vulnerable helps in allocating resources effectively to mitigate risks.
2. **According to Sun Tzu, what two key understandings must you achieve to be successful in battle?**
	- Sun Tzu emphasized understanding both **yourself** and **your enemy**. This translates into knowing your own strengths and weaknesses, as well as understanding the threats and challenges posed by external forces.
3. **Who is responsible for risk management in an organization? Which community of interest usually takes the lead in information security risk management?**
	- Responsibility for risk management is shared across multiple levels of the organization, but **information security teams** usually take the lead in **information security risk management**. They collaborate with management, users, and IT departments to evaluate and mitigate risks.
4. **In risk management strategies, why must periodic review be a part of the process?**
	- Periodic reviews are necessary to ensure that risk management strategies remain effective as new threats, vulnerabilities, and changes in the organization's operations or environment may arise.
5. **Why do networking components need more examination from an information security perspective than from a systems development perspective?**
	- Networking components often serve as points of entry or exit for attackers. From an information security perspective, vulnerabilities in networks can expose the entire organization to significant risks, whereas the systems development perspective may focus more on functionality and performance.
6. **What value does an automated asset inventory system have for the risk identification process?**
	- An automated asset inventory system provides a comprehensive and accurate list of assets, facilitating more efficient identification and classification. It helps ensure that no critical assets are overlooked and can track changes to asset status, enhancing risk assessment accuracy.
7. **What information attribute is often of great value for local networks that use static addressing?**
	- **IP address** information is of great value, as static addressing helps identify and track specific devices within the network, making it easier to monitor for unusual activity and ensure proper access controls.
8. **Which is more important to the systems components classification scheme: that the asset identification list be comprehensive or mutually exclusive?**
	- It is more important for the asset identification list to be **mutually exclusive**. Each asset should belong to only one category, to avoid overlap and ensure that the assets are properly categorized and prioritized.
9. **What’s the difference between an asset’s ability to generate revenue and its ability to generate profit?**
	- **Revenue generation** refers to the asset's role in bringing income into the organization, whereas **profit generation** reflects the asset’s contribution after subtracting costs and expenses, indicating its true financial value.
10. **What are vulnerabilities? How do you identify them?**
	- **Vulnerabilities** are weaknesses or flaws in an asset that could be exploited by threats to cause harm. They can be identified through methods like vulnerability assessments, penetration testing, security audits, and by reviewing past security incidents.
11. **What is competitive disadvantage? Why has it emerged as a factor?**
	- A **competitive disadvantage** occurs when an organization’s assets, processes, or performance lag behind its competitors. It has emerged as a factor because, in today’s digital economy, failure to manage risks effectively (such as data breaches or inefficiencies) can harm an organization’s reputation and market position.
12. **What are the strategies for controlling risk as described in this chapter?**
	- The main strategies for controlling risk are **defense** (preventative measures), **transfer** (shifting risk to others), **mitigation** (reducing the impact of risks), **acceptance** (accepting risks when the cost of mitigation is too high), and **termination** (eliminating activities that introduce high risk).
13. **Describe the “defend” strategy. List and describe the three common methods.**
	- The **defend** strategy involves implementing measures to prevent the exploitation of vulnerabilities. The three common methods are:
		1. **Avoidance**: Altering the business processes to avoid exposure to risk.
		2. **Prevention**: Installing safeguards to prevent attacks or exploitation.
		3. **Detection**: Implementing systems to detect and alert on security events.
14. **Describe the “transfer” strategy. Describe how outsourcing can be used for this purpose.**
	- The **transfer** strategy involves shifting the responsibility for risk to another party, such as an insurance company or a third-party vendor. Outsourcing can be used to transfer certain risks (e.g., IT infrastructure or data management) to an external provider, who then takes on the associated risks.
15. **Describe the “mitigate” strategy. What three planning approaches are discussed in the text as opportunities to mitigate risk?**
	- The **mitigate** strategy involves reducing the impact of risks when they occur. The three approaches for mitigating risk are:
		1. **Reducing likelihood**: Implementing safeguards to make an attack less likely.
		2. **Reducing impact**: Preparing for and minimizing the damage of an attack.
		3. **Improving recovery**: Ensuring quick recovery through business continuity planning.
16. **How is an incident response plan different from a disaster recovery plan?**
	- An **incident response plan** is designed to handle the detection, containment, and management of security incidents, while a **disaster recovery plan** focuses on restoring business operations after a significant disruption, often involving IT infrastructure and data recovery.
17. **What is risk appetite? Explain why risk appetite varies from organization to organization.**
	- **Risk appetite** is the amount of risk an organization is willing to accept in pursuit of its objectives. It varies based on factors like the organization’s industry, financial resources, and overall strategy.
18. **What is a cost-benefit analysis?**
	- A **cost-benefit analysis** is a process that compares the costs of a security measure with the potential benefits, helping organizations determine whether the investment in a particular risk control is justified.
19. **What is the definition of single loss expectancy? What is annual loss expectancy?**
	- **Single Loss Expectancy (SLE)** is the expected monetary loss from a single occurrence of a specific risk event. **Annual Loss Expectancy (ALE)** is the expected loss over the course of a year, calculated by multiplying SLE by the **Annual Rate of Occurrence (ARO)**.
20. **What is residual risk?**
	- **Residual risk** is the remaining risk after risk control measures have been implemented. It is the portion of risk that cannot be mitigated or transferred and must be managed or accepted.

### Case Study Answers

1. **Did Charlie effectively organize the work before the meeting? Why or why not? Make a list of the important issues you think should be covered by the work plan. For each issue, provide a short explanation.**
	- Charlie made an attempt to organize the work, but there are gaps in the clarity of the work plan. Important issues to cover should include:
		1. **Asset Inventory Process**: Clear guidelines for identifying and categorizing assets, ensuring all critical assets are included.
		2. **Risk Prioritization**: Identifying how to prioritize assets based on their value and vulnerabilities.
		3. **Team Responsibilities**: Defining each team member's role to ensure all aspects of the inventory are covered.
		4. **Periodic Reviews**: Setting dates for progress updates to ensure alignment with overall goals.
		5. **Communication Plan**: Establishing clear channels for communication and escalation of issues.
2. **Will the company get useful information from the team it has assembled? Why or why not?**
	- The company may get useful information if the team is diverse and has the necessary expertise to identify and assess risks effectively. However, the team must be clear on their responsibilities and the importance of accurately categorizing and valuing assets. Without proper guidance and clarity on roles, the team may struggle to deliver comprehensive results.
3. **Why might some attendees resist the goals of the meeting? Does it seem that each person invited was briefed on the importance of the event and the issues behind it?**
	- Attendees may resist if they do not fully understand the importance of asset identification and risk management or feel that their time is being used inefficiently. If the team was not properly briefed on the significance of the task, they may lack the motivation to engage seriously in the project. Clear communication and briefing on the business impact of the process could alleviate some of this resistance.

### Case Study

As Charlie wrapped up the meeting, he ticked off a few key reminders for everyone involved in the asset identification project. “Okay, everyone, before we finish, please remember that you should try to make your asset lists complete, but be sure to focus your attention on the more valuable assets first. Also, remember that we evaluate our assets based on business impact to profitability first, and then economic cost of replacement. Make sure you check with me about any questions that come up. We will schedule our next meeting in two weeks, so please have your draft inventories ready.”

Questions:

- **Did Charlie effectively organize the work before the meeting? Why or why not? Make a list of the important issues you think should be covered by the work plan. For each issue, provide a short explanation.**
	- Charlie made an attempt to organize the work, but there are gaps in the clarity of the work plan. Important issues to cover should include:
		1. **Asset Inventory Process**: Clear guidelines for identifying and categorizing assets, ensuring all critical assets are included.
		2. **Risk Prioritization**: Identifying how to prioritize assets based on their value and vulnerabilities.
		3. **Team Responsibilities**: Defining each team member's role to ensure all aspects of the inventory are covered.
		4. **Periodic Reviews**: Setting dates for progress updates to ensure alignment with overall goals.
		5. **Communication Plan**: Establishing clear channels for communication and escalation of issues.
- **Will the company get useful information from the team it has assembled? Why or why not?**
	- The company may get useful information if the team is diverse and has the necessary expertise to identify and assess risks effectively. However, the team must be clear on their responsibilities and the importance of accurately categorizing and valuing assets. Without proper guidance and clarity on roles, the team may struggle to deliver comprehensive results.
- **Why might some attendees resist the goals of the meeting? Does it seem that each person invited was briefed on the importance of the event and the issues behind it?**
	- Attendees may resist if they do not fully understand the importance of asset identification and risk management or feel that their time is being used inefficiently. If the team was not properly briefed on the significance of the task, they may lack the motivation to engage seriously in the project. Clear communication and briefing on the business impact of the process could alleviate some of this resistance.

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

## Overview

Physical security addresses the design, implementation, and maintenance of countermeasures that protect the physical resources of an organization. Most controls can be circumvented if an attacker gains physical access. Physical security is as important as logical security.

## Major Sources of Physical Loss
1. Extreme temperature
2. Gases
3. Liquids
4. Living organisms
5. Projectiles
6. Movement
7. Energy anomalies


## Community Roles
- **General Management**: Responsible for facility security.
- **IT Management and Professionals**: Responsible for environmental and access security.
- **Information Security Management and Professionals**: Perform risk assessments and implementation reviews.


## Physical Access Controls
- ### Secure Facility
	- A secure facility is a physical location engineered with controls designed to minimize the risk of attacks from physical threats. It leverages natural terrain, traffic flow, urban development, and protective mechanisms (e.g., fences, gates, walls, guards, alarms).
- ### Walls, Fencing, and Gates
- ### Guards
- ### Dogs
- ### ID Cards and Badges
	- Tie physical security with information access control.
	- **ID Card**: Typically concealed.
	- **Name Badge**: Visible.
	- Serve as simple biometrics (facial recognition).
	- Vulnerabilities: Cards can be duplicated, stolen, or modified.
	- Risk: Tailgating occurs when an unauthorized individual follows an authorized user through a control.
- ### Locks and Keys
	- **Types of Locks**:
		- Mechanical
		- Electromechanical
	- **Categories of Locks**:
		- Manual
		- Programmable
		- Electronic
		- Biometric
	- Locks fail in two ways:
		- **Fail-safe lock**: Unlocks during failure.
		- **Fail-secure lock**: Remains locked during failure.
- ### Mantraps
	- Small enclosure with separate entry and exit points.
	- Access is verified within the enclosure.
	- Unauthorized individuals are denied exit until a security override.
- ### Electronic Monitoring
	- Records events where other controls are impractical or incomplete.
	- Utilizes cameras, video recorders, and closed-circuit television (CCT) systems.
	- **Drawbacks**:
		- Reactive; does not prevent access or prohibited activity.
		- Recordings are often reviewed post-incident.
- ### Alarms and Alarm Systems
	- Notify when an event occurs.
	- Detect fire, intrusion, environmental disturbances, or service interruptions.
	- Relies on sensors:
		- Motion detectors
		- Smoke detectors
		- Thermal detectors
		- Glass breakage detectors
		- Weight sensors
		- Contact sensors
		- Vibration sensors
- ### Computer Rooms and Wiring Closets
	- Require attention to confidentiality, integrity, and availability.
	- Vulnerable to custodial staff who have unsupervised access.
- ### Interior Walls and Doors
	- Security can be compromised by poorly constructed walls and doors.
	- High-security areas require firewall-grade walls and crash bars on doors.


## Fire Security and Safety

Fires are the most serious threat to personnel and property, necessitating strong detection and response measures.

- ### Fire Detection and Response
	- **Fire Suppression Systems**: Devices to detect and respond to fire by denying heat, fuel, or oxygen.
		- Water and mist systems
		- Carbon dioxide systems
		- Soda acid systems
		- Gas-based systems
	- **Fire Detection Systems**:
		- Manual and automatic categories.
		- Types:
			- Thermal detection
			- Smoke detection
			- Flame detection
	- **Fire Suppression Systems**:
		- Portable extinguishers rated by fire type (A, B, C, D).
		- Installed systems (sprinkler or gaseous).
- ### Gaseous Emission Systems
	- Types:
		- Carbon dioxide: Removes oxygen.
		- Halon: Classified as ozone-depleting; alternatives include FM-200, Inergen, FE-13.


## Utility and Structural Failures
- ### Supporting Utilities
	- Significant impact on facility operations, including:
		- Heating, ventilation, air conditioning (HVAC)
		- Power
		- Water
- ### HVAC Systems
	- Risks include:
		- Temperature extremes
		- Poor filtration
		- Improper humidity levels
		- Static electricity
	- **Ventilation Shafts**: Large ducts should have wire mesh grids for security.
- ### Power Management and Conditioning
	- Electrical concerns:
		- Voltage and amperage levels
		- Noise interference
	- **Grounding and Amperage**: Prevents circuit overloading and fire risks.
	- **Uninterruptible Power Supply (UPS)**: Provides backup power; configurations include standby, ferroresonant standby, line-interactive, and true online.
	- **Emergency Shutoff**: Stops power in emergencies to prevent harm.
- ### Water Problems
	- Risks:
		- Lack of water affects fire suppression and cooling systems.
		- Surplus water causes flooding or leaks.
	- Water detection systems should integrate with alarms.
- ### Structural Collapse
	- Overloaded structures may fail, causing injury or loss of life.
	- Periodic inspections by civil engineers are critical.

## Maintenance of Facility Systems

- Regular documentation, evaluation, and testing are essential.
- Documentation integrates into disaster recovery plans.
- Testing identifies and strengthens weak points.


## Data Interception

- Methods:
	- Direct observation
	- Interception of data transmission
	- Electromagnetic interception
- **TEMPEST Program**: Reduces risks of electromagnetic radiation (EMR) monitoring.


## Mobile and Portable Systems

- Laptops, handhelds, and PDAs require additional security.
- Controls include:
	- CompuTrace software for tracking.
	- Motion-detecting burglar alarms.


## Remote Computing Security

- **Remote Site Computing**: Involves telecommuting via Internet or dial-up.
- External connections must be secured to protect internal networks.


## Special Considerations for Physical Security Threats

- **In-House vs. Outsourced Security**:
	- Outsourcing benefits: Expertise and experience.
	- Downsides: High cost, loss of control, and trust issues.
- **Social Engineering**: Uses manipulation to gain unauthorized information.

## Inventory Management

- Regular inventory and inspection of computing equipment and classified information are necessary.
- Security measures vary by organization.

Physical security encompasses the safeguarding of facilities, computing equipment, data storage, and classified documents to ensure operational integrity and safety.

---
# Chapter 10: Implementing Information Security
- The **SecSDLC implementation phase** is accomplished by changing the configuration and operation of an organization's information systems.
- **Implementation includes changes to**:
	- **Procedures** (through policy)
	- **People** (through training)
	- **Hardware** (through firewalls)
	- **Software** (through encryption)
	- **Data** (through classification)
The organization translates the blueprint for information security into a project plan.

## Information Security Project Management
- The **project plan** must address project leadership, managerial/technical/budgetary considerations, and organizational resistance to change.
- Major steps in executing a project plan are:
	- **Planning the project**
	- **Supervising tasks and action steps**
	- **Wrapping up**
- Each organization must determine its own project management methodology for IT and information security projects.
## Developing the Project Plan
- The creation of a project plan can be done using **work breakdown structure (WBS)**.
- Major project tasks in WBS are:
	- Work to be accomplished
	- Assignees
	- Start and end dates
	- Amount of effort required
	- Estimated capital and noncapital expenses
	- Identification of dependencies between/among tasks
- Ea+ch major WBS task is further divided into smaller tasks or specific action steps.

## Project Planning Considerations

As the project plan is developed, adding detail is not always straightforward. Special considerations include financial, priority, time and schedule, staff, procurement, organizational feasibility, training and indoctrination, and scope.

- ### Financial Considerations
	- Regardless of existing information security needs, the amount of effort that can be expended depends on available funds.
	- **Cost-benefit analysis** must be reviewed and verified prior to the development of a project plan.
	- Both public and private organizations have budgetary constraints, though of a different nature.
	- To justify an amount budgeted for a security project at either public or for-profit organizations, it may be useful to benchmark expenses of similar organizations.
- #### Priority Considerations
	- In general, the most important information security controls should be scheduled first.
	- Implementation of controls is guided by prioritization of threats and value of threatened information assets.
- ### Time and Scheduling Considerations
	- Time impacts project plans at dozens of points, including:
		- Time to realize control's return on investment
		- Time to train the users
		- Time to order, receive, install, and configure security control
- ### Staffing Considerations
	- Need for qualified, trained, and available personnel constrains project plan.
	- Experienced staff is often needed to implement technologies and develop and implement policies and training programs.
- ### Procurement Considerations
	- Often constraints on the selection of equipment/services:
		- Some organizations require use of particular service vendors/manufacturers/suppliers.
	- These constraints may limit which technologies can be acquired.
- ### Organizational Feasibility Considerations
	- Changes should be transparent to system users unless the new technology is intended to change procedures (e.g., requiring additional authentication or verification).
	- Successful projects require that organizations be able to assimilate proposed changes.
	- New technologies sometimes require new policies, employee training, and education.
- ### Training and Indoctrination Considerations
	- The size of the organization and normal conduct of business may preclude a large training program for new security procedures/technologies.
	- If so, the organization should conduct phased-in or pilot implementation.
- ### Scope Considerations
	- **Project scope**: description of the project's features, capabilities, functions, and quality level, used as the basis of a project plan.
	- Organizations should implement large information security projects in stages.
## The Need for Project Management
- Project management requires a unique set of skills and a thorough understanding of a broad body of specialized knowledge.
- Most information security projects require a trained project manager (CISO) or skilled IT manager trained in project management techniques.
- ### Supervised Implementation
	- Some organizations may designate a champion from the general management community of interest to supervise the implementation of the information security project plan.
	- An alternative is to designate a senior IT manager or CIO to lead implementation.
	- The best solution is to designate a suitable person from the information security community of interest.
	- In the final analysis, each organization must find project leadership best suited to its specific needs.
- ### Executing the Plan
	- A negative feedback loop ensures that project progress is measured periodically.
		- When significant deviation occurs, corrective action is taken.
	- Often, a project manager can adjust one of three planning parameters for the task being corrected:
		- Effort and money allocated
		- Elapsed time/scheduling impact
		- Quality or quantity of deliverable
- ### Project Wrap-Up
	- Project wrap-up is usually handled as a procedural task and assigned to a mid-level IT or information security manager.
	- The goal is to resolve any pending issues, critique overall project effort, and draw conclusions about how to improve the process.
	- Activities include collecting documentation, finalizing status reports, and delivering a final report and presentation at the wrap-up meeting.
## Security Project Management Certifications
 - **GIAC Certified Project Manager**:
	- Offered by SANS Institute; focuses on security professionals/managers with project management responsibilities.
- **IT Security Project Management**:
	- Offered by EC Council as a milestone in its Certified E-Business Professional program.
- **Certified Security Project Manager**:
	- Offered by the Security Industry Association, focused on physical security; also incorporates information security.

## Technical Aspects of Implementation
- Some aspects of the implementation process are technical and deal with the application of technology.
- Others deal with the human interface to technical systems.

## Conversion Strategies
- As components of the new security system are planned, provisions must be made for changeover from the previous method of performing a task to the new method.
- **Four basic approaches**:
	- Direct changeover
	- Phased implementation
	- Pilot implementation
	- Parallel operations
- ### The Bull's-Eye Model
	- A proven method for prioritizing a program of complex change.
	- Requires that issues be addressed from general to specific; focus is on systematic solutions and not on individual problems.
	- Relies on the process of project plan evaluation in four layers:
		- Policies
		- Networks
		- Systems
		- Applications
## To Outsource or Not
- Just as some organizations outsource IT operations, organizations can outsource part or all of their information security programs.
- When an organization outsources most/all IT services, information security should be part of the contract arrangement with the supplier.
- Organizations of all sizes frequently outsource network monitoring functions.

## Technology Governance and Change Control
- **Technology governance** guides how frequently technical systems are updated and how updates are approved/funded.
- By managing the process of change, the organization can:
	- Improve communication, enhance coordination, reduce unintended consequences, improve quality of service, and ensure groups are complying with policies.

## Nontechnical Aspects of Implementation
- Some aspects of implementation are not technical in nature, instead dealing with the human interface to technical systems.
- These include creating a culture of change management and considerations for the organizations facing change.

## The Culture of Change Management
- The prospect of change can cause employees to consciously or unconsciously resist the change.
- The stress of change can increase the probability of mistakes or create vulnerabilities in systems.
- Change management can lower resistance to change and build resilience.
- **Lewin Change Model**:
	- Unfreezing
	- Moving
	- Refreezing
## Considerations for Organizational Change
- Steps can be taken to make employees more amenable to change:
	- Reducing resistance to change from the start
	- Developing a culture that supports change
- ### Reducing Resistance to Change from the Start
	- The more ingrained the existing methods and behaviors, the more difficult the change.
	- Best to improve interaction between affected members of the organization and project planners in early project phases.
	- **Three-step process for project managers**: communicate, educate, and involve.
	- **Joint application development**.
- ### Developing a Culture that Supports Change
	- An ideal organization fosters resilience to change.
	- **Resilience**: An organization understands that change is a necessary part of the organizational culture, and embracing change is more productive than fighting it.
	- To develop such a culture, the organization must successfully accomplish many projects that require change.
## Information Systems Security Certification and Accreditation
- It may seem that only systems handling secret government data require security certification and accreditation.
- In order to comply with recent federal regulations protecting personal privacy, organizations need to have formal mechanisms for verification and validation.
- ### Certification vs. Accreditation
	- **Accreditation**: authorizes IT systems to process, store, or transmit information; assures systems of adequate quality.
	- **Certification**: evaluation of technical and nontechnical security controls of IT systems establishing the extent to which design and implementation meet security requirements.
## The NIST Security Life Cycle Approach
- **SP 800-37, Rev. 1**: Guidelines for Applying the Risk Management Framework to Federal Information Systems, and **CNSS Instruction-1000**: National Information Assurance Certification and Accreditation Process (NIACAP).
	- Provide guidance for the certification and accreditation of federal information systems.
- Information processed by the federal government is grouped into one of three categories:
	- National security information (NSI)
	- Non-NSI
	- Intelligence community (IC)
- A new publication, **NIST SP 800-39**: Integrated Enterprise-Wide Risk Management: Organization, Mission, and Information Systems View builds on a three-tiered approach to risk management:
	- Tier I addresses risk from an organizational perspective.
	- Tier II addresses risk from a mission/business process perspective.
	- Tier III addresses risk from an information system perspective.

## NSTISS Certification and Accreditation
- **National security interest systems** have their own C&A standards.
- **NSTISS Instruction 1000**: National Information Assurance Certification and Accreditation Process (NIACAP):
	- Establishes minimum national standards for certifying/accrediting national security systems.
	- Designed to certify that IS meets documented requirements.
	- Composed of four phases: definition, verification, validation, and post accreditation.


---
# Chapter 11: Security & Personnel

When implementing information security, there are many human resource issues that must be addressed:

- **Positioning and naming**
- **Staffing**
- **Assessing the impact of information security on every IT function**
- **Integrating solid information security concepts into personnel management practices**
Employees often feel threatened when an information security program is being created or enhanced.

## Positioning the Information Security Function

The security function can be placed within various departments:

- IT function
- Physical security function
- Administrative services function
- Insurance and risk management function
- Legal department

Information security should balance the duty to monitor compliance with the need for education, training, awareness, and customer service.

## Staffing the Information Security Function

Selecting personnel for information security roles is based on several criteria, including factors not always under the organization’s control (such as supply and demand). Many professionals enter the security field by gaining relevant skills, experience, and certifications. Currently, the information security industry is in a period of high demand.

- ### Qualifications and Requirements:
	- Establishing better hiring practices requires the following:
		- **General management** should learn about the skills and qualifications for information security positions.
		- **Upper management** should be aware of the budgetary needs of the information security function.
		- **IT and general management** should grant appropriate levels of influence and prestige to information security.
	- Organizations typically seek technically qualified information security generalists. The ideal candidates should understand:
		- How an organization operates at all levels.
		- Information security is usually a management problem, not a technical one.
		- The importance of strong communication and writing skills.
		- The role of policy in guiding security efforts.
		- Most mainstream IT technologies and terminology in IT and information security.
		- Threats facing the organization and how they can turn into attacks.
		- How to protect organizational assets from information security attacks.
		- How business solutions can be applied to solve specific information security problems.
- ### Entry into the Information Security Profession:
	- Many professionals enter the field through two main career paths:
		- **Law enforcement and military**
		- **Technical roles in security applications and processes**
	- Today, students can select and tailor degree programs to prepare for work in information security. Organizations can foster greater professionalism by matching qualified candidates to clearly defined roles in the field.
- ### Information Security Positions:
	- Using standard job descriptions can increase professionalism and improve the consistency of roles and responsibilities across organizations. Charles Cresson Wood's book _Information Security Roles and Responsibilities Made Easy_ offers a set of model job descriptions.

| **Position**                                  | **Description**                                                                              | **Responsibilities**                                                                                                                                                                                                                                                                                                                                                                                                                | **Typical Qualifications**                                                                 |
| --------------------------------------------- | -------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| **Chief Information Security Officer (CISO)** | Top information security officer; frequently reports to the Chief Information Officer (CIO). | - Manages the overall information security program.<br>- Drafts or approves information security policies.<br>- Works with the CIO on strategic plans.<br>- Develops information security budgets.<br>- Sets priorities for purchasing and implementing security projects and technology.<br>- Makes recruitment, hiring, and firing decisions or recommendations.<br>- Acts as the spokesperson for the information security team. | Accreditation, graduate degree, experience.                                                |
| **Chief Security Officer (CSO)**              | The CISO's role may be combined with physical security responsibilities.                     | - Knowledgeable in both information security requirements and the "guards, gates, and guns" approach to security.                                                                                                                                                                                                                                                                                                                   | Knowledgeable in both IS and physical security.                                            |
| **Security Manager**                          | Responsible for the day-to-day operation of the information security program.                | - Achieves objectives as identified by the CISO.<br>- Resolves issues identified by technicians.                                                                                                                                                                                                                                                                                                                                    | Accreditation, experience in drafting policies, budgeting, project management, and hiring. |
| **Security Technician**                       | Technically qualified employees responsible for configuring security hardware and software.  | - Specialized in particular technologies and platforms.                                                                                                                                                                                                                                                                                                                                                                             | Certified, proficient, and experienced in specific hardware and software packages.         |

## Credentials for Information Security Professionals

Many organizations seek industry-recognized certifications, although many of these certifications are relatively new and not fully understood by all hiring organizations.

- ### Certifications:
	- **(ISC)² Certifications:**
		- Certified Information Systems Security Professional (CISSP)
		- Systems Security Certified Practitioner (SSCP)
		- Certified Secure Software Lifecycle Professional (CSSLP)
		- Associate of (ISC)²
	- **ISACA Certifications:**
		- Certified Information Systems Manager (CISM)
		- Certified Information Security Auditor (CISA)
		- Certified in the Governance of Enterprise IT (CGEIT)
		- Certified in Risk and Information Systems Control (CRISC)
	- **SANS Global Information Assurance Certification (GIAC)**
	- **EC-Council Certified CISO (CICISO)**
	- **CompTIA’s Security+**
	- **Certified Computer Examiner (CCE)**

## Certification Costs

- Preferred certifications can be expensive.
- Even experienced professionals find the exams difficult without review.
- Many candidates engage in individual or group study sessions and purchase exam review books.
- Before attempting a certification exam, candidates should thoroughly review the exam criteria and ensure that the investment in time and effort is worthwhile.

## Advice for Information Security Professionals

- Always remember: **business before technology**.
- Technology offers elegant solutions to some problems but can exacerbate others.
- Never lose sight of the goal: **protection**.
- Be **heard, not seen**.
- Know more than you say; be more skillful than you let on.
- **Speak to users**, not at them.
- Your education is never complete.

## Employment Policies and Practices (Hiring Guidelines)

- Information security should be a documented part of every employee's job description.
- The management community of interest should integrate solid information security concepts into the organization's employment policies and practices.
- Hiring employees is a responsibility laden with potential security pitfalls. The **CISO** and **information security manager** should work with the **Human Resources** department to incorporate information security into hiring guidelines.
- ### Job Descriptions
	- The integration of information security into the hiring process begins with reviewing and updating job descriptions.
	- Avoid revealing access privileges when advertising open positions.
- ### Interviews
	- When an opening arises in the information security department, it is a unique opportunity for the security manager to educate HR about certifications, experience, and qualifications.
	- HR should limit the information provided to candidates about their responsibilities and access rights.
	- For organizations that include on-site visits as part of the interview, caution is required when showing candidates around the facility.
- ### Background Checks
	- Background checks should be conducted before extending an offer to a candidate.
	- These checks investigate a candidate's past and may include identity checks, education verification, previous employment verification, references, drug history, credit history, and more.
- ### Employment Contracts
	- Once a candidate accepts a job offer, the employment contract becomes a key security instrument.
	- Many security policies require employees to agree in writing to monitoring and nondisclosure agreements.
	- Employees must agree to conform to policies as part of the employment contract.
- ### New Hire Orientation
	- New employees should receive an extensive information security briefing during orientation, covering policies, procedures, and security requirements.
	- Authorized access levels should be outlined, and employees should be trained on the secure use of information systems.
- ### On-the-Job Security Training
	- Security awareness education should be integrated into job orientation and training.
	- Keeping security at the forefront of employees' minds minimizes mistakes and is an essential part of information security awareness.
	- Both internal and external seminars should be used to increase security awareness, particularly for security employees.
- ### Evaluating Performance
	- Information security should be incorporated into employee performance evaluations.
	- Employees are more likely to take information security seriously if violations are documented in their evaluations.
- ### Termination
	- When an employee leaves the organization, security-related issues arise, particularly regarding access to information:
	- **Key Issues:**
		- Continuity of protection for all information the employee had access to.
		- After returning keys, keycards, and other business property, the former employee should be escorted from the premises.
		- Exit interviews can remind the employee of contractual obligations and allow the organization to obtain feedback.
	- **Hostile Departures:**
		- Include terminations for cause, permanent downsizing, temporary layoffs, or certain instances of quitting.
		- Access rights should be revoked before the employee is aware of their departure.
		- The employee should collect their belongings and surrender all company property, such as keys and keycards.
		- The employee is escorted from the building.
	- **Friendly Departures:**
		- Include resignation, retirement, promotion, or relocation.
		- More difficult for security to maintain control over the employee's access.
		- Employee accounts are usually retained with new expiration dates.
		- Employees typically come and go at will and leave on their own.

## Security Considerations for Temporary Employees, Consultants, and Other Workers

- Individuals not subject to screening, contractual obligations, or secured termination often have access to sensitive organizational information.
- Their relationships with the organization must be carefully managed to prevent potential information leaks or theft.

| **Category**            | **Description**                                                                                                                                                                                                                                                                      |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Temporary Employees** | - Hired to fill short-term positions or supplement the workforce.<br>- Often not subject to contractual obligations or general policies.<br>- If they violate a policy, actions may be limited.<br>- Access should be restricted to only the information necessary for their duties. |
| **Contract Employees**  | - Hired to perform specific tasks or services.<br>- Security protocols should ensure that contract employees are escorted and subjected to restrictions as necessary.                                                                                                                |
| **Consultants**         | - Should have clearly defined contracts that specify requirements for information or facility access.<br>- Consultants should be prescreened, escorted, and subjected to nondisclosure agreements to ensure protection.                                                              |
| **Business Partners**   | - Organizations forming strategic alliances with other businesses must carefully determine what information is exchanged and how it is handled.<br>- Nondisclosure agreements and security levels of systems must be reviewed before physical integration of systems.                |

## Internal Control Strategies

- **Separation of Duties:** Reduces the likelihood of security violations by ensuring that no single individual is responsible for completing significant tasks alone.
- **Two-Man Control:** Two individuals review and approve each other’s work before it is considered complete.
- **Job Rotation:** Ensures that no one employee performs actions that cannot be audited by another employee.
- **Least Privilege:** Only employees with a legitimate business need should be allowed access to systems and information.

## Privacy and the Security of Personnel Data

Organizations are required by law to protect sensitive employee information, including:

- Addresses
- Phone numbers
- Social Security numbers
- Medical conditions
- Family information

Information security should ensure that this data receives the same level of protection as other critical organizational data.

---

# Chapter 12: Information Security Maintenance
- **Organizations should avoid overconfidence** after improving their information security profile.
- **Organizational changes** that may occur include:
	- Acquisition of new assets; emergence of new vulnerabilities; business priorities shift; partnerships form or dissolve; organizational divestiture and acquisition; employee hire and turnover.
- If the program does not adjust, it may be necessary to begin the cycle again.
- It is more expensive to reengineer the information security profile repeatedly.

## Security Management Maintenance Models

- A management model must be adopted to **manage and operate the ongoing security program**.
- Models are frameworks that structure tasks of managing a particular set of activities or business functions.

## NIST SP 800-100 Information Security Handbook: A Guide for Managers

| **Area**                                                   | **Description**                                                                                                                                                                                                                           |
| ---------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **General Information**                                    | - Provides managerial guidance for establishing and implementing an information security program.                                                                                                                                         |
| **Information Security Management Areas**                  | - Thirteen areas of information security management.<br>- Provide specific monitoring activities for each task.<br>- Tasks should be done on an ongoing basis.<br>- Not all issues are negative.                                          |
| **Information Security Governance**                        | - Agencies should monitor the status of their programs to ensure that: <br>- Ongoing activities support the agency's mission.<br>- Policies and procedures are aligned with technology.<br>- Controls are accomplishing the intended purpose. |
| **System Development Life Cycle**                          | - The process of developing, implementing, and retiring information systems through a multi-step process.                                                                                                                                 |
| **Awareness and Training**                                 | - Tracking systems should capture key information on program activities.<br>- Compliance tracking involves assessing the program's status.<br>- The program must evolve continuously.                                                     |
| **Capital Planning and Investment Control**                | - Facilitates and controls the expenditure of agency funds.<br>- Follows a Select-Control-Evaluate investment life cycle.                                                                                                                 |
| **Interconnecting Systems**                                | - Direct connection of systems to share data and resources.<br>- Can introduce risks but also provides benefits like greater efficiency, centralized data access, and enhanced functionality.                                             |
| **Performance Measures**                                   | - **Metrics**: Tools supporting decision-making.<br>- Involves a six-phase iterative process.                                                                                                                                             |
| **Security Planning**                                      | - One of the most critical ongoing responsibilities in security management.                                                                                                                                                               |
| **Information Technology Contingency Planning**            | - Involves recovery and documentation of procedures.                                                                                                                                                                                      |
| **Risk Management**                                        | - An ongoing effort involving risk identification, analysis, and management.                                                                                                                                                              |
| **Certification, Accreditation, and Security Assessments** | - Regular checks on the status of security controls.<br>- **Auditing**: Reviews the use of a system for misuse or malfeasance.                                                                                                            |
| **Security Services and Products Acquisition**             | - Focuses on the procurement of security services and products.                                                                                                                                                                           |
| **Incident Response**                                      | - Focuses on the life cycle of incident response management.                                                                                                                                                                              |
| **Configuration (Change) Management**                      | - Manages the effects of changes in system configurations.                                                                                                                                                                                |

---

## The Security Maintenance Model
- Designed to focus organizational effort on maintaining systems.
- **Recommended maintenance model** based on five subject areas:
	- External monitoring.
	- Internal monitoring.
	- Planning and risk assessment.
	- Vulnerability assessment and remediation.
	- Readiness and review.

## Monitoring the External Environment

- **Objective**: Provide early awareness of new threats, threat agents, vulnerabilities, and attacks that are needed to mount an effective defense.
- **Entails**: Collecting intelligence from data sources and giving that intelligence context and meaning for use by organizational decision-makers.
- **Data sources**:
	- Acquiring threat and vulnerability data is not difficult; turning data into information decision-makers can use is the challenge.
	- External intelligence comes from three classes of sources: vendors, computer emergency response teams (CERTs), and public network sources.
	- Regardless of where or how external monitoring data is collected, it must be analyzed in the context of the organization’s security environment to be useful.
- **Monitoring, escalation, and incident response**:
	- The function of the external monitoring process is to monitor activity, report results, and escalate warnings.
	- The monitoring process has three primary deliverables:
		- Specific warning bulletins issued when developing threats and specific attacks pose measurable risk to the organization.
		- Periodic summaries of external information.
		- Detailed intelligence on the highest risk warnings.
- **Data collection and management**:
	- Over time, external monitoring processes should capture knowledge about the external environment in appropriate formats.
	- External monitoring collects raw intelligence, filters for relevance, assigns a relative risk impact, and communicates it to decision-makers in time to make a difference.

## Monitoring the Internal Environment
- **Objective**: Maintain informed awareness of the state of the organization’s networks, systems, and security defenses.
- **Internal monitoring** accomplished by:
	- Doing an inventory of network devices and channels, IT infrastructure and applications, and information security infrastructure elements.
	- Leading the IT governance process.
	- Real-time monitoring of IT activity.
	- Monitoring the internal state of the organization’s networks and systems.
- **Network characterization and inventory**:
	- Organizations should have a carefully planned and fully populated inventory for network devices, communication channels, and computing devices.
	- Once characteristics are identified, they must be carefully organized and stored using a mechanism (manual or automated) that allows timely retrieval and rapid integration of disparate facts.
- **Making intrusion detection and prevention systems work**:
	- The most important value of raw intelligence provided by the IDS is to provide indicators of current or imminent vulnerabilities.
	- Log files from IDS engines can be mined for information.
	- Another IDS monitoring element is traffic analysis.
	- Analyzing attack signatures for unsuccessful system attacks can identify weaknesses in various security efforts.
- **Detecting differences**:
	- **Difference analysis**: Procedure that compares the current state of a network segment against the known previous state of the same segment.
	- Differences between the current state and the baseline state that are unexpected could be a sign of trouble and need investigation.

## Planning and Risk Assessment

- **Purpose**: Keep a lookout over the entire information security program.
	- **Accomplished by**: Identifying and planning ongoing information security activities that further reduce risk.
- **Primary objectives**:
	- Establishing a formal information security program review.
	- Instituting formal project identification, selection, planning, and management processes.
	- Coordinating with IT project teams to introduce risk assessment and review for all IT projects.
	- Integrating a mindset of risk assessment across the organization.
- **Information security program planning and review**:
	- Periodic review of the ongoing information security program, coupled with planning for enhancements and extensions, is recommended.
	- Should examine IT needs of the future organization and the impact those needs have on information security.
	- A recommended approach takes advantage of the fact that most organizations have annual capital budget planning cycles and manage security projects as part of that process.
- **Large projects should be broken into smaller projects** for several reasons:
	- Smaller projects tend to have more manageable impacts on networks and users.
	- Larger projects tend to complicate the change control process in the implementation phase.
	- Shorter planning, development, and implementation schedules reduce uncertainty.
	- Most large projects can easily be broken down into smaller projects, providing more opportunities to change direction and gain flexibility.
- **Security risk assessments**:
	- A key component for driving security program change is the information security operational risk assessment (RA).
	- RA identifies and documents the risk that a project, process, or action introduces to the organization and offers suggestions for controls.
	- The information security group coordinates the preparation of many types of RA documents.

## Vulnerability Assessment and Remediation

**Primary goal**: Identification of specific, documented vulnerabilities and their timely remediation.

- **Accomplished by**:
	- Using vulnerability assessment procedures.
	- Documenting background information and providing tested remediation procedures for vulnerabilities.
	- Tracking vulnerabilities from when they are identified.
	- Communicating vulnerability information to owners of vulnerable systems.
	- Reporting on the status of vulnerabilities.
	- Ensuring the proper level of management is involved.
- **Vulnerability assessment processes** can serve many organizations as they attempt to balance the intrusiveness of vulnerability assessments with the need for a stable and productive production environment.
- **Penetration testing**:
	- A level beyond vulnerability testing.
	- A set of security tests and evaluations that simulate attacks by a malicious external source (hacker).
	- A **penetration test** (pen test) is usually performed periodically as part of a full security audit.
	- Can be conducted one of two ways: black box or white box.
- **Internet vulnerability assessment**:
	- Designed to find and document vulnerabilities present in the organization’s public-facing network.
	- Steps in the process include:
		- Planning, scheduling, and notification.
		- Target selection.
		- Test selection.
		- Scanning.
		- Analysis.
		- Record keeping.
- **Intranet vulnerability assessment**:
	- Designed to find and document selected vulnerabilities present on the internal network.
	- Attackers are often internal members of the organization, affiliates of business partners, or automated attack vectors (such as viruses and worms).
	- This assessment is usually performed against selected critical internal devices with known high value by using selective penetration testing.
	- Steps in the process are almost identical to steps in Internet vulnerability assessment.
- **Platform security validation**:
	- Designed to find and document vulnerabilities that may be present because of misconfigured systems in use within the organization.
	- These misconfigured systems fail to comply with company policy or standards.
	- Fortunately, automated measurement systems are available to help with the intensive process of validating compliance of platform configuration with policy.
- **Wireless vulnerability assessment**:
	- Designed to find and document vulnerabilities that may be present in wireless local area networks of the organization.
	- Since attackers from this direction are likely to exploit any loophole or flaw, assessment is usually performed against all publicly accessible areas using every possible wireless penetration testing approach.
- **Modem vulnerability assessment**:
	- Designed to find and document any vulnerability present on dial-up modems connected to the organization’s networks.
	- Since attackers from this direction exploit any loophole or flaw, assessment is usually performed against all telephone numbers owned by the organization.
	- One element of this process, often called war dialing, uses scripted dialing attacks against a pool of phone numbers.
- **Documenting vulnerabilities**:
	- A vulnerability tracking database should provide details as well as a link to the information assets.
	- Low-cost and ease of use make relational databases a realistic choice.
	- The vulnerability database is an essential part of effective remediation.
- **Remediating vulnerabilities**:
	- The objective is to repair the flaw causing a vulnerability instance or remove risk associated with the vulnerability.
	- As a last resort, informed decision-makers with proper authority can accept the risk.
	- Building relationships with those who control information assets is key to success.
	- Success depends on the organization adopting a team approach to remediation, instead of a cross-organizational push and pull.
- **Acceptance or transference of risk**:
	- In some instances, risk must simply be acknowledged as part of the organization’s business process.
	- Management must ensure that decisions to assume risk are made by properly informed decision-makers.
	- Information security must ensure the right people make risk assumption decisions with complete knowledge of the impact of the decision.
- **Threat removal**:
	- In some cases, threats can be removed without repairing the vulnerability.
	- The vulnerability can no longer be exploited, and the risk has been removed.
	- Other vulnerabilities may be amenable to other controls that do not require an expensive repair and still remove risk from the situation.
- **Vulnerability repair**:
	- The optimum solution in most cases is to repair the vulnerability.
	- Applying a software patch or implementing a workaround often accomplishes this.
	- In some cases, simply disabling the service removes the vulnerability; in other cases, simple remedies are possible.
	- The most common repair is the application of a software patch.


## Readiness and Review

**Primary goal**: Keep the information security program functioning as designed and continuously improving.

- **Accomplished by**:
	- Policy review.
	- Program review.
	- Rehearsals.
## Digital Forensics

- Used to investigate what happened during an attack on assets and how the attack occurred.
- Based on the field of traditional forensics.
- Involves **preservation, identification, extraction, documentation**, and **interpretation** of computer media for evidentiary and/or root cause analysis.
- **Evidentiary material (EM)**: Any information that could potentially support the organization's legal or policy-based case against a suspect.
- Used for two key purposes:
	- To investigate allegations of digital malfeasance.
	- To perform root cause analysis.
- Organizations choose one of two approaches:
	- **Protect and forget (patch and proceed)**: Defense of data and systems that house, use, and transmit it.
	- **Apprehend and prosecute (pursue and prosecute)**: Identification and apprehension of responsible individuals, with additional attention on the collection and preservation of potential EM that might support administrative or criminal prosecution.
- ### Digital Forensics Methodology
	- All investigations follow the same basic methodology:
		1. Identify relevant items of evidentiary value (EM).
		2. Acquire (seize) the evidence without alteration or damage.
		3. Take steps to assure that the evidence is verifiably authentic and unchanged from the time it was seized.
		4. Analyze the data without risking modification or unauthorized access.
		5. Report the findings to the proper authority.
- ### The Digital Forensics Team
	- **Most organizations**:
		- Cannot sustain a permanent digital forensics team.
		- Collect data and outsource analysis.
	- Information security group personnel should be trained to understand and manage the forensics process to avoid contamination of potential EM.
	- Expertise can be obtained through training.

## Affidavits and Search Warrants
- **Affidavit**:
	- Sworn testimony that certain facts are in the possession of the investigating officer that they feel warrant the examination of specific items located at a specific place.
	- The facts, items, and place must be specified.
- When an approving authority signs the affidavit, it becomes a **search warrant**, giving permission to:
	- Search the EM at the specified location.
	- Seize items to return to the investigator for examination.

## Evidentiary Procedures
- Strong procedures for handling potential evidentiary material can minimize the probability of an organization losing a legal challenge.
- Organizations should develop specific procedures with guidance, for example:
	- Who may conduct an investigation and who is authorized.
	- What affidavit- and search warrant-related issues are required.
	- The methodology to be followed.
	- The final report format.