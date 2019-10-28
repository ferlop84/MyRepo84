    # Show input box popup and return the value entered by the user.
function Read-InputBoxDialog([string]$Message, [string]$WindowTitle, [string]$DefaultText)
{
    Add-Type -AssemblyName Microsoft.VisualBasic
    return [Microsoft.VisualBasic.Interaction]::InputBox($Message, $WindowTitle, $DefaultText)
}


$textEntered = Read-InputBoxDialog -Message "Please enter the word 'Banana'" -WindowTitle "Input Box Example" -DefaultText "Apple"
if ($textEntered -eq $null) { Write-Host "You clicked Cancel" }
elseif ($textEntered -eq "Banana") { Write-Host "Thanks for typing Banana" }
else { Write-Host "You entered $textEntered" }