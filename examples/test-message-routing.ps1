
param(
    [string]$OutputPath = "./out/test-message-routing.json"
)

New-Item -ItemType Directory -Force -Path (Split-Path $OutputPath) | Out-Null

$payload = [ordered]@{
    repository = "Seppmail-365"
    script = "test-message-routing.ps1"
    timestampUtc = [DateTime]::UtcNow.ToString('o')
    note = "Starter example maintained by Synedat Group GmbH for the SEPPmail ecosystem. Adapt endpoints, tenant identifiers and authentication before productive use."
    checks = @(
        "pre-check",
        "read-only validation",
        "evidence export"
    )
}

$payload | ConvertTo-Json -Depth 5 | Set-Content -Path $OutputPath -Encoding UTF8
Write-Host "Wrote starter output to $OutputPath"
