# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($commandName, $wordToComplete, $cursorPosition)

    switch (dotnet complete --position $cursorPosition "$wordToComplete") {
        Default {[System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)}
    }
}

# Github CLI
Invoke-Expression -Command $(gh completion -s powershell | Out-String)
