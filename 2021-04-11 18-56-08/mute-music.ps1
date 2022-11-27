$muteTimes = @{
  #"ggxx-smashgg_927576-1632_top32" = "1.5"
  "ggxx-smashgg_927576-1632_top12" = "1.5"
}

foreach ($dir in $muteTimes.Keys) {
  pushd "$PSScriptRoot\$dir"
  $muteTime = $muteTimes[$dir]

  $origFile = Get-ChildItem | Where-Object { $_.Name -match '^[0-9]+' }

  Move-Item `
    -Path $origFile.Name `
    -Destination 'orig.mkv'

  ffmpeg `
    -i orig.mkv `
    -c:v copy `
    -af "volume = enable='lte(t,$muteTime)' : volume=0" `
    $origFile.Name

  popd
}
