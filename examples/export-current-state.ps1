param([string]$OutputPath = './state')
New-Item -ItemType Directory -Force -Path $OutputPath | Out-Null
Get-Date | Out-File (Join-Path $OutputPath 'timestamp.txt')
'Export connectors, rules and accepted domains here.' | Out-File (Join-Path $OutputPath 'README.txt')
Write-Host "State export prepared in $OutputPath"
