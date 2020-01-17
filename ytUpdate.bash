#!/bin/bash

# attempt to install or update youtube-dl
printf '%s\n' "${0##*/} : install or update youtube-dl"
pip install --upgrade youtube-dl

# echo out the current version
echo "youtube-dl version $(youtube-dl --version)"
printf '%s\n' "${0##*/} : youtube-dl version $(youtube-dl --version)"

