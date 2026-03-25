# Active Directory Setup Notes

## Server Details
- VM ID: 104
- Name: winserver-ad
- IP: 192.168.1.103
- OS: Windows Server 2022 Standard (Desktop Experience)
- CPU: 4 cores
- RAM: 8GB
- Disk: 80GB on vm-storage

## Domain Details
- Forest: homelab.local
- Domain: homelab.local
- NetBIOS: HOMELAB
- Domain Controller: WINSERVER-AD.homelab.local
- Forest/Domain Level: Windows Server 2016

## Organisational Units
- IT
- HR
- Finance
- Servers
- Workstations

## Security Groups
- IT-Admins (IT OU)
- HR-Users (HR OU)
- Finance-Users (Finance OU)

## Users Created
- navneet.singh (IT OU) → member of IT-Admins
- test.user1 (HR OU) → member of HR-Users
- test.user2 (HR OU)

## Services Running
- ADWS (Active Directory Web Services)
- NTDS (AD Database)
- Netlogon
- DFSR (Replication)
- DNS

## Next Steps
- [ ] Join Windows 11 VM to domain
- [ ] Install Azure AD Connect
- [ ] Sync users to Azure Entra ID
- [ ] Configure Conditional Access (SC-300 lab)
- [ ] Group Policy Objects (GPOs)

## Lessons Learned
- DSRM password must be saved securely
- OU structure should mirror company departments
- Groups are applied at OU level via GPO
- DNS runs on DC — other devices point to 192.168.1.103