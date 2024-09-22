rm -rf .repo/local_manifests/
#repo init rom
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
#Local manifests
git clone https://github.com/FreakyFriday12/local_manifests -b udc-2 .repo/local_manifests

#build
/opt/crave/resync.sh
. build/envsetup.sh
riseup earth userdebug 
make installclean
rise b
