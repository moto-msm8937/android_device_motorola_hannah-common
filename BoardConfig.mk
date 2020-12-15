#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

HANNAH_COMMON_PATH := device/motorola/hannah-common

# Display
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(HANNAH_COMMON_PATH)/manifest.xml

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27124546560

# Security patch level
VENDOR_SECURITY_PATCH := 2019-03-01

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/hannah/BoardConfigVendor.mk
