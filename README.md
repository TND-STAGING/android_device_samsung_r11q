# Android device tree for samsung SM-S711U (r11q)

# How-to compile it:

- twrp-11 Manifest
```
    repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
```
 - Sync
```
    repo sync
```
 - Clone TheNoobDevs-Staging twrp tree
```
    git clone https://github.com/TND-STAGING/android_device_samsung_r11q.git -b android-11 device/samsung/r11q
```
 - Build
```
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_r11q-eng; mka recoveryimage
```
## Multidisabler
once in twrp go to advanced, terminal and type "multidisabler" to stop restoration of stock recovery

