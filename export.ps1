Import-Module posh-git


function Git-Handler {
    $add="git add . "
    $cmi='git commit -a -m "added"'
    $psh="git push origin main"
    Start-Process -FilePath "powershell" -Args $add
    Start-Process -FilePath "powershell" -Args $cmi
    Start-Process -FilePath "powershell" -Args $psh
    
}


Git-Handler