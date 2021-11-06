# rpi_sd_utils
Basic script to help copying sd image to .img, Shrink it and burn it into another sd card


<br />

## Installing the tool

To install this tool on your Linux computer you need to run :

``sudo ./install.sh``

It wil download pishrink.sh from :
``https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh``

<br />

## Copying SD card to .img file

You can run this command to copy the SD card /dev/sdb to the file /home/your_user/Desktop/SDImage.img : 

``sudo rpiSdUtils.sh --copy /dev/sdb /home/your_user/Desktop/SDImage``

It will create a SDImage_2021-11-06.img file with the current date.\
It will also create shrinked one SDImage_shrinked_2021-11-06.img. 


<br />

## Burning .img file to SD card

You can run this command to burn the image /home/your_user/Desktop/SDImage.img to the SD card /dev/sdb : 

``sudo rpiSdUtils.sh --burn /home/your_user/Desktop/SDImage.img /dev/sdb``
