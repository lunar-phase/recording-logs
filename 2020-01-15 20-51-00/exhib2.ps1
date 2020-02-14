pushd $PSScriptRoot
ffmpeg `
    -ss '3695.840000' `
    -i '..\2020-01-15 20-51-00_twitch.mp4' `
    -codec copy `
    -avoid_negative_ts 1 `
    '.\Melty Blood exhibition MakotoFox vs Shinobi.mp4'
popd
