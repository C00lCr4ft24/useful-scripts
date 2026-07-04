function Invoke-ResetAll {
    scoop bucket rm *
    scoop bucket known | ForEach-Object { scoop bucket add $_ }
}

Write-Host "##############################"
Invoke-ResetAll
Write-Host "##############################"