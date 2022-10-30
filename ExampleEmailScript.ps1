. ('C:\Users\bipinl\Desktop\MessageFunction.ps1') #location of message function

 $from = "<bipin.lamichhane@carnivalaustralia.com>"
 $subject = 'Test'
 #$file = 'C:\Attachment.txt'
 $to = "jared.marshall@carnivalaustralia.com"

 $message = New-Object System.Net.Mail.MailMessage $from, $to
 #$message.cc.Add("bipin.laam@outlook.com")
 #$message.bcc.Add("noemail@ermail.com")
 
 $message.Subject = "Test"
 #$message.Attachments.Add($file)

 $message.IsBodyHtml = $true
 $message.Body = "<HTML><body>Hey Jared thanks for your script!</body></HTML>"
 
 message-send -message $message