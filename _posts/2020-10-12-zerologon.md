---
layout: post
title: How to safely scan your network for the Zerologon Vulnerability
description: Running a scan for ZeroLogon
summary: Power of Powershell
tags: tutorials
---

By now we’re all hopefully familiar with the Zerologon vulnerability, and it’s potentially disastrous impact. If not, there are many websites that go in depth about the vulnerability, but the gist of it is that it allows a hacker to take control of any domain controller (DC), including the root DC.  by changing or removing the password for a service account on the controller. From there on it becomes drivial to cause a mass denial of service in the network or simply take over all its assets. It has been rated as a Critical 10/10 CVE, about the worst it can get: [https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-1472](https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-1472)

Recently I’ve had the opportunity to flex my blue hat skills a bit and do a scan across a network with hundreds of DCs for auditing purposes. We’ll use a bit of powershell magic, some python and a publicly available Zerologon PoC. We’ll be running this from a generic domain Windows box. This scan will not cause any kind of damage or downtime. 


Step 1 - Collect all the DCs:

In a powershell session, import the active directory module and run the following command:
$allDCs = (Get-ADForest).Domains | %{ Get-ADDomainController -Filter * -Server $_ }

If you don’t have the active directory module installed, you can install it from the Remote Server Administration Tools  here:
[https://www.microsoft.com/en-us/download/details.aspx?id=45520](https://www.microsoft.com/en-us/download/details.aspx?id=45520)
This will collect all the DCs on the network with all their property details. Since the PoC we’re using only needs the hostname and the IP, we can filter for those and save them to a file:

```powershell
echo $allDCs | select -Property Name, IPv4Address | Out-File -FilePath .\DCs.txt
```

Step 2 - The PoC:

I’ve decided to use this PoC as it’s already in python and I could actually read what it does. It’s a bit library heavy though: https://github.com/SecuraBV/CVE-2020-1472

Git clone it to your directory, and import all the required libraries:
pip install -r requirements.txt

In my case it did not get flagged up by the antivirus. 

Step 3 - The scan:

Let’s write a simple loop that will take input from our DC list, runt he PoC against it and log the results:


```python
import os
#cd to file location
os.chdir(r'C:\APPS\Tools\Tools\CVE-2020-1472-master')
 
with open("DCs.txt", encoding="utf-16") as file_in:
    lines = []
    for line in file_in:
        lines.append(line)
 
for line in lines:
    os.system('echo ' + line.rstrip() + " >> log.txt")
    os.system('python zerologon_tester.py ' + line.rstrip() + ' >> log.txt')
```  


Now you wait. It takes about 5-15 minutes/DC, so in my case it took about 3 days to scan the entire network. 


Step 4 - The results:

Once the python script finished running, you can grep for the DCs where the attack succeeded:
Select-String -path .\log.txt -pattern "Success! DC can be fully compromised by a Zerol
ogon attack." -Context 3 | Out-File VulnerableDCs.txt

Depending on the number of vulnerable DCs you encountered, you might need to do some regex. In my case, all the DCs had 3 capital letters somewhere in the name so I used this:

```powershell
Select-String -path .\VulnerableDCs.txt -pattern '[A-Z]{3}'
```

That’s it. Go and patch those DCs now!



