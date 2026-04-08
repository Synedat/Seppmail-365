# Example for a reviewable rollout sequence
Connect-ExchangeOnline -Device
New-SM365Connectors -SEPPmailFQDN 'securemail.example.com' -TLSCertificateName '*.example.com'
New-SM365Rules -SEPPmailDomain 'example.com','example.org' -Disabled:$false
Get-SM365Connectors
