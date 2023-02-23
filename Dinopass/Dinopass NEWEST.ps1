invoke-command -ScriptBlock {
foreach($number in (0..10)){
(Invoke-RestMethod -Method Get -Uri https://www.dinopass.com/password/simple).tostring() -replace '\d+',''
}}| Out-GridView