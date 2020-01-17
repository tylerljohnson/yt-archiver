#!/bin/bash

config=$1
data=$2

urls=${config}/urls.txt
downloaded=${data}/downloaded.txt
format="${data}/%(uploader)s/%(playlist_index)s - %(title)s [%(id)s].%(ext)s"

echo "params: heading urls from : ${urls}"
echo "params: archiving to to   : ${downloaded}"
echo "params: using format      : ${format}"

opts=""
opts="${opts} --add-metadata"
opts="${opts} --format bestvideo[ext=mp4]+bestaudio[ext=m4a]"
opts="${opts} --ignore-errors"
opts="${opts} --merge-output-format mp4"
opts="${opts} --no-progress"
opts="${opts} --playlist-reverse"
#opts="${opts} --write-annotations"
#opts="${opts} --write-description"
#opts="${opts} --write-info-json"
opts="${opts} --write-thumbnail"

youtube-dl ${opts} --batch-file=${urls} --download-archive ${downloaded} --output "${format}"

