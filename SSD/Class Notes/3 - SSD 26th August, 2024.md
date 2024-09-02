Here are detailed notes for Lecture 3 in Markdown format based on the content of the provided PDF:

---

# Secure Software Design: Lecture 3

## Today’s Agenda
1. Security Requirements and Design Principles
2. OWASP Guidelines for Secure Software Design at the Use Case Level

## Security Requirements and Design Principles

### Example Security Requirements
1. **Minimum Privilege**:
   - A subject or program should only be given the minimum set of privileges necessary to complete its task.
   - **Principles**:
     - Entities should only have the privileges needed to complete a task.
     - Temporary elevation of privilege should be abandoned immediately.
     - Append permissions only for logging processes.
   - **Examples**:
     - System operators should not perform security administration functions.
     - Run server processes as their own users with only the privileges they require.

2. **Explicit Access Control**:
   - Unless a subject is given explicit access to an object, it should be denied access.
   - **Principles**:
     - Basic access decisions are made on permissions rather than exclusions.
     - Default action is to deny, not grant, access.
     - If an action fails, the system should remain as secure as when the action began.
   - **Examples**:
     - New files are accessible only to their creator.
     - On access requests, the system must retrieve the user ID.

3. **Simplicity in Security Mechanisms**:
   - Security mechanisms should be as simple as possible to facilitate analysis, verification, and testing.
   - **Principles**:
     - Keep design, implementation, operation, and interaction with other components simple.

4. **Open Design**:
   - The security of a mechanism should not depend on the secrecy of its design or implementation.
   - **Principles**:
     - Complexity does not add security; the key should be secret, but the algorithm should be open to public scrutiny.
   - **Examples**:
     - DVD players use player keys to decrypt disk keys on DVDs.

5. **Authorization Check**:
   - Every access to every object must be checked for authority.

6. **Multi-Factor Authorization**:
   - A system should not grant permission based on a single condition.
   - **Principles**:
     - Separation of duties: Functions are divided so that one entity does not control all parts of a transaction.
     - Compartmentalization: A security violation in one process should not affect others.
   - **Examples**:
     - The system should notify users when they log in.
     - Each user activity in Android should have its own virtual machine (sandbox).

7. **Resource Isolation**:
   - Mechanisms used to access resources should not be shared.
   - **Examples**:
     - Compromising a web server could give an attacker access to the entire machine that the web server runs on.

8. **Authority Propagation**:
   - Careful consideration should be given to how changes in authority are propagated in local memories.
   - **Principles**:
     - Every access must be checked against access control mechanisms.
     - Systems should not rely on cached access decisions.

9. **User Transparency**:
   - Security mechanisms should be transparent to users and provide minimal obstructions.
   - **Principles**:
     - If protection doesn’t make sense to the user, they are likely to make errors.

10. **Physical and Logical Isolation**:
    - No physical connection should exist; processes and files of individual users should be isolated.
    - **Examples**:
      - Public access systems should be isolated from critical systems.
      - Logical access control can isolate cryptographic software from other parts to protect against tampering.

11. **Encapsulation**:
    - The internal structure of a data object should only be accessible to the procedures of a protected subsystem.
    - **Principles**:
      - Protection is provided by encapsulating a collection of procedures and data objects in a domain of its own.

12. **Common Cryptographic Modules**:
    - Protocols and applications should be able to invoke common cryptographic modules.
    - **Principles**:
      - Develop separate and protected modules.
      - Modular architecture allows for security mechanisms to support upgrades without redesign.

13. **Defense in Depth**:
    - Failure of one security mechanism should not leave the system unprotected.
    - **Principles**:
      - Implement multiple protection approaches.

14. **Intuitive Security Mechanisms**:
    - Authorization mechanisms should be transparent enough that users have an intuitive understanding of how security goals map to the provided security mechanisms.
    - **Principles**:
      - The user interface should be designed to be as least surprising as possible.

## OWASP Guidelines for Secure Software at the Use Case Level

1. **User Authentication**:
   - **Guideline**: Implement strong authentication mechanisms.
   - **Use Case**: When users log into the application.
   - **Best Practices**:
     - Use multi-factor authentication (MFA) for added security.
     - Store passwords using strong, salted hashing algorithms (e.g., bcrypt).
     - Implement account lockout after a predefined number of failed login attempts.
     - Use secure password recovery mechanisms, avoiding easily guessable security questions.

