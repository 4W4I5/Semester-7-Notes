| Lecture<br>Number | Lecture<br>Name                                                                     | Status             |
| ----------------- | ----------------------------------------------------------------------------------- | ------------------ |
| 14 & 15           | Secure Coding Practices: Session Management                                         | :white_check_mark: |
| 16 & 17           | Secure Coding Practices: Access Control                                             | :warning:          |
| 16 & 17           | Secure Coding Practices: Cryptographic Practices                                    | :warning:          |
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
> [!WARNING]
> Missing code


- Use trusted system objects (e.g., server-side session objects) for access authorization decisions.
- Employ a single, site-wide component for access authorization checks, including libraries for external authorization services.
- Ensure access controls fail securely.
- Deny all access if security configuration information is inaccessible.
- Enforce authorization controls on every request, including those from server-side scripts.
- Segregate privileged logic from general application code.
- Restrict access to files, resources, protected URLs, and protected functions to authorized users only.
---
# Lecture 16 & 17: Cryptographic Practices
> [!WARNING]
> Missing code

- Implement cryptographic functions on trusted systems to protect secrets from users.
- Ensure secrets are protected from unauthorized access.
- Cryptographic modules should fail securely.
- Use approved random number generators from cryptographic modules for generating random numbers, file names, GUIDs, and strings.
- Ensure cryptographic modules comply with standards such as FIPS 140-2 or equivalent.
- Establish and follow a policy and process for managing cryptographic keys.
---
# Lecture 18 & 19: Error Handling
> [!WARNING]
> Missing code

- Deny access by default in error handling logic for security controls.
- Implement logging on trusted systems.
- Ensure logging supports both success and failure of specified security events.
- Include important log event data in logs.
- Prevent execution of untrusted data in log viewing interfaces or software.
- Restrict log access to authorized individuals only.
- Use a central routine for all logging operations.
- ### Best Practices
	- Avoid storing sensitive information in logs (e.g., session identifiers, passwords).
	- Enable log analysis mechanisms.
	- Log critical events such as:
		- Input validation failures.
		- Authentication attempts (especially failures).
		- Access control failures.
		- Apparent tampering events or unexpected state changes.
		- Attempts with invalid or expired session tokens.
		- System exceptions.
		- Administrative functions, including security configuration changes.
		- Backend TLS connection failures.
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