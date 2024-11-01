| Lecture<br>Number | Lecture<br>Name                                      | Status             |
| ----------------- | ---------------------------------------------------- | ------------------ |
| 1                 | Significance of DFDs in security analysis            | :white_check_mark: |
| 2                 | DFD Impact in security analysis                      | :white_check_mark: |
| Task 1            | Threat Modelling in STRIDE                           | :white_check_mark: |
| Task 2            | Threat Modelling in DREAD                            | :white_check_mark: |
| 3                 | Attacker Profiling (MITRE)                           | :x:                |
| 12 & 13           | Secure Coding Practices: Input Validation            | :white_check_mark: |
| 12 & 13           | Secure Coding Practices: Output Encoding             | :white_check_mark: |
| 14 & 15           | Secure Coding Practices: Authn & Password Management | :white_check_mark: |

---
# Lecture 1: Significance of DFDs in Security Analysis
## Q/A
1. **What is a Data Flow Diagram (DFD), and why is it important for security analysis?**
	- A DFD is a visual tool for mapping data flows within a system. By detailing how data moves between processes, data stores, and external entities, DFDs help identify potential points of exposure or data manipulation, making them invaluable for assessing security risks.
2. **How do DFDs aid in identifying security vulnerabilities and threat entry points?**
	- By visualizing data flows and showing interactions between external entities and the system, DFDs reveal entry and exit points where unauthorized access or data leaks could occur. This helps pinpoint vulnerabilities and areas requiring security controls.
3. **How can DFDs clarify data movement and trust boundaries within a system?**
	- DFDs simplify complex systems by breaking down data flows and highlighting trust boundaries between trusted and untrusted zones. This makes it easier to understand where sensitive data is exposed and where additional protections may be needed.
4. **What role do DFDs play in threat modeling and risk mitigation?**
	- DFDs are central to threat modeling, providing a structured way to identify and address vulnerabilities. By mapping out data flows and trust boundaries, they help in defining and implementing effective security measures, such as encryption, firewalls, and access controls.
5. **How do DFDs support data classification and compliance with security standards?**
	- Mapping data flows with DFDs aids in classifying data sensitivity and securing it appropriately, ensuring compliance with standards like GDPR, HIPAA, and PCI-DSS. They illustrate secure data handling, storage, and access controls.
6. **How do DFDs improve incident response planning and collaboration?**
	- By identifying critical data flows and storage points, DFDs assist in creating effective incident response plans, prioritizing actions based on data sensitivity. They also enhance collaboration between developers and security teams, providing a shared understanding of the system’s data interactions.
7. **What are the pitfalls of a poorly constructed DFD in security analysis?**
	- An inaccurate or incomplete DFD can lead to missed vulnerabilities and ineffective security analysis, potentially leaving the system open to attacks. Proper validation, including reviews and walkthroughs, is essential to ensure accuracy and comprehensive security coverage.
# Lecture 2: Impact of DFDs in Security Analysis
## 1. **How do DFDs enhance the effectiveness of threat modeling in security analysis?**

   DFDs play a critical role in threat modeling by visually representing how data flows through a system, where it’s stored, and who interacts with it. This helps security analysts understand the relationships between entities, processes, and data stores, identifying points of vulnerability and potential threats. Threat modeling, which typically includes processes like STRIDE (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, and Elevation of Privilege), relies on clear visual cues provided by DFDs to spot security gaps.

   For instance, during threat modeling, analysts can examine each data flow to determine if it could be intercepted, modified, or deleted, then evaluate if mitigations—such as encryption, authentication, or logging—are in place. DFDs provide a map to systematically apply threat models, helping analysts to more thoroughly address threats and prevent security breaches.

## 2. **In what ways do DFDs contribute to identifying and mitigating data exposure risks in complex systems?**

   DFDs are invaluable in exposing how data moves across system components, especially in large or multi-layered systems. By mapping out data flows, DFDs highlight sensitive areas where data could be accessed by unauthorized entities or unintentionally exposed due to a misconfiguration or lack of security control. Specifically, DFDs help isolate data paths that cross trust boundaries, such as between internal systems and external users, which are prime areas for implementing protections like encryption and access control.

   For instance, if a data flow from a public interface to an internal process isn't encrypted, it creates a vulnerability where sensitive data could be intercepted by malicious actors. DFDs allow analysts to visualize and scrutinize such flows, prompting them to secure these paths by applying the necessary controls. This approach minimizes data exposure risks by ensuring all data transitions across trust boundaries are secure.

