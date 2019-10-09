#Initialize Variables

$OutputFile = “C:\Temp\GPOExport.html”

$ComputerName = “AR2407610W1”

$UserName = “kc896ha”

#The first thing we do is create an instance of the GPMgmt.GPM object. We can use this object if the Group Policy Management Console is installed in the computer.

$gpm = New-Object -ComObject GPMgmt.GPM

#Next step is to obtain all constants and save it in a variable.

$constants = $gpm.GetConstants()

#Now create reference RSOP object using required constants.

$gpmRSOP = $GPM.GetRSOP($Constants.RSOPModeLogging,$null,0)

#Next step is to specify Target Computer and User.

$gpmRSOP.LoggingComputer = $ComputerName

$gpmRSOP.LoggingUser = $UserName

