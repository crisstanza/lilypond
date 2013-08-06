clear

PATH=$PATH:/Applications/LilyPond.app/Contents/Resources/bin/

./make.sh

DIRS=`ls -l . | egrep '^d' | awk '{print $9}'`
for DIR in $DIRS ; do
	cd ${DIR}
	./make.sh
	cd ..
done
