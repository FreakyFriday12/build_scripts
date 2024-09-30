rm -rf .repo/local_manifests/  && # Clone local_manifests repository
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen --git-lfs --depth=1 
git clone https://github.com/FreakyFriday12/Local-Manifest --depth 1 -b Voltage-14 .repo/local_manifests && 
# Sync the repositories
/opt/crave/resync.sh  && 
# Set up build environment
export BUILD_USERNAME=FreakyFriday12 
export BUILD_HOSTNAME=crave 
source build/envsetup.sh
 
# Build the ROM
breakfast earth eng && make installclean && mka bacon
