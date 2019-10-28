$d = [Windows.Forms.MessageBox]::show("PowerShell Rocks", "PowerShell Rocks",
[Windows.Forms.MessageBoxButtons]::YesNo, [Windows.Forms.MessageBoxIcon]::Question)

If ($d -eq [Windows.Forms.DialogResult]::Yes)
{
    [Windows.Forms.MessageBox]::show("Rock baby")##'Yes, PowerShell Rocks'
}
else
{
    "On no, you don't like me"
}