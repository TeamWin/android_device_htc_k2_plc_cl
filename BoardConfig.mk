# Copyright (C) 2013 Simon Sickle <simon@simonsickle.com>
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

# Platform
TARGET_BOARD_PLATFORM := msm8930
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := k2_plc_cl
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01408000
TARGET_PREBUILT_KERNEL := device/htc/k2_plc_cl/prebuilt/kernel

# Partition Sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1426062336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1241513472
BOARD_FLASH_BLOCK_SIZE := 512

# EXT4 Larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 38
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Allow Power Button To Be Select In Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Fix for weird FB issue
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# For 4.3+
HAVE_SELINUX := true

# TWRP Specific
DEVICE_RESOLUTION := 480x800
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true

TW_INTERNAL_STORAGE_PATH := "/internal_sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
