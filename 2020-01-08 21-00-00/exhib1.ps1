pushd $PSScriptRoot
ffmpeg `
    -ss '875.007' `
    -to '0:44:05' `
    -i '..\2020-01-08 21-00-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition yung willy vs JetmanLags.mp4'
popd
