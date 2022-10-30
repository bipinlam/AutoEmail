function message-send {

param([System.Net.Mail.MailMessage]$message="")

$hostname = hostname 
$user = [Environment]::UserName #current windows user and email user

#To Change Password
#"Password123" | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString | Out-File "\\$hostname\C$\Users\$user\Credentials\EmailPassword.txt"

    $emailPw ="c:\Users\bipinl\Credentials\EmailPassword.txt"
    $pw = Get-Content $emailPw | ConvertTo-SecureString 
    
    $smtp = New-Object Net.Mail.SmtpClient("pocruises_australia")
    $smtp.Credentials = new-object -typename System.Management.Automation.PSCredential -argumentlist $user, $pw
    $smtp.Send($message)
}


