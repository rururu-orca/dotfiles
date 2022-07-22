#!/usr/bin/env pwsh
if (Test-Path $HOME/.config) {
    Move-Item $HOME/.config $HOME/.config_backup -force
}

mkdir $HOME/.config > $null

$symbilics = @(
    if ($IsWindows) {
        @{
            Path   = "$HOME/Documents/PowerShell/profile.ps1"
            Target = "$HOME/dotfiles/.config/powershell/profile.ps1"
        }
        @{
            Path   = "$HOME/Documents/PowerShell/Microsoft.VSCode_profile.ps1"
            Target = "$HOME/dotfiles/.config/powershell/Microsoft.VSCode_profile.ps1"
        }
        @{
            Path   = "$HOME/Documents/PowerShell/Completions"
            Target = "$HOME/dotfiles/.config/powershell/Completions"
        }
        @{
            Path   = "$HOME/Documents/PowerShell/Settings"
            Target = "$HOME/dotfiles/.config/powershell/Settings"
        }
    } else {
        @{
            Path   = "$HOME/.config/powershell"
            Target = "$HOME/dotfiles/.config/powershell"
        }
    }
)

foreach ($symbilicParam in $symbilics) {
    New-Item -ItemType SymbolicLink @symbilicParam
}