## 3. **How do DFDs assist in identifying trust boundaries, and why is this significant for security analysis?**

   Trust boundaries in DFDs are critical as they delineate areas where different levels of security requirements apply. A trust boundary marks a transition between parts of a system with differing levels of access control or security assumptions, such as between internal networks and external client access. By clearly defining these boundaries, DFDs allow security analysts to identify where sensitive data crosses from a secure to an unsecured environment, highlighting the need for additional protection.

   This is significant for security because trust boundaries often mark the "attack surface" of a system. Attackers may exploit data crossing boundaries that lack encryption, authentication, or authorization mechanisms. By analyzing these points, DFDs reveal where controls should be strengthened, such as adding firewalls, implementing multi-factor authentication, or enforcing access restrictions. This reduces the system's vulnerability by securing potential attack vectors at these critical junctures.

## 4. **How can DFDs aid in improving compliance with data protection regulations, and what role do they play in regulatory audits?**

   DFDs are valuable for demonstrating how data is handled, stored, and transmitted within a system, which is essential for regulatory compliance with standards like GDPR, HIPAA, and PCI-DSS. These regulations require organizations to document data flows, showing where data originates, how it’s processed, and where it’s stored, along with security measures in place to protect it. DFDs help provide this documentation by clearly visualizing the flow and handling of data, making it easier to assess compliance.

   In regulatory audits, DFDs serve as visual evidence of how data is managed, showing auditors that data handling practices align with regulatory requirements. DFDs can also help identify where sensitive data (e.g., personally identifiable information) is processed, aiding in the implementation of controls such as data encryption, access restrictions, and secure storage solutions. With these visual aids, DFDs support a proactive approach to data security, helping organizations meet compliance standards and streamline audits.

## 5. **In what ways do DFDs contribute to identifying areas vulnerable to insider threats, and how can they aid in developing protective measures?**

   Insider threats are a significant risk, often stemming from authorized users misusing their access to critical systems and data. DFDs help by outlining the data access points for various processes, systems, and roles, allowing security teams to analyze which users or roles have access to sensitive data flows. By studying these diagrams, analysts can pinpoint areas where excessive or unnecessary access is granted, which could be exploited by insiders.

   For instance, a DFD might reveal that a particular user role has access to data flows beyond what is necessary for their job function. This information enables analysts to tighten access controls, enforcing the principle of least privilege by restricting access to only what is essential. Additionally, DFDs can highlight where monitoring and logging should be implemented to track insider access to critical data, creating a record that can be reviewed for suspicious behavior. This proactive step mitigates the risk of insider threats by ensuring sensitive data is only accessible to authorized individuals and monitoring is in place for accountability.

## 6. **How do DFDs enhance collaboration between development and security teams in the system development lifecycle (SDLC)?**

   DFDs serve as a common language for both development and security teams, offering a visual representation that bridges technical and security perspectives. In the SDLC, particularly during the design and planning phases, DFDs allow developers to see how their implementations could impact security, while security teams can identify risks and propose mitigations without needing to dive deep into the code.

   For example, as a development team designs a new feature, they can create or update a DFD to show new data flows and components introduced to the system. Security teams can then use this updated DFD to identify security needs, such as data encryption or additional authentication, early in the development cycle. This collaboration prevents security issues from being an afterthought and encourages the integration of security controls at the design level. The result is a more secure product, developed with input from both teams, enhancing overall system resilience.

## 7. **How can DFDs help in identifying and reducing redundant data flows that may increase security risk?**

   Redundant data flows—data moving unnecessarily between processes or duplicated across multiple stores—can increase a system's attack surface and create additional security risks. DFDs help security analysts and system architects visualize these flows, making it easier to spot and eliminate inefficiencies.

   For example, a DFD may show that a particular piece of data is processed by two separate entities when only one is necessary. Eliminating this redundancy reduces the potential entry points for attackers, decreases system complexity, and minimizes potential data exposure. Additionally, reducing redundant flows makes it easier to implement security controls as fewer pathways need to be secured, streamlining overall data management and reducing the chance of overlooked vulnerabilities.

## 8. **How do DFDs assist in the security analysis of new system features, particularly for assessing security impact?**

   When new features are added to a system, they often introduce additional data flows and modify existing ones, which can create new security challenges. DFDs are used to update these flows to include new feature components, processes, or external interactions, allowing security analysts to assess the potential security impact of the additions.

   By examining the updated DFD, security teams can determine if the new feature introduces additional trust boundaries or interacts with sensitive data in a way that requires enhanced security controls. For instance, if a new feature requires data to be transmitted externally, the DFD would highlight this new flow, enabling security teams to assess the need for secure transmission protocols, access restrictions, or auditing measures. This proactive analysis allows security to be built into new features from the outset, reducing the risk of introducing vulnerabilities into the system.

