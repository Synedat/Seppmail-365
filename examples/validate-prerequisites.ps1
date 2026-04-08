$requiredModules = @('ExchangeOnlineManagement')
foreach ($module in $requiredModules) {
  if (-not (Get-Module -ListAvailable -Name $module)) { Write-Warning "Missing module: $module" }
  else { Write-Host "Found module: $module" }
}
