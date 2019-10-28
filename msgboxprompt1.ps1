[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
$username = [Microsoft.VisualBasic.Interaction]::InputBox("Enter your name", "Username")



If ($username -eq "admh045")
{
    [Windows.Forms.MessageBox]::show("ADMh045")##'Yes, PowerShell Rocks'
}
elseif ($username -eq $Null)
{
    [Windows.Forms.MessageBox]::show("Wrong")
}endif
