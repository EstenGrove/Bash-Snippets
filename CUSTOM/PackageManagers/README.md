# Package Managers for CLI

## On Windows
For Windows use __Chocolatey__ as it's the most diverse and well supported package manager and supports ```dig``` commands via the BIND TOOLS package.

#### To Install __Chocolatey__
1. First open up an *elevated* PowerShell window
2. Then run the following:
```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
3. After running the above command check if the install worked and run: ```choco -v```, which should give the version number.

#### Install ```dig``` Command Set Via BIND TOOLS
```bash
choco install bind-toolsonly
```
