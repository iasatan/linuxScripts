#!/bin/bash
function delete {
	echo "$@"
	rm -f "$@"
}
function check {
	local artist=$(mp3infov2 -p %a "$1")
	return $(grep -c "$artist" /srv/dev-disk-by-label-120GB/torrent/Server/scripts/torrent/mp3/artists.txt)
}
function iterate {
	for f in "."/*
	 do
		if [[ -d "$f" ]]; then
			cd "$f"
			iterate
			cd ..
		elif [[ -f "$f" ]]; then
			check "$f" || delete "$f"
		fi
	done
}
iterate