# Task 1: STRIDE Modelling (Online Banking)
- STRIDE Acronym
	- **Spoofing (S)**: Can an attacker pretend to be someone else?
	- **Tampering (T)**: Can an attacker modify data or processes?
	- **Repudiation (R)**: Can an attacker deny their actions?
	- **Information Disclosure (I)**: Can sensitive information be exposed?
	- **Denial of Service (D)**: Can an attacker prevent legitimate access to services?
	- **Elevation of Privilege (E)**: Can an attacker gain unauthorized access or higher-level permissions?
- Table components are generally similar to what's found on a DFD;
	- Processes (Round thingy)
	- Data Stores (Squares)
	- Data Transmission (Arrows)
	- External Entities (Squares w/ border)

| **Components**        | **STRIDE<br>Category**     | **Threat<br>Example**                                                                            | **Mitigation<br>Strategy**                                                                                                            |
| --------------------- | -------------------------- | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------- |
| **Processes**         |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Attacker impersonates a legitimate user or internal system process.                              | Use strong authentication mechanisms (e.g., MFA), session tokens, and secure API key management.                                      |
|                       | **Tampering**              | Attacker modifies transaction processing logic or alters financial calculations.                 | Apply secure coding practices, validate input/output, and use hashing/digital signatures.                                             |
|                       | **Repudiation**            | User denies performing a transaction, and there's insufficient logging to prove it.              | Implement robust logging and auditing with tamper-proof logs. Use digital signatures.                                                 |
|                       | **Information Disclosure** | Sensitive info (e.g., account balance) is exposed via process logs or error messages.            | Mask sensitive data in logs/output. Use encryption (in memory & at rest). Enforce least privilege.                                    |
|                       | **Denial Of Service**      | Overwhelming a process (e.g., transaction processor) with too many requests.                     | Implement rate-limiting, load balancing, and failover mechanisms.                                                                     |
|                       | **Elevation of Privilege** | Attacker exploits process vulnerability to gain admin access or perform unauthorized actions.    | Enforce RBAC, least privilege, and apply security testing (static/dynamic analysis, audits).                                          |
| **Data Stores**       |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Attacker gains unauthorized access to the database by impersonating admin or service.            | Enforce strong database authentication, isolate services, and use firewalls and segmentation.                                         |
|                       | **Tampering**              | Attacker modifies data (e.g., changing account balances or transaction histories).               | Use encryption for data at rest, enforce integrity checks, and enable access logging/audits.                                          |
|                       | **Repudiation**            | Malicious insider alters transaction records and denies it, with no audit trail.                 | Enable transaction logs and audits. Use tamper-evident logging with secure timestamping.                                              |
|                       | **Information Disclosure** | Database with sensitive info (e.g., account numbers) is compromised and leaked.                  | Encrypt sensitive data at rest. Implement access controls and monitor access with alerts.                                             |
|                       | **Denial Of Service**      | Database is overwhelmed with queries or data, resulting in unavailability.                       | Implement scaling solutions, connection pooling, and set query limits to prevent abuse.                                               |
|                       | **Elevation of Privilege** | Low-level user finds a vulnerability to escalate privileges and gain full database control.      | Apply least privilege, review user roles, and apply patches/updates promptly.                                                         |
| **Data Transmission** |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Attacker intercepts and spoofs communication between the user and banking system.                | Implement SSL/TLS encryption and use certificates for server identity validation (HTTPS, mutual TLS).                                 |
|                       | **Tampering**              | Attacker intercepts and modifies data in transit (e.g., changing transaction amounts).           | Use TLS for encryption, apply checksums or digital signatures to verify data integrity.                                               |
|                       | **Repudiation**            | User/system denies sending/receiving data, and there's no record of the communication.           | Implement non-repudiation (e.g., digital signatures) and secure timestamp logging.                                                    |
|                       | **Information Disclosure** | Sensitive data (e.g., passwords) is intercepted during transmission.                             | Use end-to-end encryption (TLS) for all sensitive data in transit.                                                                    |
|                       | **Denial Of Service**      | Network attack floods transmission channels, disrupting services (e.g., DDoS attack).            | Use rate-limiting, network filtering, and DDoS mitigation services (e.g., CDN-based).                                                 |
|                       | **Elevation of Privilege** | Attacker exploits API or protocol weaknesses to elevate privileges and gain unauthorized access. | Apply strict API validation, secure protocols, and proper authentication for all data requests.                                       |
| **External Entities** |                            |                                                                                                  |                                                                                                                                       |
|                       | **Spoofing**               | Malicious user impersonates a legitimate bank customer (e.g., by stealing credentials).          | Use multi-factor authentication, CAPTCHA, and secure user registration processes.                                                     |
|                       | **Tampering**              | Malicious entity alters data it sends to the system (e.g., fraudulent transaction requests).     | Validate external input, apply input sanitization, and use secure API requests (HMAC/digital signatures).                             |
|                       | **Repudiation**            | Customer disputes a transaction or denies responsibility for fraudulent actions.                 | Use transaction logs, secure audit trails, and allow customers to verify transaction history.                                         |
|                       | **Information Disclosure** | External entity accesses/intercepts sensitive data from the banking system.                      | Enforce encryption, secure authentication for third-party access, and compliance with security standards (OAuth, token-based access). |
|                       | **Denial Of Service**      | External users overwhelm the banking system with requests, causing service outage.               | Implement rate-limiting, IP blocking, and deploy DDoS protection solutions.                                                           |
|                       | **Elevation of Privilege** | External entity exploits vulnerability to gain higher-level access (e.g., user to admin).        | Use RBAC, strict authorization checks, and regular security testing for external-facing functionalities.                              |

