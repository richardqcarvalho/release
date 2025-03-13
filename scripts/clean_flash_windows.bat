set ANDROID_PRODUCT_OUT=images
set fastboot_bin=bin\windows\fastboot.exe

%fastboot_bin% flash abl_ab images/abl.img
%fastboot_bin% flash aop_ab images/aop.img
%fastboot_bin% flash bluetooth_ab images/bluetooth.img
%fastboot_bin% flash cpucp_ab images/cpucp.img
%fastboot_bin% flash devcfg_ab images/devcfg.img
%fastboot_bin% flash dsp_ab images/dsp.img
%fastboot_bin% flash featenabler_ab images/featenabler.img
%fastboot_bin% flash hyp_ab images/hyp.img
%fastboot_bin% flash imagefv_ab images/imagefv.img
%fastboot_bin% flash keymaster_ab images/keymaster.img
%fastboot_bin% flash modem_ab images/modem.img
%fastboot_bin% flash qupfw_ab images/qupfw.img
%fastboot_bin% flash shrm_ab images/shrm.img
%fastboot_bin% flash tz_ab images/tz.img
%fastboot_bin% flash uefisecapp_ab images/uefisecapp.img
%fastboot_bin% flash xbl_ab images/xbl.img
%fastboot_bin% flash xbl_config_ab images/xbl_config.img
%fastboot_bin% wipe-super images/super_empty.img
%fastboot_bin% flashall -w