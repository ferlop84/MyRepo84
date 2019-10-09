﻿$title = "Telnet Report"
$subtitle = "Microsoft Test of Open Ports"
$date = Get-Date -DisplayHint Date | Out-String
$owner = "@Fernan.A.Lopez"
$htmlFile = "C:\users\kc896ha\downloads\Telnet.html"
Test-OpenPort -target login.microsoftonline.com,device.login.microsoftonline.com,enterpriseregistration.windows.net -Port 80,443 | Sort-Object Status 
#| ConvertTo-Html -Title "$title" -PreContent "<p><font size=`"6`">$title</font><br>$subtitle</p><P><font size=`"2`">Generated by $owner on $date</font></P><hr>" -post "<hr><font size=`"2`">For details, contact $owner.</font>" > $htmlFile #| Out-GridView
# Invoke-Item $htmlFile
####
#
#
#
#
#
#
#
#
#
#
#


Test-OpenPort -target login.microsoftonline.com,device.login.microsoftonline.com,enterpriseregistration.windows.net -Port 80,443 | Sort-Object Status 