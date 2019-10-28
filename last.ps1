<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    ADUC_Info
.SYNOPSIS
    Obtain some quick details about AD User or Computer object
.DESCRIPTION
    Obtain some quick details about AD User or Computer object
.INPUTS
    Computer Name, User Name, Info requesting
.OUTPUTS
    details
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '400,400'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$UserOrComputer                  = New-Object system.Windows.Forms.TextBox
$UserOrComputer.multiline        = $false
$UserOrComputer.text             = "Enter User or Computer"
$UserOrComputer.width            = 192
$UserOrComputer.height           = 20
$UserOrComputer.location         = New-Object System.Drawing.Point(15,48)
$UserOrComputer.Font             = 'Microsoft JhengHei,10'

$GetInfo                         = New-Object system.Windows.Forms.Button
$GetInfo.BackColor               = "#4a90e2"
$GetInfo.text                    = "Get Info"
$GetInfo.width                   = 60
$GetInfo.height                  = 30
$GetInfo.location                = New-Object System.Drawing.Point(224,37)
$GetInfo.Font                    = 'Microsoft JhengHei,10,style=Bold'
$GetInfo.ForeColor               = "#ffffff"

$InfoBox                         = New-Object system.Windows.Forms.ListView
$InfoBox.text                    = "listView"
$InfoBox.width                   = 367
$InfoBox.height                  = 233
$InfoBox.location                = New-Object System.Drawing.Point(16,149)

$InfoRequested                   = New-Object system.Windows.Forms.Label
$InfoRequested.text              = "Info Requested"
$InfoRequested.AutoSize          = $true
$InfoRequested.width             = 25
$InfoRequested.height            = 12
$InfoRequested.location          = New-Object System.Drawing.Point(21,119)
$InfoRequested.Font              = 'Microsoft JhengHei,10'
$InfoRequested.ForeColor         = ""

$Form.controls.AddRange(@($UserOrComputer,$GetInfo,$InfoBox,$InfoRequested))
