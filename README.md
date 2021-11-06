# rpi_sd_utils
Basic script to help copying sd image to .img, Shrink it and burn it into another sd card



## Copying SD card to .img file

You can run this command to copy the SD card /dev/sdb to the file /home/your_user/Desktop/SDImage.img : 

``sudo rpiSdUtils.sh --copy /dev/sdb /home/your_user/Desktop/SDImage``


## Burning .img file to SD card

You can run this command to burn the image /home/your_user/Desktop/SDImage.img to the SD card /dev/sdb : 

``sudo rpiSdUtils.sh --burn /home/your_user/Desktop/SDImage.img /dev/sdb``
