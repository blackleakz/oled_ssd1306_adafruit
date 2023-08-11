Import-Module posh-git


$add="git add . "
$cmi='git commit -a -m "added"'
$psh="git push origin main"
powershell.exe -Command $add
powershell.exe -Command $cmi
powershell.exe -Command $psh