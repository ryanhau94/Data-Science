# Web security - Common attacks
- Credential attacks: credential theft, brute-force attacks, dictionary attacks, and credential stuffing.
  - Use long password; Never reuse password (password manager)
  - SSH keys or multi-factor authentication (twofactorauth.org)

- URL manipulation and insecure direct object reference (IDOR)
  - Searching for private page, exploring file system, enumerating data base, detecting installed software, or accessing privileged resources

- SQL injection
  - Code injection is the top security threat to web applications: probe db structure, steal data, alter data (or elevate permissions), sabotage, bypass authentication.
  - An example: ```$username = "sqli' OR 1=1; --"```. This may allow the hacker to bypass the identity verification stage.
  - An example: ``` $id = ' AND sleep(5); --';```. This tells the hacker if the injection succeeded or help them make guess.

- Cross-site scripting (XSS)

- Cross-site request forgery (CSRF)

- Cross-site request protection

- Cookie visibility and theft

- Session hijacking

- Session fixation

- Remote code execution

- File upload abuse

- Denial of service