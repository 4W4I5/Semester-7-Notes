| Chapter<br>Number | Chapter<br>Name                       | Status    |
| ----------------- | ------------------------------------- | --------- |
| 4                 | Planning for Security                 | :warning: |
| 6                 | Security Technology: Firewalls & VPNs | :warning: |
| 7                 | Security Technology: IDPS             | :warning: |
| 8                 | Cryptography                          | :warning: |

# Chapter 4: Planning for Security
- InfoSec Planning & Governance
- InfoSec Policy, Standards & Practices
- Policy as the Foundation of Planning
- Enterprise Information Security Policy (EISP)
- Issue-Specific Security Policy (ISSP)
- Systems-Specific (SysSP)
- Policy Management
- The InfoSec Blueprint
- The ISO-27000 Series
- NIST Security Models
- NIST Special Publication 800-14
- NIST CYSEC Framework
- Other Sources of Security Frameworks
- Design of Security Architecture
- Security Education, Training & Awareness Program (SETA)
	- Security Education
	- Security Training
	- Awareness Program
- Continuity Strategies
	- Contingency Planning Process
		- CP Planning
		- Business Impact Analysis (BIA)
	- Incident Response Planning
	- Disaster Recovery Planning
	- Business Continuity Planning
- Crisis Management
- The Consolidated Contingency Plan
- Law Enforcement Involvement
	- Benefits/Drawbacks of Law Enforcement Involvement
# Chapter 6: Security Technology: Firewalls & VPNs
- Physical Design Process
- Firewalls
	- Processing Modes of Firewalls
		- Packet Filtering
		- Application Gateways
		- Circuit Gateways
		- MAC Layer Firewalls
		- Hybrids
	- Firewalls Categorized by Generation
	- Firewalls Categorized by Structure
	- Software vs Hardware: The SOHO Firewall Debate
	- Firewall Architectures
		- Packet Filtering Routers
		- Screened Host Firewalls
		- Dual-Homed Firewalls
		- Screened Subnet Firewalls
	- Selecting the Right Firewall
	- Configuring & Managing Firewalls
	- Best Practices
	- Firewall Rules
	- Content Filters
	- Protecting Remote Connections
	- Remote Access
	- RADIUS, TACACS & Diameter
	- Securing Authn w/ Kerberos
	- Seasme
- Virtual Private Networks (VPNs)
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
### Introduction
- **Cryptology** -> Science of Encryption, includes Cryptography & Cryptanalysis
		- **Cryptography** -> Making and using code to secure messages
		- **Cryptanalysis** -> Cracking or breaking Encrypted messages back into their unencrypted form
	- Foundations of Cryptology (Skipped, nothing to note)
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
### Cipher Methods
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
### Cryptographic Algorithms
- Grouped into
	- #### Symmetric Encryption
	- #### Asymmetric Encryption
### Encryption Key Size
### Cryptographic Tools
### Public-Key Infrastructure (PKI)
### Digital Sigs
### Digital Certs
### Hybrid Cryptography Systems
### Steganography
### Protocols for Secure Communications
### Securing Internet Communication with S-HTTP & SSL
### Securing EMAIL with S/MIME, PEM and PGP
### Securing Web Transactions with SET, SSL, and S-HTTP
### Securing Wireless Networks with WEP & WPA
### Securing TCP/IP with IPSec & PGP