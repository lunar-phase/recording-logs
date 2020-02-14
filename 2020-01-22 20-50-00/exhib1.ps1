pushd $PSScriptRoot
ffmpeg `
    -ss '845.840000' `
    -to '0:47:08' `
    -i '..\2020-01-22 20-50-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition Spectryn vs Skeleton.mp4'
popd
