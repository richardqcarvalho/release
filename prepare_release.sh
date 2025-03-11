rm *.zip
mkdir -p bin images
rm -r bin/* images/*

OPERATIONAL_SYSTEMS=(
    darwin
    linux
    windows
)

for OPERATIONAL_SYSTEM in ${OPERATIONAL_SYSTEMS[@]}; do
    wget https://dl.google.com/android/repository/platform-tools-latest-$OPERATIONAL_SYSTEM.zip
    unzip platform-tools-latest-$OPERATIONAL_SYSTEM.zip -d bin/$OPERATIONAL_SYSTEM
    mv bin/$OPERATIONAL_SYSTEM/platform-tools/* bin/$OPERATIONAL_SYSTEM
    rm -r platform-tools-latest-$OPERATIONAL_SYSTEM.zip bin/$OPERATIONAL_SYSTEM/platform-tools
done

FILES=(
    android-info.txt
    boot.img
    dtbo.img
    fastboot-info.txt
    odm.img
    product.img
    system_ext.img
    system.img
    vbmeta_system.img
    vbmeta.img
    vendor_boot.img
    vendor_dlkm.img
    vendor.img
)

for FILE in ${FILES[@]}; do
    scp $USER@$SERVER_IP:/home/$USER/pixelos/out/target/product/taoyao/$FILE images
done

zip -r PixelOS_taoyao-15.0.zip bin/ images/
zip -j PixelOS_taoyao-15.0.zip scripts/*