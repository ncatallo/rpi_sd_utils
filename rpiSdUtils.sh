#!/bin/bash


currentDate=$(date +'%Y-%m-%d')
scriptName=$(basename "${0}")
command=$1
arg1=$2
arg2=$3

copyCommand="--copy"
burnCommand="--burn"


if [ $command == $copyCommand ]; then

	if [ "$#" -ne 2 ]; then
	    echo "Usage : ${scriptName} --copy <device> <imgName>" >&2
	    exit 2
	fi

	device=$arg1
	imgName="${arg2}_${currentDate}.img"
	shrinkImgName="${arg2}_shrinked_${currentDate}.img"

	echo "Copying ${device} to ${imgName}..."
	eval "sudo dd if=${device} of=${imgName} bs=4M conv=fsync status=progress"

	echo "Shrinking ${imgName} to ${shrinkImgName}..."
	sudo pishrink.sh $imgName $shrinkImgName

elif [ $command == $burnCommand ]; then

	if [ "$#" -ne 2 ]; then
	    echo "Usage : ${scriptName} --burn <imgPath> <device>" >&2
	    exit 2
	fi

	imgName=$arg1
	device=$arg2

	echo "Copying ${imgName} to ${device}..."
	eval "sudo dd if=${imgName} of=${device} bs=4M conv=fsync status=progress"

else
	
	echo "Usage : "
	echo -e "\t--help : Show the help of the script"
	echo -e "\t--copy <device> <imgName> : Copy the device to an image of type (.img) using dd and pishrink"
	echo -e "\t--burn <imgPath> <device> : Burn the specified image to the device using dd"

fi


