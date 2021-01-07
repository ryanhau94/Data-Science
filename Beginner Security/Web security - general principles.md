# Web security - general principles
> ## Awareness + Adequate Protection = Security
## General principles
1. ### Least privilege
   - Only grant necessary accesses
2. ### Simple is more secure
   - Use clearly named functions and variables
   - Write code comments, make notes about security concerns
   - Prefer built-in functions
   - Remove cruft (redundant)
   - Disable unused features
   - Break up long blocks/refactoring
   - Don't repeat yourself
3. ### Never trust users
   - Only extend trust only when necessary
   - Accidental click; Typo; Cut and paste
4. ### Expect the unexpected
   - Security has to be proactive, not reactive
   - Edge cases
5. ### Defense in depth
   - Layered defenses
   - Defensive control:
     - physical: building access, security guards, video cameras, locks, etc.
     - technical (hardware, software and network protections): Firewalls, intrusion detection, antivirus software, event logging, data backups, etc.
     - administrative: training, write a security policy, risk assessments, periodic security reviews, penetration testing, etc.
6. ### Security through obscurity
   - "Loose lips might sink ships": keeping information on a need-to-know basis
   - WhoIs domain lookup
   - This only works best when added to other defenses
7. ### Deny lists and allow lists
   - Allow list is usually more secure
8. ### Map exposure point and data passageways
   - Mapping helps to define thr attack surface: Data input, transition, storage, output, etc.

> Data security: confidentiality, integrity and availability (CIA)