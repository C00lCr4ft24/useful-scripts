$definition = '[DllImport("user32.dll")] public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);'
$type = Add-Type -MemberDefinition $definition -Name "WindowUtils" -Namespace "Win32" -PassThru
$hwnd = (Get-Process -Id (Get-CimInstance Win32_Process -Filter "ProcessId=$PID").ParentProcessId).MainWindowHandle
$null = $type::SetWindowPos($hwnd, [IntPtr]::Zero, 500, 250, 0, 0, 0x0001)