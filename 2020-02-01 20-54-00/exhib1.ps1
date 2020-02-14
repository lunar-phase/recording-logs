pushd $PSScriptRoot
ffmpeg `
    -ss '0:07:17.507000' `
    -to '0:45:30' `
    -i '..\2020-02-01 20-54-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition Psykotik vs iThatGuy.mp4'
popd
