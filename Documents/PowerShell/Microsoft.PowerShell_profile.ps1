Set-PSReadlineOption -EditMode Emacs
Set-Alias -Name vi -Value nvim
New-Alias -Name op -Value explorer.exe

$env:LUA_PATH = "$env:LOCALAPPDATA\nvim\?.lua"

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\powershell.toml"
Invoke-Expression (&starship init powershell)

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
