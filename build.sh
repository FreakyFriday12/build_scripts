rm -rf .repo/local_manifests/
#repo init rom
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs
#local manifest
git clone https://raw.githubusercontent.com/FreakyFriday12/Local-Manifest/refs/heads/Voltage-14/Voltage-14.xml -b Voltage-14 .repo/local_manifests &&
# Sync 
repo sync
#build
/opt/crave/resync.sh
source build/envsetup.sh
export BUILD_USERNAME=Ditya 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=1
export TZ=Asia/Makassar
# Choose a target device 
. build/envsetup.sh
lunch aosp_earth-userdebug || lunch aosp_earth-ap2a-userdebug || breakfast earth userdebug
make bacon 
