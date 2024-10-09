rm -rf .repo/local_manifests/
#repo init rom
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr

#Local manifests
git clone https://raw.githubusercontent.com/FreakyFriday12/Local-Manifest/refs/heads/Voltage-14/Voltage-14.xml -b Voltage-14 .repo/local_manifests &&
# Sync 
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
#build
/opt/crave/resync.sh
source build/envsetup.sh
export BUILD_USERNAME=Ditya 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=1
export TZ=Asia/Makassar
# Choose a target device 
lunch cipher_earth-ap2a-userdebug
mka bacon -j$(nproc --all) #also edit this if needed
