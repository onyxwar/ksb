$Session = New-PSSession -ComputerName SEA-C0D48H2

Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Configuration | Select VersionToReport

$s = New-PSSession -ComputerName KC-GJV1P12.gsww.org
Invoke-Command -Session $s -ScriptBlock {Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Configuration | Select VersionToReport}