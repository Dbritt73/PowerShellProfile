#$env:path += ";" + (Get-Item "Env:ProgramFiles").Value + "\Git\bin"

# Load posh-git example profile
. 'C:\Users\brittod\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

set-alias vim "C:/Program Files (x86)/Vim/Vim80/./vim.exe"

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

. "C:\Users\brittod\documents\windowspowershell\Get-ChildItem-Color.ps1"

Set-Alias ls Get-ChildItem-Color -option AllScope
#Set-Alias ls Get-ChildItem-Format-Wide -option AllScope

$VIMpath = "$ENV:HomeDrive\Program Files (x86)\Vim\vim80\vim.exe"
Set-alias vim $VIMpath

Get-MOTD
