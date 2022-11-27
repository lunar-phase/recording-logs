pushd "$PSScriptRoot\melty-803323-9084"

Move-Item `
  -Path '00-18-24 `[elegant summer concerto`] - Japan Top 8 (Melty Blood).mkv' `
  -Destination 'orig.mkv'

ffmpeg `
  -i orig.mkv `
  -c:v copy `
  -af "volume=enable='between(t,3579,3879)':volume=0" `
  "00-18-24 `[elegant summer concerto`] - Japan Top 8 (Melty Blood).mkv"

popd
