pushd "$PSScriptRoot\melty-top8-43048"

Move-Item `
  -Path '01-38-24 LP Online #3 Melty Blood Actress Again Current Code Top 8.mkv' `
  -Destination 'orig.mkv'

mkvmerge `
  -o '01-38-24 LP Online #3 Melty Blood Actress Again Current Code Top 8.mkv' `
  -y 1:-167 `
  'orig.mkv'

popd
