#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/xiaomi/mojin
BOARD_CONFIG_COMMON_PATH := $(COMMON_PATH)/platform/board
PLATFORM_NAME := lahaina

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# ART
include $(BOARD_CONFIG_COMMON_PATH)/art.mk

# Arch
include $(BOARD_CONFIG_COMMON_PATH)/arch.mk

# Audio
include $(BOARD_CONFIG_COMMON_PATH)/audio_board_config.mk

# Bootloader
TARGET_NO_BOOTLOADER := true

# Build
include $(BOARD_CONFIG_COMMON_PATH)/build_rules.mk

# Display
include $(BOARD_CONFIG_COMMON_PATH)/display_board_config.mk

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# HIDL
DEVICE_MATRIX_FILE := $(COMMON_PATH)/platform/manifest/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(COMMON_PATH)/platform/manifest/vendor_framework_compatibility_matrix.xml 
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/platform/manifest/manifest_yupik.xml 

# Kernel
include $(BOARD_CONFIG_COMMON_PATH)/kernel.mk

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := $(PLATFORM_NAME)

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
include $(BOARD_CONFIG_COMMON_PATH)/partition_board_config.mk

# Properties
include $(BOARD_CONFIG_COMMON_PATH)/properties.mk

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
BOOT_SECURITY_PATCH := 2023-01-01
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

# SELinux
include $(COMMON_PATH)/platform/sepolicy/sepolicy.mk

# Verified Boot
include $(BOARD_CONFIG_COMMON_PATH)/vbmeta.mk

# WLAN
include $(BOARD_CONFIG_COMMON_PATH)/wlan_board_config.mk

# Include the proprietary files BoardConfig.
include vendor/xiaomi/mojin/BoardConfigVendor.mk
