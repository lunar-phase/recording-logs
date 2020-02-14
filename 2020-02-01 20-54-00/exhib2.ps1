pushd $PSScriptRoot
ffmpeg `
    -ss '0:52:13.340000' `
    -i '..\2020-02-01 20-54-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition Pluot vs lutherssx.mp4'
popd
