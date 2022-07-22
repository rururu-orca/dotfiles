using namespace Microsoft.PowerShell

# # https://qiita.com/AWtnb/items/5551fcc762ed2ad92a81#履歴管理
Set-PSReadlineOption -HistoryNoDuplicates

# # https://qiita.com/AWtnb/items/5551fcc762ed2ad92a81#単語区切り
Set-PSReadLineOption -WordDelimiters ";:,.[]{}()/\|^&*-=+'`" !?@#$%&_<>「」（）『』『』［］、，。：；／`u{2015}`u{2013}`u{2014}"

# Predictation関連
if ($PSVersionTable.PSVersion -ge '7.2.0') {
    Set-PSReadLineOption -PredictionSource HistoryAndPlugin
} else {
    Set-PSReadLineOption -PredictionSource History
}
if ([Console]::WindowHeight -ge 15 -and [Console]::WindowWidth -ge 54) {
   Set-PSReadLineOption -PredictionViewStyle ListView
} else {
   Set-PSReadLineOption -PredictionViewStyle InlineView
}
Set-PSReadLineOption -Colors @{InlinePrediction = [ConsoleColor]::DarkBlue }

Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete
Set-PSReadLineKeyHandler -Key "Ctrl+f" -Function ForwardWord
Set-PSReadLineKeyHandler -Key "Ctrl+b" -Function BackwardWord
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
Set-PSReadLineKeyHandler -Key Ctrl+UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key Ctrl+DownArrow -Function HistorySearchForward