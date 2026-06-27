param(
    [switch]$y = $false
)

Write-Output "Invalid Firewall Rules:"
Get-NetFirewallApplicationFilter | ForEach-Object {
    $program = $_.Program
    if ([System.IO.Path]::IsPathRooted($program)) {
        if (!(Test-Path -Path "$program" -PathType Leaf)) {
            Write-Output "$program"
            if ($y) {
                $_ | Remove-NetFirewallRule
            }
        }
    }
}