2. **User Authorization**:
   - **Guideline**: Enforce access controls consistently.
   - **Use Case**: When users attempt to access different resources or features.
   - **Best Practices**:
     - Implement role-based access control (RBAC) to restrict user permissions.
     - Validate permissions server-side, never trusting client-side checks.
     - Apply the principle of least privilege.
     - Regularly review and update permissions as user roles change.

3. **Data Validation**:
   - **Guideline**: Validate all inputs to prevent injection and other attacks.
   - **Use Case**: When accepting input from users, APIs, or other sources.
   - **Best Practices**:
     - Implement input validation on both client and server sides.
     - Use allowlist validation where possible.
     - Sanitize input to remove dangerous characters.
     - Use prepared statements with parameterized queries to avoid SQL injection.

4. **Session Management**:
   - **Guideline**: Securely manage user sessions.
   - **Use Case**: When users interact with the application over multiple requests.
   - **Best Practices**:
     - Use secure, randomly generated session IDs.
     - Store session IDs in secure, HttpOnly cookies.
     - Implement session timeout and logout mechanisms.
     - Use HTTPS to protect session data in transit.

5. **Error Handling and Logging**:
   - **Guideline**: Implement secure error handling and logging practices.
   - **Use Case**: When errors occur or unusual activity is detected.
   - **Best Practices**:
     - Display generic error messages to users while logging detailed errors server-side.
     - Ensure logs do not expose sensitive information.
     - Monitor logs for suspicious patterns.
     - Use secure logging practices to ensure log integrity and confidentiality.

6. **Data Encryption**:
   - **Guideline**: Protect sensitive data using strong encryption.
   - **Use Case**: When storing or transmitting sensitive data.
   - **Best Practices**:
     - Use industry-standard encryption algorithms (e.g., AES-256).
     - Encrypt sensitive data before storing it.
     - Store cryptographic keys securely, separate from the encrypted data.
     - Implement TLS for all data transmissions.

7. **File Uploads**:
   - **Guideline**: Securely handle file uploads to prevent malicious files.
   - **Use Case**: When allowing users to upload files (e.g., images, documents).
   - **Best Practices**:
     - Restrict file types to only necessary ones.
     - Validate and sanitize file names.
     - Store uploaded files outside of the web root.
     - Scan uploaded files for malware.

8. **Cross-Site Scripting (XSS) Prevention**:
   - **Guideline**: Prevent XSS by sanitizing and escaping user input.
   - **Use Case**: When displaying user-generated content on a web page.
   - **Best Practices**:
     - Escape user input before rendering it.
     - Use Content Security Policy (CSP) to restrict script sources.
     - Implement proper output encoding.
     - Sanitize input to remove malicious scripts.

9. **Cross-Site Request Forgery (CSRF) Protection**:
   - **Guideline**: Implement CSRF protection for state-changing requests.
   - **Use Case**: When performing actions that change data.
   - **Best Practices**:
     - Use anti-CSRF tokens unique to each session.
     - Require re-authentication for critical actions.
     - Validate the origin of requests using Referer or Origin headers.
     - Implement same-site cookies.

10. **API Security**:
    - **Guideline**: Secure APIs with robust authentication, authorization, and input validation.
    - **Use Case**: When exposing application functionality through APIs.
    - **Best Practices**:
      - Use OAuth2 for API authentication.
      - Implement rate limiting and throttling.
      - Validate and sanitize API inputs.
      - Encrypt API traffic using TLS.

11. **Secure Software Update Mechanisms**:
    - **Guideline**: Ensure secure distribution and application of software updates.
    - **Use Case**: When providing patches or updates.
    - **Best Practices**:
      - Sign software updates with a cryptographic signature.
      - Use secure channels for update distribution.
      - Implement automatic updates with user consent.
      - Validate update integrity before applying.

12. **Handling Sensitive Data**:
    - **Guideline**: Protect sensitive data throughout its lifecycle.
    - **Use Case**: When processing, storing, or transmitting sensitive information.
    - **Best Practices**:
      - Minimize the storage and exposure of sensitive data.
      - Encrypt sensitive data at