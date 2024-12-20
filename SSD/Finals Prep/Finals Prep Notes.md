| Lecture<br>Number | Lecture<br>Name                                                                     | Status             |
| ----------------- | ----------------------------------------------------------------------------------- | ------------------ |
| 14 & 15           | Secure Coding Practices: Session Management                                         | :white_check_mark: |
| 16 & 17           | Secure Coding Practices: Access Control                                             | :white_check_mark: |
| 16 & 17           | Secure Coding Practices: Cryptographic Practices                                    | :white_check_mark: |
| 18 & 19           | Secure Coding Practices: Error Handling                                             | :white_check_mark: |
| 18 & 19           | Secure Coding Practices: Data Protection                                            | :white_check_mark: |
| 20                | Secure Coding Practices: Database Security,<br> File Management & Memory Management | :white_check_mark: |
| 21 & 22           | Code Security Testing Methods                                                       | :white_check_mark: |
| 23 & 24           | Code Security Testing: DAST                                                         | :white_check_mark: |
| 26                | DevSecOps                                                                           | :white_check_mark: |

---

# Lecture 14 & 15: Session Management
- ### Session Management Controls
	- Use the server or framework’s session management tools to manage session identifiers.
	- Ensure only recognized session identifiers are valid.
- ### Session Identifier Security
	- Create session identifiers on a trusted system (server-side, not client-side).
	- Use algorithms that ensure randomness and uniqueness for session identifiers.
	- Avoid exposing session identifiers in URLs, error messages, or logs.
	- Set cookies with restricted domains and paths.
- ### Cookie Security
	- Set the `Secure` attribute for cookies to ensure they are transmitted only over TLS connections.
	- Use the `HttpOnly` attribute unless client-side scripts specifically require cookie access.
- ### Logout and Timeout
	- Fully terminate sessions upon logout and provide logout functionality on all authorized pages.
	- Implement session inactivity timeouts (e.g., 5 minutes) to mitigate risks from hijacked or unattended sessions.
	- Disallow persistent logins and enforce periodic session terminations, even for active sessions.
- ### Session Lifecycle Management
	- Generate a new session identifier upon:
		- Successful login (invalidate pre-login sessions).
		- Re-authentication or changes in connection security (e.g., HTTP to HTTPS).
		- Periodic intervals to reduce session fixation and hijacking risks.
	- Supplement standard session management with:
		- Per-session random tokens for sensitive operations.
		- Per-request tokens for critical operations.
- ### Concurrent Sessions
	- Disallow concurrent logins with the same user ID to prevent session conflicts and reduce risks from session hijacking.
- ### Additional Measures for Session Security
	- Enforce HTTPS consistently; avoid switching between HTTP and HTTPS.
	- Enable Cross-Site Request Forgery (CSRF) protection on all forms to protect session integrity.
	- Protect session cookies and sensitive data with robust server-side access controls.
	- Periodically regenerate session identifiers and deactivate old ones to enhance security.
	- Use Flask's session features with attributes like `secure=True` and `httponly=True` to mitigate Cross-Site Scripting (XSS) and session hijacking attacks.
- ### Session Expiration
	- Set sessions to expire after a reasonable duration of inactivity to balance usability and security.
	- For sensitive operations, implement idle session timeouts to ensure user activity is required to maintain session validity.
- ### Code 1

```python
from flask import Flask, session, redirect, url_for, request, flash
import datetime
from functools import wraps

app = Flask(__name__)
app.secret_key = 'supersecretkey'  # Use a secure secret key in production

# Centralized authentication decorator
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if 'username' not in session:
            return redirect(url_for('login', next=request.url))
        return f(*args, **kwargs)
    return decorated_function

@app.route('/logout')
@login_required
def logout():
    session.pop('username', None)
    flash('You were successfully logged out')+
    return redirect(url_for('home'))

@app.before_request
def make_session_permanent():
    session.permanent = True
    app.permanent_session_lifetime = datetime.timedelta(minutes=5)  # Set session expiration

@app.before_request
def check_session_id():
    if 'session_id' in session:
        if session['session_id'] != request.cookies.get('session_id'):
            session.clear()
            flash('Session is invalid')
            return redirect(url_for('login'))

@app.after_request
def set_session_id(response):
    if 'username' in session:
        session['session_id'] = request.cookies.get('session_id')
    return response
```

- #### Key Features in Session Management:
	1. **Login Requirement**:
		- The `login_required` decorator ensures only authenticated users can access specific routes.
	2. **Logout**:
		- Removes the session's `username` to log out the user.
	3. **Session Lifetime**:
		- Sessions are set to be permanent with an expiration time of 5 minutes of inactivity using `app.permanent_session_lifetime`.
	4. **Session ID Validation**:
		- Validates the session ID stored in the session against the session ID from cookies to prevent session hijacking.
	5. **Session ID Management**:
		- On each response, updates the session with the current session ID from the cookies.

## Code 2

```python
from flask import Flask, session, redirect, url_for, request, flash
import datetime
from functools import wraps

app = Flask(__name__)
app.secret_key = 'supersecretkey'  # Use a secure secret key in production

# Centralized authentication decorator
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if 'username' not in session:
            return redirect(url_for('login', next=request.url))
        return f(*args, **kwargs)
    return decorated_function

@app.route('/logout')
@login_required
def logout():
    session.pop('username', None)
    flash('You were successfully logged out')
    return redirect(url_for('home'))

@app.before_request
def make_session_permanent():
    session.permanent = True
    app.permanent_session_lifetime = datetime.timedelta(minutes=5)  # Set session expiration

@app.before_request
def check_session_id():
    if 'session_id' in session:
        if session['session_id'] != request.cookies.get('session_id'):
            session.clear()
            flash('Session is invalid')
            return redirect(url_for('login'))

@app.after_request
def set_session_id(response):
    if 'username' in session:
        session['session_id'] = request.cookies.get('session_id')
    return response
```

