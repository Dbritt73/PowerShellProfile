Function Edit-Profile {
    # To edit the Powershell Profile
    # (Not that I'll remember this)
    vim $profile
    
}

Function Edit-Vimrc {
    # To edit Vim settings
    vim $HOME\_vimrc

}

function subl { 

    &"${Env:ProgramFiles}\Sublime Text 3\sublime_text.exe" $args 

}
function code { 

    &"${ENV:ProgramFiles}\Microsoft VS CODE\code.exe" $args

}

Function Python {

    &"C:\Python27\python.exe" $args
    
}

. "C:\Users\brittod\documents\windowspowershell\Get-ChildItem-Color.ps1"

#Check if SCCM management console is installed - if so import SCCM Module
$SCCMPath = "${env:ProgramFiles(x86)}\Microsoft Configuration Manager\bin\ConfigurationManager.psd1"
if (Test-Path $SCCMPath ) {

    Import-Module $SCCMPath
    
}

Set-Alias ls Get-ChildItem-Color -option AllScope
#Set-Alias ls Get-ChildItem-Format-Wide -option AllScope

$VIMpath = "$ENV:HomeDrive\Program Files (x86)\Vim\vim81\vim.exe"
Set-alias vim $VIMpath

Set-Alias 'reboot' Restart-Computer -Force

Set-Alias 'Shutdown' Stop-Computer -Force

Get-MOTD
