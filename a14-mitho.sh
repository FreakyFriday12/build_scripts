rm -rf .repo/local_manifests/  && # Clone local_manifests repository
repo init -u https://github.com/Evolution-X/manifest -b udc --git-lfs
git clone https://github.com/FreakyFriday12/Local-Manifest --depth 1 -b Voltage-14 .repo/local_manifests  
# Sync the repositories
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
# Set up build environment
export EVO_BUILD_TYPE=Unofficial
echo 'export EVO_BUILD_TYPE=Unofficial' >> ~/.bashrc
source ~/.bashrc
. build/envsetup.sh
 
# Build the ROM
lunch lineage_earth-userdebug
m evolution