### **What is Different Compared to the First Version?**

1. **No Changes in Session Management Code**:
	- The session management logic in both versions is identical.
	- Both versions include:
		- **Session Expiration**:
			- `make_session_permanent` sets the session lifetime to 5 minutes.
		- **Session ID Validation**:
			- `check_session_id` compares session ID in cookies with the session-stored ID to prevent session hijacking.
		- **Session ID Assignment**:
			- `set_session_id` updates the session with the cookie-stored `session_id`.
2. **Password and Authentication Enhancements**:
	- The second version introduces significant improvements in password and authentication management (e.g., password strength validation, default password detection, reuse prevention, etc.).
	- However, these changes are unrelated to session management.
3. **No New Tokens or Advanced Session Logic**:
	- Per-request tokens or session revalidation for sensitive operations are not implemented in this version either.
	- No additional handling of concurrent sessions, idle session monitoring, or forced session termination for high-risk activities.
4. **Session Security**:
	- There are no new enhancements like setting cookie flags (`secure=True` and `httponly=True`) in the second version. These were recommended earlier but not yet implemented.


---
# Lecture 16 & 17: Access Control
- Use trusted system objects (e.g., server-side session objects) for access authorization decisions.
- Employ a single, site-wide component for access authorization checks, including libraries for external authorization services.
- Ensure access controls fail securely.
- Deny all access if security configuration information is inaccessible.
- Enforce authorization controls on every request, including those from server-side scripts.
- Segregate privileged logic from general application code.
- Restrict access to files, resources, protected URLs, and protected functions to authorized users only.
## Code example with points highlighted
- ### 1. Use Trusted System Objects for Access Authorization Decisions
	- **Server-Side Session Objects**:
		- The code uses **Flask's `session` object** to manage user authentication and authorization.
		- Access control decisions are based on the session-stored information (`username` and `role`) to ensure that authorization decisions are made securely on the **server-side**, not on the client-side.
**Example**:

```python
if 'username' not in session:
    return redirect(url_for('login'))
```

- ### 2. Employ a Single, Site-Wide Component for Access Authorization Checks
	- **Centralized Authorization Decorators**:
		- The `login_required` decorator ensures that access to protected routes is restricted to authenticated users.
		- The `role_required` decorator enforces **Role-Based Access Control (RBAC)**, ensuring only users with the appropriate role (e.g., `admin`) can access privileged resources.
		- This centralization makes access control **consistent and reusable** throughout the application.
**Example**:

```python
@login_required
@role_required('admin')
def admin():
    return "Admin only area!"
```

- ### 3. Ensure Access Controls Fail Securely
	- If a user does not meet access criteria (e.g., incorrect role), the `role_required` decorator securely **denies access** by redirecting the user to an unauthorized page.
	- No information about restricted resources or logic is exposed.
**Example**:

```python
if 'username' not in session or session.get('role') != role:
    return redirect(url_for('unauthorized'))
```

- **500 Error Handling**: If the system encounters an internal error and cannot retrieve security configurations, it securely denies access instead of failing open.
	**Example**:

```python
@app.errorhandler(500)
def internal_server_error(e):
    return "An internal error occurred, and the application could not retrieve the security configuration.", 500
```

- ### 4. Deny All Access if Security Configuration Information Is Inaccessible
	- In case of an internal error (`500`), the application does not expose sensitive security information and denies all access.
	- The **error handler** ensures that the system fails securely.
- ### 5. Enforce Authorization Controls on Every Request
	- The **`login_required`** and **`role_required`** decorators ensure that **every protected route** checks for proper authorization.
	- This enforcement applies even to requests initiated by **server-side scripts**.
**Example**:

```python
@login_required
def dashboard():
    return f"Welcome to your dashboard, {session['username']}!"
```

- ### 6. Segregate Privileged Logic from General Application Code
	- Privileged routes such as the **admin-only section** (`/admin`) are protected using both `login_required` and `role_required('admin')` decorators.
	- This ensures that admin logic is segregated and inaccessible to general users.
**Example**:

```python
@app.route('/admin')
@login_required
@role_required('admin')
def admin():
    return "Admin only area!"
```

- ### 7. Restrict Access to Files, Resources, Protected URLs, and Functions
	- Access to **protected URLs** (`/dashboard`, `/admin`) is restricted using session-based checks.
	- Unauthorized users are **redirected** to a secure "unauthorized" page with a `403` status code.
**Example**:

```python
@app.route('/unauthorized')
def unauthorized():
    return "You do not have access to this page!", 403
```

- ### 8. Additional Recommendations
	- **Session Security**:
		- Use `secure=True` and `httponly=True` flags for session cookies to protect against **Cross-Site Scripting (XSS)** and ensure cookies are only sent over **HTTPS**.
		- Implement session **timeouts** to minimize the risk of hijacked sessions.
	- **Session Regeneration**:
		- On successful login, regenerate session IDs to prevent **session fixation attacks**.
**Example** (additional logic to add):

```python
session.clear()  # Clear old session
session['username'] = username
session['role'] = user['role']
```

- **Logging and Monitoring**:
	- Log unauthorized access attempts to detect and monitor potential attacks.
- **Rate Limiting**:
	- Implement rate limiting to prevent abuse, such as repeated access attempts to restricted URLs.

---
# Lecture 16 & 17: Cryptographic Practices
- ### 1. Implement Cryptographic Functions on Trusted Systems to Protect Secrets from Users
	- **Fernet Encryption**:
		- The application uses **Fernet** from the `cryptography` library for **symmetric encryption**. Fernet ensures secure encryption and decryption of sensitive data.
		- The cryptographic functions (`encrypt_data` and `decrypt_data`) are implemented securely on the **server-side**, ensuring that secrets are not exposed to users.
