Invoke-RestMethod get.scoop.sh | Invoke-Expression

scoop install git 7zip innounp dark
git config --global credential.helper manager-core

scoop install gh
gh auth login