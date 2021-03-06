# ESXi 6.5 Commands, Utilities and Helpers

## Reboot, Shutdown and Halt
BEFORE SHUTTING DOWN ESXi PUT HOSTS INTO ```MAINTENANCE MODE```

```bash
# restart
reboot -f

# shutdown
shutdown
```

-----------------

# Backup & Restore Related Commands/Process

#### Backup the ```host_config``` File for ESXi
- backup command
```bash
vim-cmd hostsvc/firmware/backup_config
```
- the above command creates a backup located in ```/scratch/downloads``` and will generate a URL to navigate to
- navigate to the provided URL, which appears like so: ```https://*/downloads/520c76d2-f4f5-f230-5666-fad90c9e0d43/yourbackup_bundle.tgz```
- be sure to place your host IP where the asterisk is located which should trigger the download

#### Restore the ```host_config``` for ESXi
```bash
vim-cmd hostsvc/maintenance_mode_enter
vim-cmd hostsvc/firmware/restore_config /tmp/configBundle.tgz
```

### Snapshots

##### Take a Snapshot
- NOTE: to take a snapshot you MUST provide the ```vmid``` AND a name for the snapshot
```bash
vim-cmd vmsvc/snapshot.create <vmid> <name_of_snapshot>
```


-------------------


# System Related Commands

### Get VM System Info
```bash
esxcli system version get

# output
  Product: VMware ESXi
  Version: 6.5.0
  Build: Releasebuild-10175896
  Update: 2
  Patch: 61
```

#### Get Memory(RAM) Info
```bash
esxcli hardware memory get

# output
Physical Memory: .... bytes
Reliable Memory: 0 bytes
NUMA Node Count: 1
```

#### Get CPU Info
```bash
esxcli hardware cpu list
```

#### List ALL CPUs on the Machine
```bash
esxcli hardware cpu list
```

## Get the Install Date
```bash
esxcli system stats installtime get

# output
2019-04-1521:48:02
```

#### Get Hostname 
```bash
esxcli system hostname get

# output
  Domain Name: yourdomain.local
  Full Qualified Domain Name: localhost.yourdomain.local
  Host Name: localhost
```


-----------------

# User Related Commands

#### Get the Local Users
```bash
esxcli system account list

# output
User ID  Description
-------  -----------
root     Administrator
...      .......
```

#### Create a Local User
__Options__: all of the following __IS REQUIRED__
- ```-d``` "user description" 
- ```-i``` actual username
- ```-p``` user's password
  - ```-c``` confirmation of user's password

```bash
# syntax
esxcli system account add -d="<user_description>" -i="<username>" -p="<password>" -c="<confirm_password>"

esxcli system account add -d=”Altaro Guest” -i=”altaro” -p=”dsfewfewf*3!4404″ -c=”dsfewfewf*3!4404″
```


----------------


# VM Related Commands

#### List All VMs Module Processes
```bash
esxcli vm process list
```

#### Kill a VMs Process
```bash
esxcli vm process kill -w <world_id>
```
#### List ALL VM Processes
```bash
esxcli system process list

# output
       Id      Cartel Id   Name              Security Domain   Command Line
---------      ---------   ---------------   ---------------   --------------------------------------
65537          12          idle2             superDom          ...
383542         66970       python            superDom           python /bin/esxcli system process list
```


-------------


# Miscellaneous Commands

#### Check for External HD Connected
```bash
lsusb

# output
  Bus 001 Device 006: ID ... Seagate RSS LLC
  Bus 001 Device 005: ID ... Dell Computer Corp.


```