---


# Task 2: DREAD Modelling (Online Banking)
## DREAD
- Can be used without STRIDE, but then there would be no STRIDE categories and threats are realized and modelled according to DREAD only
	- Overall risk factor is used to categorize severity
- DREAD Acronym
	- **Damage Potential (D)**: How severe is the damage if the threat is realized?
	- **Reproducibility (R)**: How easy is it to reproduce the attack?
	- **Exploitability (E)**: How easy is it to exploit the vulnerability?
	- **Affected Users (A)**: How many users will be affected by the attack?
	- **Discoverability (D)**: How easy is it to discover the vulnerability?
- Overall Risk Factor Formula
	- (D + R + E + A + D)/5
	- Max must not exceed 10
	- Risk Number assignment
		- 0 for None
		- 5 for Medium
		- 10 for High

## DREAD w/ STRIDE Modelling

| Component             | Threat                                                                                                                                   | Damage Potential (D) | Reproducibility (R) | Exploitability (E) | Affected Users (A) | Discoverability (D) | Overall Risk Factor |
| --------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | -------------------- | ------------------- | ------------------ | ------------------ | ------------------- | ------------------- |
| **Processes**         |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing of User Credentials** (attacker impersonates legitimate user)                                                                 | 8                    | 8                   | 7                  | 9                  | 7                   | **7.8**             |
|                       | **Tampering with Transaction Logic** (modify transaction amounts or recipient details)                                                   | 9                    | 7                   | 6                  | 8                  | 6                   | **7.2**             |
|                       | **Repudiation of Transactions** (user denies initiating transaction, no audit trail)                                                     | 7                    | 6                   | 5                  | 6                  | 4                   | **5.6**             |
|                       | **Information Disclosure via Logs** (sensitive info like account balances leaked through logs)                                           | 6                    | 7                   | 5                  | 6                  | 8                   | **6.4**             |
|                       | **Denial of Service** (service overwhelmed by too many requests)                                                                         | 8                    | 7                   | 4                  | 9                  | 7                   | **7.0**             |
|                       | **Privilege Escalation** (attacker gains admin-level access via process vulnerability)                                                   | 9                    | 6                   | 7                  | 9                  | 5                   | **7.2**             |
| **Data Stores**       |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing Database Administrator** (attacker pretends to be DB admin to gain access)                                                    | 9                    | 5                   | 5                  | 9                  | 6                   | **6.8**             |
|                       | **Tampering with Transaction Data** (manipulate account balances or history)                                                             | 9                    | 7                   | 6                  | 9                  | 5                   | **7.2**             |
|                       | **Repudiation of Data Modifications** (no proper logging of DB access and modifications)                                                 | 7                    | 6                   | 5                  | 7                  | 5                   | **6.0**             |
|                       | **Information Disclosure via Database Breach** (unauthorized access to sensitive financial info)                                         | 9                    | 6                   | 6                  | 9                  | 5                   | **7.0**             |
|                       | **Denial of Service (Database)** (overwhelming DB with requests, rendering it unusable)                                                  | 8                    | 7                   | 5                  | 8                  | 6                   | **6.8**             |
|                       | **Privilege Escalation** (user escalates privilege to access sensitive DB tables)                                                        | 9                    | 6                   | 6                  | 9                  | 4                   | **6.8**             |
| **Data Transmission** |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing Server Communication** (man-in-the-middle attack, impersonating server)                                                       | 9                    | 6                   | 6                  | 8                  | 6                   | **7.0**             |
|                       | **Tampering with Data in Transit** (modifying transaction data in transit)                                                               | 9                    | 6                   | 5                  | 8                  | 5                   | **6.6**             |
|                       | **Repudiation of Data Transmissions** (no logs proving data was sent or received)                                                        | 7                    | 6                   | 4                  | 6                  | 5                   | **5.6**             |
|                       | **Information Disclosure** (sensitive data exposed during transmission due to lack of encryption)                                        | 9                    | 6                   | 5                  | 9                  | 5                   | **6.8**             |
|                       | **Denial of Service (API)** (overload communication channels, making APIs unusable)                                                      | 8                    | 7                   | 5                  | 8                  | 6                   | **6.8**             |
|                       | **Privilege Escalation via API Vulnerability** (attacker gains unauthorized access to API endpoints with elevated privileges)            | 9                    | 5                   | 6                  | 8                  | 5                   | **6.6**             |
| **External Entities** |                                                                                                                                          |                      |                     |                    |                    |                     |                     |
|                       | **Spoofing External User** (malicious user impersonates a legitimate user via stolen credentials)                                        | 8                    | 7                   | 6                  | 9                  | 7                   | **7.4**             |
|                       | **Tampering with User Input** (malicious user submits fraudulent transaction data)                                                       | 9                    | 6                   | 6                  | 8                  | 5                   | **6.8**             |
|                       | **Repudiation of User Actions** (external user denies performing certain actions, such as initiating a transaction)                      | 7                    | 6                   | 5                  | 7                  | 5                   | **6.0**             |
|                       | **Information Disclosure by External Entity** (external user or service intercepts sensitive information)                                | 9                    | 6                   | 5                  | 9                  | 6                   | **7.0**             |
|                       | **Denial of Service by External User** (external users overwhelm the system with too many requests)                                      | 8                    | 7                   | 4                  | 9                  | 7                   | **7.0**             |
|                       | **Privilege Escalation via External Access** (external entity exploits vulnerability to gain unauthorized access or escalate privileges) | 9                    | 5                   | 6                  | 8                  | 6                   | **6.8**             |

