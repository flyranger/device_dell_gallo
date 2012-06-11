# Inherit device configuration for tf101.
$(call inherit-product, device/dell/gallo/device_gallo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_gallo
PRODUCT_BRAND := dell
PRODUCT_DEVICE := gallo
PRODUCT_MODEL := gallo
PRODUCT_MANUFACTURER := dell
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=gallo BUILD_FINGERPRINT=Dell/Streak10Pro/Streak10Pro:3.2/HTJ85B/201201051614:user/release-keys PRIVATE_BUILD_DESC="gallo-user 3.2 HTJ85B 201201051614 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := gallo
