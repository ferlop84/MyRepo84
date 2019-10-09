$computerName = Read-Host -Prompt “enter computer name”

Get-WmiObject -Class win32_bios -ComputerName $computerName