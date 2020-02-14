pushd $PSScriptRoot
ffmpeg `
    -ss '766.674000' `
    -to '0:50:09' `
    -i '..\2020-01-15 20-51-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition noddy vs argyle.mp4'
popd
