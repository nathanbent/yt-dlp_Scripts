#!/bin/sh
#
# TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection: The ultimate collection of scripts for YouTube-DL
# https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection
# https://github.com/TheFrenchGhosty
#--download-archive archive.log 
# Version: 3.1.1
#

yt-dlp -f yt-dlp -f 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b' --verbose --force-ipv4 --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --ignore-errors --no-continue --no-overwrites --output "%(playlist)s/%(title)s(RPi).%(ext)s" --verbose --force-ipv4 --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --ignore-errors --no-continue --no-overwrites  --add-metadata --write-description --write-info-json --write-annotations --write-thumbnail --embed-thumbnail --all-subs --embed-subs --merge-output-format "mp4" --extractor-args youtube:player_client=android --throttled-rate 100K --batch-file "Source - RPi Playlists.txt" 2>&1 | tee output.log
