1. What could be the issue if you can ping a server by IP but not by hostname?
Potential Issues:
DNS Issue: The Domain Name System (DNS) is not resolving the hostname to the correct IP address.
Host File Misconfiguration: The /etc/hosts file (on Linux/Unix) or C:\Windows\System32\drivers\etc\hosts (on Windows) may lack the proper mapping.
DNS Server Unreachable: The DNS server may be down or unreachable from the client.
Cache Issue: The DNS cache on the client may be stale or corrupted.
Troubleshooting Steps:
Test DNS resolution using nslookup or dig.
Check and update the local hosts file.
Flush the DNS cache (e.g., sudo systemd-resolve --flush-caches on Linux or ipconfig /flushdns on Windows).
Verify that the DNS server is functioning and reachable.
Check for typos in the hostname.
2. You get a call that a user cannot reach a server. How would you troubleshoot?
Steps to Troubleshoot:
Verify Connectivity:
Ping the server's IP address and hostname.
Use traceroute (Linux) or tracert (Windows) to identify network path issues.
Check Server Status:
Use SSH or RDP to log in to the server.
Check if the server is powered on and responsive.
Firewall and Security Rules:
Verify that firewall rules or security groups allow traffic from the user's IP.
Logs and Monitoring:
Review server logs (e.g., /var/log/messages, /var/log/syslog) for errors.
Reproduce the Issue:
Attempt to replicate the user's steps to narrow down the problem.
3. How to troubleshoot if a website running on your server is down?
Troubleshooting Steps:
Check Website Availability:
Use curl or a browser to check if the website is accessible.
Verify Web Server Status:
Restart the web server (e.g., systemctl restart apache2 or nginx).
Check the server status with systemctl status apache2 or nginx.
Check Application Logs:
Inspect application-specific logs for errors (e.g., /var/log/nginx/error.log or /var/log/httpd/error_log).
DNS Issues:
Confirm that the DNS resolves the website correctly.
Firewall and Network:
Ensure the required ports (e.g., 80/443) are open in the firewall.
Resource Availability:
Verify there is sufficient CPU, memory, and disk space using tools like top, htop, or df.
4. You are notified that a server is down. How to troubleshoot?
Troubleshooting Steps:
Check Server Accessibility:
Ping the server and attempt SSH/RDP login.
Power and Hardware:
Verify that the server is powered on.
Check for hardware alerts if using a physical server.
Application and Services:
Confirm if critical services are running (systemctl list-units or ps).
Disk and Resources:
Check if the disk is full (df -h) or if memory/CPU is exhausted (free -m, top).
Logs and Alerts:
Review logs in /var/log or equivalent.
Check monitoring systems like Nagios or Prometheus for insights.
5. How to handle a situation when your DBA is asking for more memory/disk frequently?
Steps to Address the Issue:
Understand Requirements:
Engage with the DBA to understand why additional resources are needed.
Optimize Resources:
Review database queries and optimize for efficiency.
Purge or archive old data.
Scale Resources:
If justified, provision more memory or disk using cloud scaling or virtualization tools.
Monitoring:
Set up monitoring tools like CloudWatch or Grafana to proactively identify trends.
6. What is your experience with shell scripting? Provide examples.
Experience:
Automating backups using rsync and cron.
Writing deployment scripts for CI/CD pipelines.
Parsing logs and generating reports with awk, sed, and grep.
Examples:
Disk Space Monitoring:
bash
Copy code
#!/bin/bash
df -h | awk '$5 > 80 {print $0}' > /tmp/disk_alert.txt
mail -s "Disk Usage Alert" admin@example.com < /tmp/disk_alert.txt
Service Health Check:
bash
Copy code
#!/bin/bash
if ! systemctl is-active --quiet apache2; then
    systemctl restart apache2
    echo "Apache restarted on $(date)" >> /var/log/apache_monitor.log
fi
7. What are the different types of run-levels?
Linux Run Levels:
Runlevel 0: Halt (shutdown).
Runlevel 1: Single-user mode.
Runlevel 2: Multi-user mode without networking.
Runlevel 3: Multi-user mode with networking.
Runlevel 4: Undefined/customizable.
Runlevel 5: Multi-user mode with GUI.
Runlevel 6: Reboot.
Modern systems use systemd targets (e.g., graphical.target or multi-user.target).
8. You get a call that a server is running slow. How would you troubleshoot?
Steps to Troubleshoot:
Identify Symptoms:
Check for slowness in CPU (top), memory (free -m), or I/O (iostat).
Processes:
Identify resource-hungry processes (top or ps aux).
Network Latency:
Test with ping, traceroute, and netstat.
Disk Usage:
Check disk utilization with df -h and du.
Logs:
Investigate logs for errors or anomalies.
9. Walk me through the process of recovering root password.
Recovery Steps:
Reboot the System:
Restart the system and access the GRUB menu.
Edit GRUB:
Press e to edit the boot entry.
Add init=/bin/bash or single at the end of the kernel line.
Boot into Single-User Mode:
Press Ctrl+X or F10 to boot.
Mount Filesystem:
Run mount -o remount,rw / to mount the filesystem in read-write mode.
Reset Password:
Use passwd root to reset the password.
Reboot Normally:
Reboot the system with reboot or shutdown -r now.
Feel free to refine or expand on these answers based on your experience and preferences!







