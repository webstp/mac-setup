function gifify
    ffmpeg -i $argv[1] -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $argv[2]
end