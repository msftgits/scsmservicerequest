Get-Process Microsoft.EnterpriseManagement.ServiceManager.UI.Console | Stop-Process
Import-Module smlets
Add-PSSnapin smcmdletsnapin
[System.IO.Directory]::SetCurrentDirectory("c:\users\administrator\documents\software\codeplex\servicerequest")
[System.IO.Directory]::GetCurrentDirectory()
cd c:\users\administrator\documents\software\codeplex\servicerequest
Copy-Item c:\users\administrator\documents\software\codeplex\servicerequest\bin\debug\Microsoft.Demo.ServiceRequest.dll c:\users\administrator\documents\software\codeplex\servicerequest
c:\users\administrator\documents\software\codeplex\servicerequest\FastSeal.exe c:\users\administrator\documents\software\codeplex\servicerequest\Microsoft.Demo.ServiceRequest.xml /KeyFile c:\users\administrator\documents\software\codeplex\servicerequest\TestKeys.snk /Company "Microsoft Corporation" /Copyright "Copyright 2010 Microsoft Corporation"
c:\users\administrator\documents\software\codeplex\servicerequest\New-MPBFile.ps1 Microsoft.Demo.ServiceRequest.mp Microsoft.Demo.ServiceRequest
Get-SCManagementPack Microsoft.Demo.ServiceRequest | Remove-SCManagementPack
Import-SCManagementPack c:\users\administrator\documents\software\codeplex\servicerequest\Microsoft.Demo.ServiceRequest.mpb
Restart-Service omsdk
#Start-Sleep -s 10
Start-Process Microsoft.EnterpriseManagement.ServiceManager.UI.Console.exe