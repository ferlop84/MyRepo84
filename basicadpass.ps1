$user = Fernan
$newPass = Ribeiro2019

Set-ADAccountPassword -Identity $user -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "$newPass" -Force)