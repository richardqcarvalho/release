set ANDROID_PRODUCT_OUT=images
set fastboot_bin=bin\windows\fastboot.exe

%fastboot_bin% wipe-super images/super_empty.img
%fastboot_bin% flashall -w