## DREAD w/o STRIDE

| Component                   | Threat                                                                                                  | Damage Potential (D) | Reproducibility (R) | Exploitability (E) | Affected Users (A) | Discoverability (D) | Overall Risk Factor |
| --------------------------- | ------------------------------------------------------------------------------------------------------- | -------------------- | ------------------- | ------------------ | ------------------ | ------------------- | ------------------- |
| **User Authentication**     | **Stolen Credentials** (attacker uses stolen login credentials to access user accounts)                 | 8                    | 8                   | 7                  | 9                  | 7                   | **7.8**             |
| **Transaction Processing**  | **Fraudulent Transactions** (attacker submits fake transactions by exploiting weak input validation)    | 9                    | 7                   | 6                  | 8                  | 6                   | **7.2**             |
| **User Interface**          | **Phishing Attack** (attacker creates a fake banking website to steal user credentials)                 | 9                    | 7                   | 5                  | 9                  | 8                   | **7.6**             |
| **Banking Database**        | **SQL Injection** (attacker executes malicious queries to alter or steal sensitive data)                | 9                    | 8                   | 6                  | 9                  | 6                   | **7.6**             |
| **API Communication**       | **Man-in-the-Middle (MITM)** (attacker intercepts communication between user and server to alter data)  | 9                    | 7                   | 5                  | 8                  | 5                   | **6.8**             |
| **Web Application**         | **Cross-Site Scripting (XSS)** (attacker injects scripts to steal user information)                     | 8                    | 6                   | 6                  | 7                  | 5                   | **6.4**             |
| **Customer Support Portal** | **Account Takeover via Social Engineering** (attacker tricks support into resetting account)            | 8                    | 6                   | 6                  | 8                  | 6                   | **6.8**             |
| **Mobile Banking App**      | **Weak Session Management** (attacker hijacks user session to perform unauthorized actions)             | 8                    | 7                   | 6                  | 9                  | 7                   | **7.4**             |
| **Backend Servers**         | **Denial of Service (DoS)** (attacker overwhelms backend servers with traffic to take down the service) | 7                    | 8                   | 5                  | 9                  | 6                   | **7.0**             |
| **Third-Party Services**    | **Supply Chain Attack** (compromise of third-party services used in the banking system)                 | 9                    | 6                   | 4                  | 8                  | 5                   | **6.4**             |
| **Customer Notifications**  | **Sensitive Data Leak in Email/SMS** (sensitive info exposed in clear text in notifications)            | 6                    | 6                   | 5                  | 8                  | 7                   | **6.4**             |

