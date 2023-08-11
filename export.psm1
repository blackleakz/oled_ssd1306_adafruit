$add="git add . "
$cmi='git commit -a -m "added"'
$psh="git push origin main"

Export-ModuleMember -Variable $add


function Git-Handler {
    $add="git add . "
    $cmi='git commit -a -m "added"'
    $psh="git push origin main"
    Export-ModuleMember -Variable $add
    Export-ModuleMember -Variable $cmi
    Export-ModuleMember -Variable $psh
    
}