| Lecture<br>Number | Lecture<br>Name                                                                     | Status             |
| ----------------- | ----------------------------------------------------------------------------------- | ------------------ |
| 14 & 15           | Secure Coding Practices: Session Management                                         | :white_check_mark: |
| 16 & 17           | Secure Coding Practices: Access Control                                             | :white_check_mark: |
| 16 & 17           | Secure Coding Practices: Cryptographic Practices                                    | :white_check_mark: |
| 18 & 19           | Secure Coding Practices: Error Handling                                             | :warning:          |
| 18 & 19           | Secure Coding Practices: Data Protection                                            | :warning:          |
| 20                | Secure Coding Practices: Database Security,<br> File Management & Memory Management | :warning:          |
| 21 & 22           | Code Security Testing: SAST                                                         | :warning:          |
| 23 & 24           | Code Security Testing: DAST                                                         | :warning:          |
| 26                | DevSecOps                                                                           | :warning:          |

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
> [!WARNING]
> Missing Auth & Session management 2 code

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

### 7. Additional Recommendations
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
> Missing code

- Implement the principle of least privilege, restricting users to only the necessary functionality, data, and system information required for their tasks.
- Protect cached or temporary copies of sensitive data on the server from unauthorized access, and purge them as soon as they are no longer needed.
- Encrypt highly sensitive stored information, such as authentication data, even on the server side.
- Prevent unauthorized access to server-side source code.
- Avoid storing passwords, connection strings, or other sensitive data in plaintext or insecure formats on the client side.
- Remove comments from user-accessible production code that may expose sensitive backend information.
---
# Lecture 20: Database Security, File & Memory Management
> [!WARNING]
> Missing code


---
# Lecture 21 & 22: Static Application Security Testing
---
# Lecture 23 & 24: Dynamic Application Security Testing
---
# Lecture 26: DevSecOps