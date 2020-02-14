pushd $PSScriptRoot
ffmpeg `
    -ss '3266.674000' `
    -i '..\2020-01-22 20-50-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition Alps vs Bizzy.mp4'
popd
