# Android device tree for samsung SM-S711U (r11q)

# Clone
    git clone https://github.com/MFO-STAGING/android_device_samsung_r11q.git -b orange-fox device/samsung/r11q

# Build
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_r11q-eng; mka recoveryimage