**Example**:

```python
def encrypt_data(plain_text):
    return cipher_suite.encrypt(plain_text.encode())

def decrypt_data(encrypted_data):
    try:
        return cipher_suite.decrypt(encrypted_data).decode()
    except:
        return "Decryption failed. Data may have been tampered with."
```

- ### 2. Ensure Secrets Are Protected from Unauthorized Access
	- **Session Keys**:
		- The session key (`app.secret_key`) is generated using a **cryptographically secure random number generator** (`os.urandom`), ensuring it cannot be easily guessed or compromised.

**Example**:

```python
app.secret_key = os.urandom(24)
```

- **Secure Password Storage**:
	- User passwords are stored as **hashed values** using SHA-256. Hashing ensures that raw passwords are never stored in plain text.

**Example**:

```python
users = {
    'admin': {'password_hash': sha256(b'adminpass').hexdigest(), 'role': 'admin'},
    'user': {'password_hash': sha256(b'userpass').hexdigest(), 'role': 'user'}
}
```

- ### 3. Cryptographic Modules Should Fail Securely
	- If cryptographic operations fail (e.g., during decryption), the system **fails securely** without exposing sensitive data.
	- Error messages are generic, and the system does not leak implementation details.
**Example**:

```python
def decrypt_data(encrypted_data):
    try:
        return cipher_suite.decrypt(encrypted_data).decode()
    except:
        # Fail securely if decryption fails
        return "Decryption failed. Data may have been tampered with."
```

- The application also handles **cryptographic module failures** globally using a `500` error handler.

**Example**:

```python
@app.errorhandler(500)
def internal_server_error(e):
    return "An internal error occurred, and cryptographic operations could not complete securely.", 500
```

- ### 4. Use Approved Random Number Generators for Secure Randomness
- The code uses **approved cryptographic random number generators**:
	- `os.urandom` for generating secure session keys.
	- `secrets.token_urlsafe` for generating **secure random strings** (e.g., GUIDs, file names).
**Example**:

```python
def generate_secure_random_string(length=32):
    return secrets.token_urlsafe(length)

app.secret_key = os.urandom(24)
```

- ### 5. Ensure Cryptographic Modules Comply with Standards (e.g., FIPS 140-2)
- **Fernet**:
	- The `cryptography` library's Fernet implementation is **FIPS 140-2 compliant**. It uses AES encryption in **CBC mode** with **HMAC for integrity**, meeting strong security standards.
	- This ensures that encrypted data is protected against tampering.
**Example**:

```python
cipher_suite = Fernet(app.config['SECRET_KEY'])
```

- ### 6. Establish and Follow a Policy and Process for Managing Cryptographic Keys
- The code includes a **key management policy** to emphasize secure storage of encryption keys.
	- Keys are expected to be stored in **environment variables** or a secure vault.
	- If the key is unavailable, the application securely raises an error and refuses to proceed.
**Example**:

```python
def key_management_policy():
    key = os.getenv('FERNET_SECRET_KEY')
    if not key:
        raise ValueError("Encryption key is not set in the environment variables!")
```

## 7. Additional Recommendations
- **Session Security**:
	- Use the `secure=True` and `httponly=True` flags for session cookies to protect against **XSS** and ensure cookies are only transmitted over secure channels (HTTPS).
- **Key Rotation**:
	- Periodically rotate encryption keys to limit the impact of a compromised key.
- **Logging and Monitoring**:
	- Log cryptographic failures (without sensitive data) for monitoring and analysis.
- **Input Validation**:
	- Validate all user-provided input (e.g., encryption data) to prevent misuse of cryptographic functions.

---
# Lecture 18 & 19: Error Handling

- ### Deny Access by Default in Error Handling Logic for Security Controls
	- The application implements a **403 error handler** that denies access by default when unauthorized access attempts are detected.
	- Unauthorized actions trigger warnings in the log file for audit purposes.

**Example**:

```python
@app.errorhandler(403)
def access_denied(error):
    logger.warning("Unauthorized access attempt - access denied by default.")
    return jsonify({"error": "Access Denied"}), 403
```

- ### Implement Logging on Trusted Systems
	- Logging operations occur on the server-side using **RotatingFileHandler**. Logs are securely written to a file stored in a **restricted directory** to prevent tampering.
**Example**:

```python
os.makedirs(LOG_DIR, exist_ok=True)
os.chmod(LOG_DIR, 0o700)  # Restrict directory access for security
handler = logging.handlers.RotatingFileHandler(LOG_FILE, maxBytes=1024 * 1024, backupCount=5)
```

- ### Ensure Logging Supports Both Success and Failure of Specified Security Events
	- The application logs both successful and failed events, such as:
		- Input validation failures.
		- Access control failures.
		- Unauthorized attempts to access sensitive endpoints.

**Examples**:

- **Input Validation Failure**:

```python
if not data or 'email' not in data:
    log_event("Input Validation Failure", "Missing email in request")
    abort(403)
```

- **Access Control Failure**:

```python
if user != "admin":
    log_event("Access Control Failure", f"User '{user}' attempted to access admin area")
    abort(403)
```

- ### Include Important Log Event Data in Logs
	- Logs include critical details such as:
		- Event type.
		- HTTP request method and path.
		- Remote IP address.
		- User information where applicable.
**Example**:

```python
@app.before_request
def log_request():
    log_event("Request", f"{request.method} {request.path} requested by {request.remote_addr}")
```

- ### Prevent Execution of Untrusted Data in Log Viewing Interfaces or Software
	- Access to logs is restricted to **authorized individuals** (admins only).
	- Input validation ensures only authenticated admin users can view logs.
**Example**:

