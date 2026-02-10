There are many ways to record the logs and output
We use,
 > , >> or command | tee output.txt

Process Commands:
1. ps aux > output.txt
2. top >> output.txt
3. pgrep sshd | tee output.txt

Service Commands:
1. systemctl status | tee -a output.txt
2. systemctl list-unit-files | tee -a output.txt
3. systemctl --failed >> output.txt

Log Commands:
1. journalctl -u ssh | tail -n 50 | tee -a output.txt

