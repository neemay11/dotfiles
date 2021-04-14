#! /bin/sh

# loop through all subdirectories and run all "install.sh" scripts
for i in */install.sh
do
	if [ -x $i ]
	then
		$i
	fi
done
