[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
$username = [Microsoft.VisualBasic.Interaction]::InputBox("Enter your name", "Username")
"Your name is $username"