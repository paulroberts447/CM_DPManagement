#Run locally on each DP
Import-Module ServerManager
Add-WindowsFeature -name FS-Data-Deduplication
Import-Module Deduplication
Enable-DedupVolume D:
New-Item -Path D:\BranchCache -Type Directory
Enable-BCLocal
Set-BCCache -MoveTo D:\BranchCache

#Run from ConfigMgr Console
Get-CMDistributionPoint | Set-CMDistributionPoint -EnableBranchCache $true

