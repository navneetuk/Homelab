# Azure Tenant Configuration

## Tenant Details
- Tenant name: Navneet Tech
- Primary domain: navneet.uk
- Licence: Microsoft Entra ID Free
- Created: 23 Aug 2021

## Custom Domain
- navneet.uk verified in Azure
- Used as UPN suffix for AD Connect sync

## Current configuration
- Users: 6
- Groups: 8  
- Applications: 2
- Devices: 1

## Planned configuration
- [ ] Microsoft 365 Developer Program (E5 licences)
- [ ] Azure AD Connect (hybrid identity sync)
- [ ] Conditional Access policies (SC-300 lab)
- [ ] MFA enforcement
- [ ] Privileged Identity Management (PIM)
- [ ] Microsoft Sentinel SIEM

## AD Connect sync
- On-premise domain: homelab.local
- UPN suffix added: navneet.uk
- Sync method: Password Hash Sync
- Sync account: adsync@navneet.uk (stored in 1Password)

## Credentials location
- Global admin: stored in 1Password
- Tenant ID: 7104ad84-f7a8-4ead-9c5f-19e94e2a9f18
- NEVER commit passwords or client secrets to Git