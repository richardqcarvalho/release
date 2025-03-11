set fastboot_bin=bin\windows\fastboot.exe

%fastboot_bin% set_active a
%fastboot_bin% flash dtbo_ab images/dtbo.img
%fastboot_bin% flash boot_ab images/boot.img
%fastboot_bin% flash vendor_boot_ab images/vendor_boot.img
%fastboot_bin% flash vbmeta_ab images/vbmeta.img
%fastboot_bin% flash vbmeta_system_ab images/vbmeta_system.img
%fastboot_bin% reboot fastboot
%fastboot_bin% flash odm images/odm.img
%fastboot_bin% flash product images/product.img
%fastboot_bin% flash system images/system.img
%fastboot_bin% flash system_ext images/system_ext.img
%fastboot_bin% flash vendor images/vendor.img
%fastboot_bin% reboot