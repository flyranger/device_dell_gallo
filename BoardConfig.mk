USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/dell/gallo/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := ap20

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := gallo
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
TARGET_BOARD_PLATFORM := tegra
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_PREBUILT_KERNEL := device/dell/gallo/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
# EGL
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/dell/gallo/egl.cfg

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE           := bcm4329
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"
WIFI_DRIVER_MODULE_ARG      := "iface_name=wlan0 firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram.txt"
# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# Use nicer font rendering
BOARD_USE_SKIA_LCDTEXT := true
BOARD_INCLUDES_TEGRA_JNI:= graphics,cursor
# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true
# Audio hack for streak7 - use legacy 3.2 libs
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := true
# GPS
BOARD_HAVE_GPS_BCM := true
#     if no suitable mode is available, reverts to scale
BOARD_HDMI_MIRROR_MODE := Scale
# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
#BOARD_USE_LEGACY_TOUCHSCREEN := true 
