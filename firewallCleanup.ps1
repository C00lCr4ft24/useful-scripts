param(
    [switch]$y = $false
)

Get-NetFirewallApplicationFilter | ForEach-Object {
    $program = $_.Program
    if ([System.IO.Path]::IsPathRooted($program)) {
        if (!(Test-Path -Path "$program" -PathType Leaf)) {
            Write-Output "Removing: $program"
            if ($y) {
                $_ | Remove-NetFirewallRule
            }
        }
    }
}