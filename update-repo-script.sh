TFPATH=/media/Extra/library/steamapps/common/Team\ Fortress\ 2/tf
CURPATH=`pwd`
rm custom.zip
rm -r cfg/
cp -r "$TFPATH/cfg/" .
cd "$TFPATH"
zip -r custom.zip custom/ -x custom/disabled/
mv custom.zip "$CURPATH"
cd "$CURPATH"
git add .
git commit && git push -u origin master
