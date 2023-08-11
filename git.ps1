Import-Module posh-git

$exclude="git config --global core.excludesFile .gitignore"
$add="git add . "
$cmi='git commit -a -m ".added"'
$psh="git push origin main"

powershell.exe -Command $exclude
powershell.exe -Command $add
powershell.exe -Command $cmi
powershell.exe -Command $psh