```python
@app.route('/logs', methods=['GET'])
def view_logs():
    user = request.args.get("user", "guest")
    if user != "admin":
        return access_denied(403)
```

- ### Restrict Log Access to Authorized Individuals Only
	- Log files are stored in a restricted directory (`0o700`) to ensure that only the application and administrators have access.
**Example**:

```python
os.makedirs(LOG_DIR, exist_ok=True)
os.chmod(LOG_DIR, 0o700)
```

- Additionally, only users with the **admin role** can view the log content via the `/logs` endpoint.
- ### Use a Central Routine for All Logging Operations
	- A centralized `log_event` function handles all logging operations, ensuring consistent formatting and preventing sensitive data leakage.
**Example**:

```python
def log_event(event_type, details=""):
    if not isinstance(details, str):
        details = str(details)
    if "password" in details.lower():
        details = "[REDACTED]"
    log_message = f"Event Type: {event_type}, Details: {details}"
    logger.info(log_message)
```

- ### Best Practices
	- **Run Mode Security**:
		- The `app.run` should explicitly define `debug` set to False to ensure debug mode is disabled
**Example**:

```python
app.run(debug=False)
```

	- **Avoid Storing Sensitive Information in Logs**:
	    - The `log_event` function redacts sensitive details such as passwords to prevent accidental exposure.

**Example**:

```python
if "password" in details.lower():
    details = "[REDACTED]"
```

- **Enable Log Analysis Mechanisms**:
	- Logs are stored in a structured format (`%(asctime)s - %(name)s - %(levelname)s - %(message)s`), which allows for automated log analysis and monitoring.
- **Log Critical Events**:
	- Input validation failures.
	- Access control failures.
	- Authentication attempts, particularly failures.
	- Apparent tampering or unexpected state changes.
	- Attempts with invalid or expired session tokens.
	- System exceptions.
	- Administrative activities like log access and configuration changes.

**Example of Critical Event Logging**:

```python
if response.status_code >= 400:
    log_event("System Exception", f"{request.method} {request.path} returned {response.status_code}")
```

- **Backend TLS Connection Failures**:
	- Log errors and failures related to system or cryptographic modules (e.g., while reading files or processing requests).
**Example**:

```python
except IOError as e:
    logger.error("Error reading logs: %s", e)
    return jsonify({"error": "Unable to read logs"}), 500
```

- ### Additional Notes
	- Rotating logs using `RotatingFileHandler` ensures log files do not grow indefinitely, improving manageability and reducing the risk of denial-of-service from excessive log growth.
	- Access control for critical operations (e.g., viewing logs) ensures logs cannot be accessed or manipulated by unauthorized individuals.
---
# Lecture 18 & 19: Data Protection
> [!WARNING]
> Missing code, N/A in GCR


- **Least Privilege**: Restrict users using RBAC mechanisms.
- **Temporary Data**: Securely store and delete cached or temporary data.
- **Encryption**: Encrypt sensitive stored data using strong cryptographic libraries (e.g., `cryptography`).
- **Server-Side Source Code**: Block unauthorized access to backend files and directories.
- **No Plaintext Storage**: Store secrets in environment variables or secure vaults, not in plaintext.
- **Strip Comments**: Remove comments and debug information from production code.

---
# Lecture 20: Database Security, File & Memory Management
- ### **1. Database Security**
	- **Overview:**
		- OWASP emphasizes securing database access by enforcing strong authentication, using parameterized queries to prevent SQL injection, and applying least privilege principles. Regular database updates and patching mitigate vulnerabilities.
	- **Best Practices:**
		- Use **Parameterized Queries** to prevent SQL Injection.
		- Enforce **Least Privilege** for database accounts.
		- Enable **Strong Authentication** mechanisms.
		- Regularly **patch and update** database systems.
- ### Example: Secure Database Query with Parameterized Queries (Python + SQL)

```python
import sqlite3

# Secure SQL query using parameterized statements
def fetch_user_data(user_id):
    try:
        conn = sqlite3.connect("secure_db.db")
        cursor = conn.cursor()

        # Parameterized query to prevent SQL Injection
        query = "SELECT * FROM users WHERE id = ?"
        cursor.execute(query, (user_id,))

        result = cursor.fetchall()
        print("User Data:", result)
    except Exception as e:
        print("Database Error:", e)
    finally:
        conn.close()

# Example usage
fetch_user_data(1)
```

- ### Example: Principle of Least Privilege
	- Ensure database users only have the required permissions.

```sql
-- Create a user with restricted privileges
CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'StrongPassword123!';
GRANT SELECT, INSERT, UPDATE ON secure_db.* TO 'app_user'@'localhost';
```

- ### **2. File Management**
	- **Overview:**
		- Secure handling of files includes validating file types, enforcing strict access controls, and storing files securely. Avoid executing untrusted files and sanitize file names.
	- **Best Practices:**
		- Validate file types and sizes before storage.
		- Use secure directories for file storage.
		- **Sanitize file names** to prevent directory traversal attacks.
		- Avoid execution of untrusted files.
- ### Example: Secure File Upload Validation (Python)

```python
import os
from werkzeug.utils import secure_filename

UPLOAD_FOLDER = '/secure/uploads'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'png', 'jpg', 'jpeg'}

def allowed_file(filename):
    # Validate file type
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def upload_file(file):
    if file and allowed_file(file.filename):
        # Sanitize filename
        filename = secure_filename(file.filename)
        file.save(os.path.join(UPLOAD_FOLDER, filename))
        print("File uploaded successfully!")
    else:
        print("Invalid file type!")

# Example usage
# upload_file(request.files['file'])
```

- ### Example: Preventing Directory Traversal Attacks
	- **Do not trust user input for file paths. Use secure, absolute paths.**

