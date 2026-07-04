function Invoke-UpdateAll {
    scoop update *
    scoop cache rm *
    scoop cleanup *
}

Write-Host "##############################"
Invoke-UpdateAll
Write-Host "##############################"