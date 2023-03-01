Start-Sleep -Seconds 5

#Change Display Resolution for Virtual Machine
if ((Get-MyComputerModel) -match 'Virtual') {
    Write-Host  -ForegroundColor Cyan "Setting Display Resolution to 1600x"
    Set-DisRes 1600
}

#Make sure I have the latest OSD Content
Install-Module OSD -Force
Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way
Start-OSDCloud -OSVersion "Windows 11" -OSLanguage en-us -OSBuild 22H2 -OSEdition Pro -ZTI -Firmware -Restart
