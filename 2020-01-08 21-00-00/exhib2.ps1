pushd $PSScriptRoot
ffmpeg `
    -ss '3200.007' `
    -to '1:20:43' `
    -i '..\2020-01-08 21-00-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition jg vs jbelanger.mp4'
popd
