$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/dell/gallo/gallo-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/dell/gallo/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/dell/gallo/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1325751383
PRODUCT_NAME := full_gallo
PRODUCT_DEVICE := gallo
include frameworks/base/build/tablet-dalvik-heap.mk
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_COPY_FILES += \
    device/dell/gallo/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/dell/gallo/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/dell/gallo/nvram.txt:system/etc/wifi/nvram.txt \
    device/dell/gallo/nvram_a.txt:system/etc/wifi/nvram_a.txt \
    device/dell/gallo/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc\
    device/dell/gallo/panjit_touch.idc:system/usr/idc/panjit_touch.idc\
    device/dell/gallo/keychars/Generic.kcm:system/usr/keychars/Generic.kcm\
    device/dell/gallo/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm\
    device/dell/gallo/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm\
    device/dell/gallo/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm\
    device/dell/gallo/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl\
    device/dell/gallo/keylayout/Generic.kl:system/usr/keylayout/Generic.kl\
    device/dell/gallo/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl\
    device/dell/gallo/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/dell/gallo/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl\
    device/dell/gallo/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl\
    device/dell/gallo/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl\
    device/dell/gallo/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl\
    device/dell/gallo/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl\
    device/dell/gallo/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl\
    device/dell/gallo/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl\
    device/dell/gallo/bcm4329.hcd:/system/etc/firmware/bcm4329.hcd\
    device/dell/gallo/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin\
    device/dell/gallo/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin\
