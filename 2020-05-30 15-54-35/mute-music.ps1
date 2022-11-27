pushd "$PSScriptRoot\melty-803320-29568"

Move-Item `
  -Path '00-10-15 `[elegant summer concerto`] - Brasil Top 8 (Melty Blood).mkv' `
  -Destination 'orig.mkv'

ffmpeg `
  -i orig.mkv `
  -c:v copy `
  -af "volume=enable='between(t,4405,4545)':volume=0" `
  "00-10-15 `[elegant summer concerto`] - Brasil Top 8 (Melty Blood).mkv"

popd
