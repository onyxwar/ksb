[DateTime] $Today = Get-Date 
 
$Today = $Today.adddays(-30) 
 
$Path = "PSTfileNAME" + $Today.tostring("yyyy-MM-dd") + ".pst" 
 
Write-Host $Today.tostring("yyyy-MM-dd" + " 23:59:59") -ForeGroundColor Yellow 
 
Export-Mailbox -Identity targetmailbox -PSTFolderPath C:\PSTBAYI\$Path -EndDate $Today.tostring("yyyy-MM-dd" + " 23:59:59") -Confirm:$false -deletecontent