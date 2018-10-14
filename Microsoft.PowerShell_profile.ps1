# To edit the Powershell Profile
# (Not that I'll remember this)
Function Edit-Profile {

    vim $profile
    
}

# To edit Vim settings
Function Edit-Vimrc {

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


Set-Alias ls Get-ChildItem-Color -option AllScope
#Set-Alias ls Get-ChildItem-Format-Wide -option AllScope

$VIMpath = "$ENV:HomeDrive\Program Files (x86)\Vim\vim81\vim.exe"
Set-alias vim $VIMpath

Set-Alias 'reboot' Restart-Computer -Force

Set-Alias 'Shutdown' Stop-Computer -Force

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

. "C:\Users\brittod\documents\windowspowershell\Get-ChildItem-Color.ps1"

Get-MOTD