```python
import os

BASE_DIRECTORY = '/secure/uploads'

def safe_file_access(filename):
    safe_path = os.path.join(BASE_DIRECTORY, os.path.basename(filename))
    if os.path.commonprefix([safe_path, BASE_DIRECTORY]) != BASE_DIRECTORY:
        raise ValueError("Invalid file path!")
    # Access file securely
    with open(safe_path, 'r') as file:
        return file.read()
```

- ## **3. Memory Management**
	- **Overview:**
		- Proper memory management avoids vulnerabilities like buffer overflows and use-after-free bugs. Best practices include validating memory access, securely handling pointers, and freeing memory properly.
	- **Best Practices:**
		- Use safe functions for memory operations.
		- **Validate buffer sizes** to avoid overflows.
		- Securely handle pointers (avoid dangling pointers).
		- Free unused memory to prevent leaks.
- ### Example: Avoid Buffer Overflow (C)

```c
#include <stdio.h>
#include <string.h>

void safe_function(char *input) {
    char buffer[50];

    // Ensuring input does not exceed buffer size
    if (strlen(input) < sizeof(buffer)) {
        strcpy(buffer, input);
        printf("Safe input: %s\n", buffer);
    } else {
        printf("Error: Input exceeds buffer size!\n");
    }
}

int main() {
    char user_input[100];
    printf("Enter input: ");
    fgets(user_input, sizeof(user_input), stdin);
    safe_function(user_input);
    return 0;
}
```

- ### Example: Prevent Memory Leaks (C++ with Smart Pointers)

```cpp
#include <iostream>
#include <memory>

void processData() {
    // Smart pointer automatically manages memory
    std::unique_ptr<int> ptr = std::make_unique<int>(10);
    std::cout << "Value: " << *ptr << std::endl;
} // Memory is released here automatically

int main() {
    processData();
    return 0;
}
```

## **Summary Checklist**
1. **Database Security**:
	- Use parameterized queries.
	- Enforce least privilege.
	- Update and patch databases regularly.
2. **File Management**:
	- Validate file types and sizes.
	- Store files in secure directories.
	- Sanitize file names to prevent path traversal.
3. **Memory Management**:
	- Prevent buffer overflows.
	- Securely handle memory allocations.
	- Avoid dangling pointers and memory leaks.
---
# Lecture 21 & 22: Code Security Testing Methods
## **1. Code Security Testing Methods**
- ### **1.1 Static Code Analysis (SAST)**
	- **Description:**
		- SAST is the process of analyzing source code _without execution_ to identify vulnerabilities like SQL injection, buffer overflows, insecure coding practices, and other security flaws.
		- Conducted in the early stages of development as part of the Secure Software Development Life Cycle (SDLC).
	- **Tools:**
		- SonarQube
		- Checkmarx
		- Veracode
		- Fortify
	- **Advantages:**
		- Detects issues early before code is executed.
		- Integrates well into CI/CD pipelines, allowing automation.
		- Identifies common vulnerabilities like injection flaws and improper error handling.
	- **Disadvantages:**
		- Produces **false positives** where non-critical issues are flagged.
		- Cannot identify vulnerabilities that arise only during **runtime** execution.
- ### **1.2 Dynamic Code Analysis (DAST)**
	- **Description:**
		- DAST analyzes the application while it is running to uncover vulnerabilities such as authentication flaws, misconfigurations, and insecure APIs.
		- Focuses on real-world attack scenarios and runtime behaviors.
	- **Tools:**
		- OWASP ZAP
		- Burp Suite
		- Acunetix
		- Netsparker
	- **Advantages:**
		- Detects **runtime vulnerabilities** such as logic flaws and misconfigurations.
		- Simulates real-world attacks on the application to assess its security posture.
	- **Disadvantages:**
		- Requires the application to be in a **deployable state**.
		- Cannot detect vulnerabilities in source code before runtime.
- ### **1.3 Manual Code Review**
	- **Description:**
		- Security experts or developers manually inspect the code to identify vulnerabilities, insecure design patterns, and deviations from secure coding guidelines.
		- Requires following established standards like **OWASP**, **CERT**, and secure coding best practices.
	- **Best Practices:**
		- Focus on input validation, output encoding, authentication, and encryption.
		- Prioritize reviewing critical code areas (e.g., business logic).
	- **Advantages:**
		- Can uncover **complex logic flaws** that automated tools may miss.
		- Allows detailed analysis of custom or non-standard implementations.
	- **Disadvantages:**
		- Time-consuming and labor-intensive.
		- Requires expertise in secure coding and understanding application logic.
- ### **1.4 Peer Code Review**
	- **Description:**
		- Developers review each other's code as part of the development workflow (e.g., using **pull requests** on GitHub).
	- **Advantages:**
		- Identifies issues early in development.
		- Promotes knowledge sharing and best practices among team members.
	- **Disadvantages:**
		- Developers may overlook **security-specific flaws** without proper training.
		- Limited scope compared to dedicated security reviews.
- ### **1.5 Fuzz Testing (Fuzzing)**
	- **Description:**
		- Automated testing that feeds an application with random, unexpected, or malformed inputs to uncover vulnerabilities like crashes, buffer overflows, or unhandled exceptions.
	- **Tools:**
		- AFL (American Fuzzy Lop)
		- Peach Fuzzer
		- Sulley Framework
		- libFuzzer
	- **Advantages:**
		- Highly effective at finding memory-related vulnerabilities (e.g., buffer overflows).
		- Can identify application weaknesses under unusual input conditions.
	- **Disadvantages:**
		- Resource-intensive and requires a well-defined test environment.
		- Difficult to analyze the root cause of discovered issues.
