# I'm an idiot that accidentally stopped recording momentarily mid-broadcast,
# so here we are splicing together files.
pushd $PSScriptRoot
ffmpeg -f concat -safe 0 -i concat-files.txt -c:v copy sc6.mkv
popd

