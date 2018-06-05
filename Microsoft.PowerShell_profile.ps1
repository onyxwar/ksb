function Import-ENEXModule {
 Param (
 [string]$ExchangeServer
 )
 $UserCredential = Get-Credential 
 if ( (Get-PSSession -ComputerName $ExchangeServer) -eq $null ) {
 $exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange `
 -ConnectionUri http://$ExchangeServer/PowerShell/ `
 -Authentication Kerberos `
 -Credential $UserCredential
 Import-PSSession $exchangeSession -DisableNameChecking
 }
}