# Lecture 12 & 13: Secure Coding Practices (Input Validation & Output Encoding)
## Input Validation

Input validation is critical to ensure data entering the system is properly sanitized, validated, and consistent with expected formats. This process is vital to prevent injection attacks, cross-site scripting (XSS), and data corruption.

Can be achieved through:

- Conducting all input validation on server-side
- Identify all data-sources and group them into trusted & non-trusted
- Validate all data from untrusted sources i.e. DBs, filestreams, etcetc
- Use a centralized input validation routine for the whole application (quiz)
- Specify character sets to use for all inputs to encode into i.e. UTF-8
- All validation failures must result in input rejection

## Importance of UTF-8 for security
1. Standardization:
	- UTF-8 is a widely adopted encoding standard that supports a vast range of characters from different languages. This standardization helps in maintaining consistency and avoiding encoding-related vulnerabilities.
2. Avoiding Overlong Encodings:
	- UTF-8 encoding ensures that each character is represented in a consistent manner. Overlong UTF-8 encodings, which can represent the same character in multiple ways, have been used in the past to bypass security checks 1). By adhering to the UTF-8 standard, you mitigate the risk of such attacks.
1. Compatibility:
	- UTF-8 is compatible with ASCII, making it easier to integrate with existing systems and reducing the risk of encoding errors that could be exploited by attackers

### Key Principles and Best Practices
1. **Server-Side Validation**:
	- Always perform validation on the server side, as client-side validation can be bypassed by attackers.
	- Example (Python/Flask):

```python
from flask import Flask, request, jsonify
import re
app = Flask(__name__)
@app.route('/submit', methods=['POST'])
def submit():
	data = request.json
	username = data.get('username')
    if not re.match("^[a-zA-Z0-9_]+$", username):
		return jsonify({"error": "Invalid username"}), 400
	return jsonify({"message": "Input is valid"}), 200
```

2. **Classify Data Sources**:


	- Identify sources of data as *trusted* or *untrusted* (e.g., user input vs. internal APIs).
	- Only apply validation to untrusted sources, minimizing potential security risks from external data.
	- Example:

```python
     trusted_sources = ['internal_api', 'trusted_database']
     untrusted_sources = ['user_input', 'external_api']
     def classify_source(source):
         return "trusted" if source in trusted_sources else "untrusted"
```

3. **Centralized Validation Routines + Use Allow-Lists (Positive Validation)**:


	- Use a single, central function to handle validation for consistency across the application.
	- Define expected characters or formats, focusing on acceptable patterns rather than attempting to list all invalid cases.
	- Example:-

```python
     def centralized_validation(data, pattern):
         if not re.match(pattern, data):
             raise ValueError("Invalid data")
         return True
     # Specific validation functions that use the centralized method
     def validate_username(username):
         return centralized_validation(username, r"^[a-zA-Z0-9_]+$")     # REGEX used here is an example of what is allowed
	# Specific validation functions that use the centralized method
	def validate_password(password):
		return centralized_validation(password, r"^[a-zA-Z0-9]+$")
```

4. **Specify Character Sets (Canonicalization)**:

	- Ensures that data conforms to a standard character encoding (e.g., UTF-8), which reduces encoding-based vulnerabilities.
	- Example:

```python
def validate_utf8(data):
try:
	data.encode('utf-8')
except UnicodeEncodeError:
	raise ValueError("Invalid UTF-8 data")
return True
```

5 **Reject Invalid Input**:

	- Invalid data should be outright rejected, with an appropriate error response (e.g., HTTP 400 for bad requests).

	- Ensures that data doesn’t silently fail, which could lead to unexpected issues later.

6. **Additional Coding Scenarios**:
	- Validate data types (e.g., ensure integers where required).
	- Check data ranges to prevent overflow or underflow vulnerabilities.
	- Implement additional controls if potentially hazardous input is allowed.

---

## Output Encoding

