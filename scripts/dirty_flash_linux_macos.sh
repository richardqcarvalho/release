export ANDROID_PRODUCT_OUT=images
fastboot_bin=

if [[ $OSTYPE == 'darwin'* ]]; then
    fastboot_bin=bin/darwin/fastboot
else  
    fastboot_bin=bin/linux/fastboot
fi

$fastboot_bin flashall