- ### **1.6 Penetration Testing (Pen Testing)**
	- **Description:**
		- Simulates real-world attacks to identify and exploit vulnerabilities in an application.
		- Types:
			- **Black-box testing:** No prior knowledge of the application.
			- **White-box testing:** Full access to source code and architecture.
			- **Gray-box testing:** Partial knowledge of the application.
	- **Advantages:**
		- Mimics real-world attack scenarios to identify critical vulnerabilities.
		- Assesses the application’s **defense mechanisms** and overall security posture.
	- **Disadvantages:**
		- Time-consuming and expensive.
		- Internal flaws may remain undetected unless white-box or gray-box testing is performed.
- ### **1.7 Security Unit Testing**
	- **Description:**
		- Integrates security-specific checks into unit tests to verify secure behavior of individual functions, modules, or classes.
	- **Tools:**
		- JUnit (Java)
		- pytest (Python)
		- NUnit (C#)
	- **Advantages:**
		- Detects security issues early in the development process.
		- Seamlessly integrates with standard testing frameworks.
	- **Disadvantages:**
		- Limited scope as it focuses only on specific modules or functions.
- ### **1.8 Interactive Application Security Testing (IAST)**
	- **Description:**
		- Combines features of **SAST** and **DAST** by analyzing code and runtime behavior simultaneously during execution.
	- **Tools:**
		- Contrast Security
		- Seeker (by Synopsys)
	- **Advantages:**
		- Provides more accurate results by combining static and runtime analysis.
		- Detects security flaws during execution that cannot be found by SAST or DAST alone.
	- **Disadvantages:**
		- Resource-intensive and may impact application performance.
- ### **1.9 Software Composition Analysis (SCA)**
	- **Description:**
		- Scans third-party libraries and dependencies to identify known vulnerabilities in open-source components.
	- **Tools:**
		- Snyk
		- WhiteSource
		- OWASP Dependency-Check
		- Black Duck
	- **Advantages:**
		- Identifies vulnerabilities in third-party libraries.
		- Ensures compliance with open-source software licenses.
	- **Disadvantages:**
		- Limited to **known vulnerabilities**; cannot detect zero-day issues.
		- Does not address issues in custom code.
- ### **1.10 Security Regression Testing**
	- **Description:**
		- Ensures that previously fixed security vulnerabilities do not reappear after new changes to the code.
		- Can be automated as part of a regression test suite.
	-**Advantages:**
		- Prevents reintroduction of security flaws after updates.
		- Automates security checks in CI/CD pipelines.
	- **Disadvantages:**
		- Requires regular updates and maintenance of test suites.
## **2. Common Vulnerabilities and Fixes**
### 1. **SQL Injection**
	- Vulnerability: Unsanitized user inputs are used in SQL queries.
- Example:

```python
query = "SELECT * FROM users WHERE id = " + user_id
```

- Fix: Use parameterized queries.

```python
query = "SELECT * FROM users WHERE id = ?"
cursor.execute(query, (user_id,))
```

### 2. **Command Injection**
- Vulnerability: User inputs are passed to system commands.
- Example:

```python
os.system("ls " + directory)  
```

- Fix: Use subprocess module with argument sanitization.

```python
subprocess.run(["ls", directory], check=True)  
```

### 3. **Path Traversal**
- Vulnerability: Improper file path validation allows unauthorized access to sensitive files.
- Example:

```python
with open("/data/" + filename, "r") as file:  
return file.read()  
```

- Fix: Validate file names and sanitize inputs.

```python
if ".." in filename:  
raise ValueError("Invalid filename")  
with open(os.path.join("/data", filename), "r") as file:  
return file.read()  
```

### 4. **Hardcoded Secrets**
- Vulnerability: Secrets (e.g., API keys, passwords) are hardcoded in the source code.
- Example:

```python
API_KEY = "my_secret_api_key"  
```

- Fix: Use environment variables.

```python
API_KEY = os.getenv("API_KEY")  
```

### 5. **Insufficient Logging**
- Vulnerability: Failed logins or suspicious activity are not logged.
- Fix: Log security events with appropriate levels.

```python
logging.warning("Failed login attempt for user %s", user)  
```

### 6. **Weak Cryptography**
- Vulnerability: Use of outdated encryption algorithms (e.g., DES).
- Example:

```python
cipher = DES.new(b"12345678", DES.MODE_ECB)  
```

- Fix: Replace DES with strong algorithms like AES.

```python
cipher = AES.new(b"mysecretpassword", AES.MODE_ECB)  
```

## **3. Summary Table**

| **Method**                  | **Type**      | **Advantages**                    | **Disadvantages**            |
| --------------------------- | ------------- | --------------------------------- | ---------------------------- |
| SAST                        | Pre-execution | Early issue detection             | False positives              |
| DAST                        | Runtime       | Identifies runtime flaws          | Needs deployable code        |
| Manual Code Review          | Pre-execution | Detects logic flaws               | Time-consuming               |
| Peer Code Review            | Pre-execution | Knowledge sharing                 | Limited security focus       |
| Fuzz Testing                | Runtime       | Uncovers crashes and input issues | Resource-intensive           |
| Pen Testing                 | Runtime       | Simulates real-world attacks      | Expensive                    |
| Security Unit Testing       | Pre-execution | Integrates into development       | Limited scope                |
| IAST                        | Mixed         | Combines SAST and DAST benefits   | Performance impact           |
| SCA                         | Pre-execution | Detects library vulnerabilities   | Limited to known issues      |
| Security Regression Testing | Pre-execution | Prevents reintroduction of bugs   | Requires regular maintenance |

---
# Lecture 23 & 24: Dynamic Application Security Testing

## **1. Dynamic Application Security Testing (DAST)**
- ### **1.1 Cross-Site Scripting (XSS)**
	- **Vulnerability:**
		- XSS allows attackers to inject malicious scripts into web pages viewed by other users.
- **Example Code:**

```python
from flask import Flask, request, render_template_string  
app = Flask(__name__)  

@app.route("/greet", methods=["GET"])  
def greet():  
    name = request.args.get("name", "")  
    return render_template_string(f"<h1>Hello, {name}!</h1>")  
```

- **Fix:** Escape user inputs to prevent script injection.

```python
from flask import escape  

@app.route("/greet", methods=["GET"])  
def greet():  
    name = escape(request.args.get("name", ""))  
    return render_template_string(f"<h1>Hello, {name}!</h1>")  
```

- **Explanation:**
	- **`escape`** sanitizes input by replacing special characters with HTML-safe equivalents.
- ### **1.2 SQL Injection**
- **Vulnerability:**
	- Occurs when user input is directly included in SQL queries, allowing attackers to manipulate the database.
- **Example Code:**
```python
import sqlite3  
from flask import Flask, request  

app = Flask(__name__)  

@app.route("/user")  
def get_user():  
    user_id = request.args.get("id")  
    conn = sqlite3.connect("users.db")  
    cursor = conn.cursor()  
    cursor.execute("SELECT * FROM users WHERE id = " + user_id)  
    return cursor.fetchall()  
```

- **Fix:** Use parameterized queries to treat input as data, not executable code.
```python
cursor.execute("SELECT * FROM users WHERE id = ?", (user_id,))  
```

- **Explanation:**
	- Parameterized queries ensure that user input is safely passed to the database query, preventing injection.
- ### **1.3 Command Injection**
- **Vulnerability:**
	- Occurs when user input is passed to OS commands, potentially allowing arbitrary execution.
- **Example Code:**
```python
import os  
from flask import Flask, request  

app = Flask(__name__)  

@app.route("/run")  
def run_command():  
    command = request.args.get("command")  
    os.system("echo " + command)  
    return "Command executed."  
```

- **Fix:** Use `subprocess.run` with proper argument handling.

```python
import subprocess  

@app.route("/run")  
def run_command():  
    command = request.args.get("command")  
    subprocess.run(["echo", command], check=True)  
    return "Command executed."  
```

- **Explanation:**
	- **`subprocess.run`** safely executes commands with arguments instead of concatenating inputs.

## **2. Fuzz Testing**
- ### **2.1 Overview**
	- Fuzz testing (fuzzing) is an automated technique that injects random, malformed, or unexpected inputs into an application to find security flaws.
	- Effective for detecting vulnerabilities like buffer overflows, input validation issues, and crashes.
- ### **2.2 Fuzz Testing Examples**
	- #### **Basic Input Validation**
		- **Vulnerability:**
			- Insecure handling of input.
		- **Example Code:**
```python
def process_input(data):  
    if data.isdigit():  
        return int(data) * 2  
    else:  
        return "Invalid input"  
```

- **Fuzzing Test Code:**
```python
from pythonfuzz.main import PythonFuzz  

@PythonFuzz  
def fuzz_test_input(data):  
    try:  
        result = process_input(data.decode("utf-8", "ignore"))  
    except Exception as e:  
        print(f"Error found with input: {data} - Exception: {e}")  
        raise e  

if __name__ == "__main__":  
    fuzz_test_input()  
```

- **Fix:** Validate input length and content.
```python
def process_input(data):  
    if data and data.isdigit() and len(data) < 10:  
        return int(data) * 2  
    else:  
        return "Invalid input"  
```

- #### **SQL Injection Fuzzing**
	- **Goal:** Test input validation against SQL injection.
- **Example Code:**
```python
def fetch_user(username):  
    connection = sqlite3.connect(":memory:")  
    cursor = connection.cursor()  
    cursor.execute("CREATE TABLE users (name TEXT, age INTEGER)")  
    cursor.execute("INSERT INTO users VALUES ('Alice', 30), ('Bob', 25)")  
    query = f"SELECT * FROM users WHERE name = '{username}'"  
    cursor.execute(query)  
    return cursor.fetchall()  
```
- **Fix:** Use parameterized queries.
```python
query = "SELECT * FROM users WHERE name = ?"  
cursor.execute(query, (username,))  
```

- #### **Buffer Overflow Fuzzing**
	- **Vulnerability:** Mishandling large inputs leads to buffer overflow.
- **Example Code:**
```python
def process_large_data(data):  
    buffer = bytearray(64)  
    for i, byte in enumerate(data):  
        buffer[i] = byte  
```

- **Fix:** Limit input size to prevent overflow.
```python
def process_large_data(data):  
    buffer = bytearray(64)  
    for i, byte in enumerate(data[:64]):  
        buffer[i] = byte  
```

## **3. Software Composition Analysis (SCA)**

- ### **3.1 Overview**
	- **SCA** analyzes third-party libraries and dependencies for known vulnerabilities, version conflicts, and license compliance issues.
	- Crucial for modern applications relying heavily on open-source components.
- ### **3.2 Examples**
	- #### **Outdated Dependencies**
		- **Vulnerability:** Older versions of dependencies may contain known security risks.
- Example:
```
Django==2.2  
requests==2.19.1  
pandas==0.24.2  
```

- Fix: Update dependencies to secure versions.
```
Django==3.2.5  
requests==2.22.0  
pandas==1.3.0  
```

- #### **Vulnerable Dependency with Known CVEs**
	- **Goal:** Identify dependencies with vulnerabilities using SCA tools.
- Example:
```
requests==2.20.0  
```
- Fix: Update to a secure version.
```
requests==2.22.0  
```
- #### **License Compliance Issues**
	- **Goal:** Ensure dependencies comply with licensing policies.
- Example:
```
some-unknown-library==1.0.0  
```
- Fix: Replace with compatible alternatives.
```
lxml==4.6.3  
```

- #### **Automated SCA in CI/CD Pipelines**
	- **Goal:** Integrate SCA tools into CI/CD to monitor dependencies continuously.
- **Example CI/CD Pipeline:**

```yaml
name: Security Scan  
on: [push]  
jobs:  
  security-scan:  
    runs-on: ubuntu-latest  
    steps:  
    - uses: actions/checkout@v2  
    - name: Set up Python  
      uses: actions/setup-python@v2  
      with:  
        python-version: '3.x'  
    - name: Install dependencies  
      run: |  
        pip install safety  
    - name: Run SCA with Safety  
      run: |  
        safety check --full-report  
```
- **Fix:** Regularly update dependencies based on tool recommendations.
## **4. Key Points for Exam Preparation**
1. **DAST** focuses on runtime vulnerabilities like XSS, SQL Injection, and Command Injection.
2. **Fuzz Testing** identifies input validation errors, buffer overflows, and parsing issues.
3. **SCA** helps secure software supply chains by analyzing third-party dependencies.
4. Understand vulnerabilities and fixes for:
	- **XSS**: Escape user inputs.
	- **SQL Injection**: Use parameterized queries.
	- **Command Injection**: Use `subprocess.run`.
	- **Buffer Overflow**: Validate input size.
---
# Lecture 26: DevSecOps
## **DevOps**
- **Definition:**
	- DevOps combines Software Development (Dev) and IT Operations (Ops) to shorten the Systems Development Life Cycle (SDLC) and provide continuous delivery with high software quality.
- **Key Features:**
	- **Automation Tools:** Utilizes tools like Puppet, Jenkins, GitHub, and various code editors to automate development and operations tasks.
	- **Collaboration:** Emphasizes close collaboration between development and operations teams, often involving role exchanges and shared responsibilities.
	- **High-Scale Application Delivery:** Targets large-scale applications, ensuring that development from coding to production covers all aspects seamlessly.
	- **Continuous Integration and Delivery:** Focuses on automating steps to maintain continuous delivery and integration, ensuring rapid and reliable software releases.
- **Roles:**
	- **Development Team:**
		- Writes code
		- Designs new features
		- Tests features
	- **Operations Team:**
		- Manages servers
		- Handles scaling issues and bandwidth
		- Ensures security
		- Manages backups
## **DevSecOps**
- **Definition:**
	- DevSecOps integrates **Security** into DevOps, embedding security practices throughout the entire SDLC: planning, development, build, test, deploy, operate, and monitor.
- **Key Features:**
	- **Shared Security Responsibility:** Every employee and team, including development and operations, is responsible for security.
	- **Automated Security Integration:** Combines application development, security, operations, and Infrastructure as Code (IaC) in an automated, continuous delivery cycle.
	- **Protection Against Attacks:** Builds defenses into the development pipeline to prevent supply chain attacks and compromises in CI/CD processes.
- **Advantages:**
	- **Faster, More Secure Delivery:** Reduces the cost of compliance and accelerates the delivery of secure software.
	- **Enhanced Collaboration:** Security becomes a collective responsibility, fostering better collaboration between teams.
	- **Proactive Security Measures:** Integrates security checks and defenses early in the development process, minimizing vulnerabilities.

## **DevSecOps Process for Ransomware Prevention**
- **Ransomware:**
	- A type of malware that encrypts data on a victim’s computer, demanding payment to release it.
- ### **Steps to Address Ransomware:**
	1. **Develop:**
		- Educate developers about vulnerabilities that can lead to ransomware and related threats.
	2. **Build & Test:**
		- Verify that no known ransomware vulnerabilities exist in software artifacts, including third-party components and container images.
	3. **Deploy:**
		- Ensure that Infrastructure as Code (IaC) templates, deployment tools, and cloud environments are scanned and free of malware and ransomware.
	4. **Update:**
		- Protect CI/CD infrastructure to prevent supply chain attacks that could inject ransomware during updates.
		- Prioritize and deploy security updates immediately to mitigate ransomware threats.
	5. **Monitor:**
		- Implement ransomware-specific monitoring in production environments.
		- Use tools like File Integrity Monitoring (FIM) and Endpoint Detection and Response (EDR) to identify ransomware activities early.
	6. **Evolve:**
		- Continuously review and update ransomware controls based on lessons learned from recent attacks in relevant industries.

## **Examples of Ransomware Attacks**
1. **Colonial Pipeline Attack:**
	- **Incident:** Attackers compromised a VPN password and deployed ransomware on the company’s network.
	- **Impact:** Shutdown of the fuel pipeline, causing fuel shortages across the East Coast of the U.S.
	- **Ransom Paid:** $4.5 million.
2. **Kaseya Attack:**
	- **Incident:** Attackers injected ransomware into a software update of a trusted IT solution.
	- **Impact:** Distributed to thousands of organizations, infecting them with ransomware.
3. **JBS Foods:**
	- **Incident:** Ransomware attack shut down slaughterhouses in three countries.
	- **Impact:** Disrupted the global meat supply chain.
	- **Ransom Paid:** $11 million.

## **Key Concepts for Exam**
- **DevOps vs. DevSecOps:**
	- Understand the differences and how security is integrated into DevOps to form DevSecOps.
- **Benefits of Integrating Security into DevOps:**
	- Faster and more secure software delivery
	- Reduced compliance costs
	- Enhanced protection against vulnerabilities and attacks
- **Steps in DevSecOps for Ransomware Prevention:**
	- Develop, Build & Test, Deploy, Update, Monitor, and Evolve
- **Real-World Ransomware Examples and Solutions:**
	- Familiarize yourself with cases like Colonial Pipeline, Kaseya, and JBS Foods to understand the impact and mitigation strategies.

**Tip:** Focus on the **DevSecOps process steps** and real-world ransomware attack examples, as these are crucial for understanding practical security integration and its importance in modern software development.