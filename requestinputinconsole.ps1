function New-InputBox
{
    param
    (
        [Parameter(Mandatory)]
        [string]$FirstName,
        
        [Parameter(Mandatory)]
        [string]$LastName,

        [Parameter(Mandatory)]
        [string]$Password
    )

    $FirstName, $LastName, $Password
        
}


$username = New-Inputbox 