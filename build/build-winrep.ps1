do {
    $BuildVersion = Read-Host -Prompt "Enter the build version"
} while ($BuildVersion -notmatch "\d+\.\d+\.\d+\.\d+")
Set-Content -Path '.\WinRep_temp.ps1' -Value ((Get-Content -Path '..\src\WinRep.ps1' -Encoding UTF8) -replace "##BV##",$BuildVersion) -Force
&'.\ps2exe.ps1' -inputFile '.\WinRep_temp.ps1' -outputFile ('..\bin\WinRep-'+$BuildVersion+'.exe') -runtime40 -x64 -STA -UNICODEEncoding -iconFile '.\WinRep-Logo.ico' -title 'WinRep' -description 'WinRep' -company 'Hope-IT-Works' -product 'WinRep' -version $BuildVersion -requireAdmin
Remove-Item -Path '.\WinRep_temp.ps1'
Write-Host "Done!"
Pause
exit