rm -rf .repo/local_manifests/
#repo init rom
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 14 --git-lfs
#Local manifests
git clone https://raw.githubusercontent.com/FreakyFriday12/Local-Manifest/refs/heads/Voltage-14/Voltage-14.xml -b Voltage-14 .repo/local_manifests &&

#build
/opt/crave/resync.sh
source build/envsetup.sh
export BUILD_USERNAME=Ditya 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=1
export TZ=Asia/Makassar
lunch derp_earth-userdebug #edit this according to your rom build commands
mka derp #also edit this if needed
