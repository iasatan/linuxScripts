find . -type f -iname \*.jpg -delete -print
find . -type f -iname \*.png -delete -print
find . -type f -iname \*.bmp -delete -print
find . -type f -iname \*.txt -delete -print
find . -type f -iname \*mix* -delete -print
find . -type f -iname \*edit* -delete -print
find . -type f -iname \*remix* -delete -print
find . -type f -iname \*disney* -delete -print
bash ../removeArtists.sh
bash ../removeDuplicates.sh
bash ../storeSongs.sh
