if ($IsWindows) {
    . $PSScriptRoot/Settings/WinfowsSettings.ps1
    . $PSScriptRoot/Completions/WinfowsCompletion.ps1
}

# PsReadLine 設定
. $PSScriptRoot/Settings/PsReadLine.ps1

# 補完の設定
. $PSScriptRoot/Completions/Completion.ps1

Invoke-Expression (&starship init powershell)