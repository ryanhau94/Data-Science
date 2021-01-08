# Web security - Common attacks
- ## Credential attacks: credential theft, brute-force attacks, dictionary attacks, and credential stuffing.
  - Use long password; Never reuse password (password manager)
  - SSH keys or multi-factor authentication (twofactorauth.org)

- ## URL manipulation and insecure direct object reference (IDOR)
  - Searching for private page, exploring file system, enumerating data base, detecting installed software, or accessing privileged resources

- ## SQL injection
  - Code injection is the top security threat to web applications: probe db structure, steal data, alter data (or elevate permissions), sabotage, bypass authentication.
  - An example: ```$username = "sqli' OR 1=1; --"```. This may allow the hacker to bypass the identity verification stage.
  - An example: ``` $id = ' AND sleep(5); --';```. This tells the hacker if the injection succeeded or help them make guess.
  - To prevent, use SQL sanitization, use SQL Prepared Statements, and use allow-lists to validate data before using it in a query.

- ## Cross-site scripting (XSS)
  - Three types: reflected, stored, and DOM-based.
  - Example of reflected XSS: injecting JS code into a http request like ```GET /register.php?email=<script>...</script>```
  - Defense: data validation (JS, HTML sanitization), allow-list, use HTTPOnly cookies (```Set-Cookie: user_id=24; HttpOnly``` so that they are unavailable to JS), and define a Content Security Policy

- ## Cross-site request forgery (CSRF)
  - To trick the user's browser to send a request to another site. For example, put the url in src attribute of img element to realize fraudulent clicks or votes in an online poll. This attack can be used to change more status.
  - Prevention: use CSRF tokens, which relies on good XSS defenses.

- ## Cookie visibility and theft
  - Cookie is sent in plain text and can be easily stolen.
  - Use session: session stores data on the server while cookie only stores session ID.
  - Setup SSL Certificate and Use HTTPS (```Set-Cookie: user_id=24; Max-Age=3600; HttpOnly; Secure```).

- ## Session hijacking
  - Attackers can use say XSS or eavesdropping on open network to obtain a session ID.

- ## Session fixation
  - Attacker sends the ID to users. Person-in-the-Middle Attack.
  - Prevention: only accept session ID from cookies, regenerate session ID after login, and XSS defenses.

- ## Remote code execution (RCE)
  - All system execution keywords come with big security risks.

- ## File upload abuse
  - Large files or frequent upload. Wrong file type. Malware.

- ## Denial of service (DOS)
  - Flooding or crashing.