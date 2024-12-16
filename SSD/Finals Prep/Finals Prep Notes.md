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
- ## Session Management Controls
	- Use the server or framework’s session management tools to manage session identifiers.
	- Ensure only recognized session identifiers are valid.
- ## Session Identifier Security
	- Create session identifiers on a trusted system (server-side, not client-side).
	- Use algorithms that ensure randomness and uniqueness for session identifiers.
	- Avoid exposing session identifiers in URLs, error messages, or logs.
- ## Cookie Security
	- Set domain and path restrictions for cookies with authenticated session identifiers.
	- Mark cookies as `Secure` (transmitted over TLS) and `HttpOnly` (prevent client-side access unless necessary).
- ## Logout and Timeout
	- Fully terminate sessions upon logout.
	- Provide logout functionality on all authorized pages.
	- Implement session inactivity timeouts to balance risk and functionality.
- ## Session Lifecycle Management
	- Disallow persistent logins and enforce periodic session terminations.
	- Create new sessions after a successful login, terminating any pre-login sessions.
	- Generate new session identifiers upon re-authentication or changes in connection security (e.g., HTTP to HTTPS).
- ## Concurrent Sessions
	- Disallow concurrent logins with the same user ID.
- ## Additional Security Measures
	- Periodically generate new session identifiers and deactivate old ones.
	- Use HTTPS consistently for secure communication.
	- Supplement session management with:
		- Per-session random tokens for sensitive operations.
		- Per-request tokens for critical operations.
---
# Lecture 16 & 17: Access Control
---
# Lecture 16 & 17: Cryptographic Practices
---
# Lecture 18 & 19: Error Handling
---
# Lecture 18 & 19: Data Protection
---
# Lecture 20: Database Security, File & Memory Management
---
# Lecture 21 & 22: Static Application Security Testing
---
# Lecture 23 & 24: Dynamic Application Security Testing
---
# Lecture 26: DevSecOps