Output encoding ensures that user-generated data cannot interfere with or alter the application’s intended functionality by encoding it before rendering it in HTML, JavaScript, or other interpretable contexts. It ensures that data is treated as text rather than executable code.

### Key Principles and Best Practices
1. **Server-Side Encoding**:
   - Perform encoding server-side to prevent an attacker from injecting code.
	   - Use of `html.escape()` to convert special characters like `>`, `<`, `&` and `"` into their HTML-Safe equivs
   - Example (Python/Flask):









     ```python
     from flask import Flask, render_template_string, request
     import html

     app = Flask(__name__)

     @app.route('/submit_comment', methods=['POST'])
     def submit_comment():
         user_comment = request.form['comment']
         encoded_comment = html.escape(user_comment)
         return render_template_string('<p>{{ comment }}</p>', comment=encoded_comment)
     ```










2. **Standardized Encoding Routines**:
   - Use tested routines specific to each data type to ensure encoding works correctly in HTML, JavaScript, and URLs.
   - Example (Java with OWASP Java Encoder):









     ```java
     import org.owasp.encoder.Encode;

     public class OutputEncodingExample {
         public static void main(String[] args) {
             String userInput = "<script>alert('XSS');</script>";
             
             // HTML encoding
             String htmlEncoded = Encode.forHtml(userInput);
             System.out.println("HTML Encoded: " + htmlEncoded);
             
             // JavaScript encoding
             String jsEncoded = Encode.forJavaScript(userInput);
             System.out.println("JavaScript Encoded: " + jsEncoded);
             
             // URL encoding
             String urlEncoded = Encode.forUriComponent(userInput);
             System.out.println("URL Encoded: " + urlEncoded);
         }
     ```










3. **Contextual Encoding**:
   - Use context-specific encoding. For example, encoding for HTML output prevents HTML injection but may not protect against JavaScript injection unless encoded accordingly.

4. **Specify Character Sets for Outputs**:
   - Define character sets like UTF-8 to ensure encoding compatibility and prevent issues with special characters.
   - Example (PHP):









     ```php
     header('Content-Type: text/html; charset=UTF-8');
     $user_input = "<script>alert('XSS');</script>";
     $encoded_input = htmlspecialchars($user_input, ENT_QUOTES, 'UTF-8');
     echo "<p>$encoded_input</p>";
     ```










5. **Output Encoding for Various Contexts**:
   - Encoding in HTML replaces special characters like `<` with `&lt;`.
   - Encoding in JavaScript prevents executable scripts by encoding characters like `<` and `>`.

### Additional Coding Scenarios for Output Encoding
   - Encode all data from untrusted sources before outputting it to the client.
   - Ensure output encoding is compatible with all systems (e.g., XML, SQL, LDAP).
   - Encode data in OS commands to prevent command injection.

---

# Lecture 14 & 15: Secure Coding Practices (Authentication and Password Management)


## 1. **Password Storage**
- **Guideline**: Store only salted, cryptographic hashes of passwords—never store plain-text passwords. Always hash passwords on a trusted server to prevent exposure.
- **Implementation**: Use strong one-way hash functions like `bcrypt` with unique salts to protect against attacks.






  ```python
  from bcrypt import hashpw, gensalt, checkpw

  # Storing a new password
  def store_password(plain_password):
      salt = gensalt()
      hashed_password = hashpw(plain_password.encode(), salt)
      return hashed_password

  # Verifying a password
  def verify_password(stored_hash, attempted_password):
      return checkpw(attempted_password.encode(), stored_hash)
  ```







## 2. **Password Complexity and Length**
- **Guideline**: Enforce complexity (uppercase, lowercase, digits, special characters) and minimum length requirements to guard against brute-force attacks.
- **Implementation**: Define password rules that meet security standards, typically requiring a minimum of 8 characters.






  ```python
  import re

  def validate_password_complexity(password):
      # Password must have at least 8 characters, an uppercase, a lowercase, a digit, and a special character
      if len(password) < 8: return False
      if not re.search(r"[A-Z]", password): return False
      if not re.search(r"[a-z]", password): return False
      if not re.search(r"[0-9]", password): return False
      if not re.search(r"[@$!%*?&]", password): return False
      return True
  ```







