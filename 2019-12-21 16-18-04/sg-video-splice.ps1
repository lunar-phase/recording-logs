# I'm an idiot that forgot to start recording when the stream started,
# so here we are splicing Twitch footage with the local rcording.
# 00:19:56.800
pushd $PSScriptRoot

$intro = ".\sg-twitch-scaled.mkv"
ffmpeg `
    -ss 00:11:28 `
    -to 00:19:56.800 `
    -i '..\2019-12-21 15-58-00_twitch.mp4' `
    -filter:0:0 scale=1920x1080 `
    -c:a copy `
    $intro

$localRecording = Get-ChildItem sg*\*.mkv | Resolve-Path -Relative
echo @"
file '$intro'
file '$localRecording'
"@ | out-file -encoding ASCII tmp.txt

$out = (Get-ChildItem sg*\*.mkv).Name
ffmpeg -f concat -safe 0 -i tmp.txt -c:v copy $out

Remove-Item tmp.txt

popd
