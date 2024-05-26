Set-Location $PSScriptRoot

$Date_Time = (Get-Date).ToString("dddd dd/MM/yyyy HH:mm")
$Commit_Message = $Date_Time + " Updates"

git add .
git commit -m $Commit_Message
git push origin main

mkdocs gh-deploy --force