rm -rf .repo/local_manifests/
#repo init rom
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen --git-lfs --depth=1
#Local manifests
git clone https://github.com/FreakyFriday12/local_manifests -b udc-2 .repo/local_manifests

#build
/opt/crave/resync.sh
. build/envsetup.sh
riseup earth userdebug 
make installclean
rise b
