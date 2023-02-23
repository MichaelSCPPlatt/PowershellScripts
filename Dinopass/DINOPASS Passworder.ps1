$Number = 0..10
$Allpasses = foreach($num in $number){Invoke-RestMethod -Method Get -Uri https://www.dinopass.com/password/simple
$Allpasses | Out-GridView -Title "Please Highlight as many items as you need and hit 'OK' to continue" -PassThru | Set-clipboard
write-host "Your items have been copied to your clipboard"
start-sleep 5