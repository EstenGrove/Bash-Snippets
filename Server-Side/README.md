# Server Related Commands and Scripts
Bash resources for working with servers and their services such as Apache, httpd, exim, mysql etc.


## Check Type of Server
```bash
uname -a

# OUTPUT
# Linux <host_name> <last_restarted> <bit_depth>
# EXAMPLE: 
# Linux gtow.myhost.us 3.12-81-cloud SMP Tue Jun 18 16:44:50 EEST 2019 x86_64 GNU/Linux
```






## CentOS Commands
- restart a service: ```service <httpd|exim|mysql> restart```
- check uptime: ```uptime```
- check stats for virtual memory: ```vmstat```