## 3. **Account Lockout**
- **Guideline**: Temporarily disable password entry after multiple failed login attempts to prevent brute-force and credential stuffing attacks.
- **Implementation**: Use an in-memory tracking system to log failed attempts and enforce lockout duration.






  ```python
  from datetime import datetime, timedelta

  failed_login_attempts = {}
  MAX_ATTEMPTS = 5
  LOCKOUT_PERIOD = timedelta(minutes=15)

  def login(username, password):
      current_time = datetime.now()
      if username in failed_login_attempts:
          attempts, lockout_time = failed_login_attempts[username]
          if attempts >= MAX_ATTEMPTS and current_time < lockout_time:
              return "Account is locked. Try again later."
          elif current_time >= lockout_time:
              failed_login_attempts[username] = (0, None)

      # Password verification
      if verify_password(get_stored_password(username), password):
          failed_login_attempts[username] = (0, None)  # Reset on success
          return "Login successful"
      else:
          attempts, _ = failed_login_attempts.get(username, (0, None))
          failed_login_attempts[username] = (attempts + 1, current_time + LOCKOUT_PERIOD)
          return "Invalid password"
  ```







## 4. **Secure Transmission (HTTPS Enforcement)**
- **Guideline**: Use HTTPS for all credential transmission and restrict credential transmission to HTTP POST only.
- **Implementation**: Redirect HTTP to HTTPS to enforce secure connections and apply the `Secure` attribute to session cookies.






  ```python
  from flask import Flask, redirect, request

  @app.before_request
  def enforce_https():
      if not request.is_secure:
          return redirect(request.url.replace("http://", "https://"))
  ```







## 5. **Password Salting**
- **Guideline**: Add unique salts to each password before hashing to prevent attacks using precomputed hash tables (rainbow tables).

*Example in password storage function above.*

## Extended Authentication Controls

### 6. **Access Control**
- **Guideline**: Require authentication for all non-public resources, enforcing controls on a trusted system.
- **Implementation**: Use centralized authentication services, and manage permissions to protect sensitive data from unauthorized access.

### 7. **Centralized Authentication**
- **Guideline**: Implement a standardized, tested authentication service, separating authentication logic from resources and using redirection where necessary.
- **Implementation**: Ensure access control checks fail securely without granting access by default.

### 8. **Credential Management**
- **Guideline**: Store sensitive credentials for external services in secure, encrypted storage and ensure secure transmission.

---

## Additional Authentication Protocols

### 9. **Secure Error Messages**
- **Guideline**: Use generic error messages for failed authentication attempts to avoid exposing which part of the credentials was incorrect.






  ```python
  if not username_exists or not password_correct:
      return "Invalid credentials"
  ```






### 10. **Temporary Passwords and Reset Controls**
- **Guideline**: Send reset links only to pre-registered email addresses. Temporary passwords and reset links should have a short expiration period and require immediate change on the next login.
- **Implementation**: Generate secure reset links with expiration.






  ```python
  import hashlib, time

  def generate_reset_link(user_email):
      expiration_time = int(time.time()) + 600  # 10-minute expiry
      token = hashlib.sha256(f"{user_email}{expiration_time}".encode()).hexdigest()
      return f"https://example.com/reset_password?token={token}&exp={expiration_time}"
  ```






### 11. **Password Change Protocols**
- **Guideline**: Prevent password reuse, enforce change intervals, and ensure passwords are at least a day old before changes.






  ```python
  password_history = {}
  PASSWORD_EXPIRY_DAYS = 90

  def update_password(user_id, new_password):
      for old_password, change_date in password_history.get(user_id, []):
          if checkpw(new_password.encode(), old_password) and (datetime.now() - change_date).days < PASSWORD_EXPIRY_DAYS:
              raise ValueError("New password must be different and cannot be reused")
      password_history[user_id].append((store_password(new_password), datetime.now()))
  ```






---

## User Notifications and Controls

### 12. **Session Security and Notifications**
- **Guideline**: Notify users when password resets occur and report the last login attempts at their next login. Disable "Remember Me" functionality for login forms to prevent session hijacking.
- **Implementation**: Implement logging and tracking for unauthorized access attempts across accounts.

---

## High-Sensitivity Requirements

### 13. **Critical Actions and Re-Authentication**
- **Guideline**: Re-authenticate users before performing high-privilege actions, ensuring it’s as secure as the initial login process.

### 14. **Multi-Factor Authentication (MFA)**
- **Guideline**: Use MFA for highly sensitive accounts, implementing one-time passwords (OTPs) where possible.






  ```python
  import pyotp

  user_secret = pyotp.random_base32()
  def generate_otp(secret):
      return pyotp.TOTP(secret).now()
  ```






---

## Secure Defaults and Vendor Credentials

### 15. **Change Default Credentials**
- **Guideline**: Replace vendor-supplied default credentials, or disable them entirely if not required.
