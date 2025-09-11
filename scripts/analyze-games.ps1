# string array param
param (
  [string[]]$GameList
)

pushd $PSScriptRoot
$GameList | % { echo ""; echo "$_"; .\analyze "..\*\$_*.json"}
popd
