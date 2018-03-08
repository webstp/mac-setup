function gifify
    ffmpeg -i $argv[1] -vf "fps=15,scale=640:-1:flags=lanczos,palettegen" -y palette.png
    ffmpeg -i $argv[1] -i palette.png -lavfi "fps=15,scale=640:-1:flags=lanczos[x];[x][1:v]paletteuse" -y $argv[2]
    rm palette.png
end