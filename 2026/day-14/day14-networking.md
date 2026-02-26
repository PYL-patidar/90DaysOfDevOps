## Networking Task

- OSI layers (L1–L7) vs TCP/IP stack (Link, Internet, Transport, Application)?

## OSI Layers :
OSI (Open Systems Interconnection) introduced a 7-layer architecture for data transfer between network nodes.
7) Application layers
   - User by end-user application
   - Provides network services like:
     - HTTP/HTTPS(web)
     - FTP(file transfer)
     - SMTP(main)
   - Example : web browser

6) Presentation layers
   - Encryption and Compress data
   - Example : Encryption (SSL/TLS), data encoding (JPEG, MP3)
     
5) Session layers
   - Manages sessions (connections) between devices
   - Example : Session login, logout management
     
4) Transport layers
   - Ensures reliable data transfer
   - Handles:
     - Segmentation
     - Flow control
     - Error recovery
   - Protocols: TCP, UDP
     
3) Network layers
   - Handles routing and logical addressing
   - Finds the best path for data
   - Protocol: IP (Internet Protocol)
   - Device: Router
     
2) Data Link layers
   - Handles physical addressing (MAC address)
   - Device: Switch
     
1) Physical layers
   - Responsible for actual data transmission in bits (0s & 1s)
   - Includes cables, voltages, connectors
   - Device: Hub, cables

## TCP/IP Stack Layers

The TCP/IP model consists of 4 layers:
4) Application Layer
  - Provides network services to user applications
  - Examples: HTTP, HTTPS, FTP, SMTP, DNS, SSH

3) Transport Layer
   - Ensures end-to-end communication and reliability
   - Protocols: TCP, UDP

2) Internet Layer
   - Responsible for logical addressing and routing
   - Protocol: IP (Internet Protocol)
   - Example: IP, ICMP
   - Device: Router

1) Network Access Layer
   - Handles physical transmission and MAC addressing
   - Combines OSI Physical + Data Link layers
   - Examples: Ethernet, Wi-Fi
  
## Hands-on Checklist
- `hostname -i/I` set and display system host ip address (Internet Layer)
- `ip addr` Shows addresses assigned to all network interfaces.(Internet Layer)
- `ping <target>` Test connection by sending ICMP packets (Internet Layer)
- `traceroute <target>`Trace packet path (Internet)
- `tracepath <target>`(Internet layer)
- `ss -tulpn` Socket Statistics of Ports & services(Internet layer)
- `netstat -tulpn` Ports & connections (Internet)
- `dig/nslookup` DNS lookup troubleshoot DNS problems (Application)
- `curl` Test web service (Application)
- `nc -zv localhost <port>` (nc)netcat Test ports, create TCP/UDP connections (Transport layer)
- 
Q1) Which command gives you the fastest signal when something is broken?<br>
ANS : ping 

Q2) What layer (OSI/TCP-IP) would you inspect next if DNS fails? If HTTP 500 shows up?<br>
ANS: Application layer 7 for HTTP error an DNS fails check DNS server, resolver config and App logs, backend, DB.

