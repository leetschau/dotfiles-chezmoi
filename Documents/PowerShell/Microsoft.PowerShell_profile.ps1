Set-PSReadlineOption -EditMode Emacs
New-Alias -Name ll -Value ls
New-Alias -Name op -Value explorer.exe
Set-Alias -Name vi -Value nvim

Set-Location ~

$Env:LUA_PATH = "$env:LOCALAPPDATA\nvim\?.lua"

$Env:STARSHIP_CONFIG = "$HOME\.config\starship\powershell.toml"
Invoke-Expression (&starship init powershell)

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

$Env:YAZI_FILE_ONE = "C:\Program Files\Git\usr\bin\file.exe"

# $Env:PATH += ";D:\apps\w64devkit\bin;C:\Program Files\DAUM\PotPlayer"
$Env:PATH += ";C:\Program Files\DAUM\PotPlayer"
