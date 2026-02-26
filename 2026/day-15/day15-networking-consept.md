## Task 1
Q1) what happens when we type google.com in a browser?<br>
ANS: When we type google.com in a browser:<br>
1. The browser first performs a DNS lookup to resolve google.com into an IP address.<br>
2. It then establishes a TCP connection (and TLS handshake for HTTPS) with the server.<br>
3. The browser sends an HTTP request, and the server responds with the webpage data.<br>
4. Finally, the browser renders the content and displays the page to the user.<br>

Q2) What are these record types? Write one line each:<br>
A, AAAA, CNAME, MX, NS<br>
- A Record : Maps a domain name to an IPv4 address.<br>
- AAAA Record : Maps a domain name to an IPv6 address.<br>
- CNAME Record : Creates an alias, pointing one domain name to another domain name.<br>
- MX Record – Specifies which mail servers handle incoming emails for a domain.<br>
- NS Record – Specifies the authoritative DNS servers that manage the domain’s DNS records.<br>

# Task 2

Q1) What is IPv4 an address? how is it structured?.<br>
- IPv4 (Internet Protocol version 4) is a 32-bit numeric address used to uniquely identify devices on a network.<br>
- It is written in dotted decimal format as four numbers (octets) separated by dots.<br>

Structure:<br>
X.X.X.X → Example: 192.168.1.1<br>
Each number ranges from 0 to 255<br>
Total size: 32 bits (4 bytes)<br>

Q2) Difference between public and private IPs — give one example of each<br>
Public : Used to identify a device on the internet <br>
Example: 8.8.8.8<br>
Private : Used inside a local network (LAN) and not directly accessible from the internet.<br>
Example: 192.168.1.10<br>

Q3) What are the private IP ranges?<br>
Private IPv4 Address Ranges:<br>

10.0.0.0 – 10.255.255.255 → 10.0.0.0/8<br>
172.16.0.0 – 172.31.255.255 → 172.16.0.0/12<br>
192.168.0.0 – 192.168.255.255 → 192.168.0.0/16<br>

Commands for know private and public ip <br>
Private IP → `ip addr`, `hostname -I`<br>
Public IP → `curl ifconfig.me`, `curl ipinfo.io/ip`<br>

## Task <br>
Q1) What does /24 mean in 192.168.1.0/24?<br>
192.168.1.0/24 means that 24 bits are used for the network part, leaving 8 bits for host addresses.<br>
So, total IPs = 2⁸ = 256<br>
Network ID → 192.168.1.0<br>
Broadcast IP → 192.168.1.255<br>
Usable IPs → 254 (from 192.168.1.1 to 192.168.1.254)<br>

Q2) How many usable hosts in a /24? A /16? A /28?<br>
- /24 → 254 usable hosts<br>
- /16 → 65,534 usable hosts<br>
- /28 → 14 usable hosts<br>

Q3) What is a Subnet Mask?<br>
ANS : A subnet mask defines which part of an IP is network and which part is host.<br>

Q4) Explain in your own words: why do we subnet?
We subnet to devide a large network into smaller, manageable parts to improve performance, security and efficient usage of ips.

## Task 4
Q1)  What is a port? Why do we need them?<br>
A port is a logical communication endpoint that helps identify which service or application should receive the network data.<br>
Example:<br>
IP address = house address <br>
Port number = room number <br>

Why do we need Ports?<br>
A single server runs multiple services (web, SSH, email, database, etc.).<br>
Ports differentiate these services, so data reaches the correct application.<br>
Without ports, the system would not know which app should handle the request.<br>

## Task 5
You run curl http://myapp.com:8080 — what networking concepts from today are involved? <br>
Your app can't reach a database at 10.0.1.50:3306 — what would you check first? <br>
ANS :First check connectivity + port access, then firewall rules & DB service status.
