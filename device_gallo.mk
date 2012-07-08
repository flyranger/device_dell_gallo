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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1325751383
PRODUCT_NAME := full_gallo
PRODUCT_DEVICE := gallo
include frameworks/base/build/tablet-dalvik-heap.mk
PRODUCT_CHARACTERISTICS := tablet
   
PRODUCT_COPY_FILES += \
    device/dell/gallo/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/dell/gallo/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/dell/gallo/vold.fstab:system/etc/vold.fstab\
    vendor/dell/gallo/proprietary/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf\
    vendor/dell/gallo/proprietary/bin/bluetoothd:system/bin/bluetoothd \
    vendor/dell/gallo/proprietary/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
    device/dell/gallo/nvram.txt:system/etc/nvram.txt \
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
    device/dell/gallo/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin\
    device/dell/gallo/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin\

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    liba2dp \
    libtinyalsa \
    audio.primary.gallo \
    tinyplay \
    tinycap \
    tinymix\

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ro.ethernet.interface=eth0\
    ro.ethernet.autoEnable=yes\
    persist.sys.timezone=Asia/Shanghai\
    persist.sys.strictmode.visual=0\
    windowsmgr.max_events_per_sec=1000\
    dalvik.vm.dexopt-flags=m=y\

