#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/Infinix-X693

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X693 device
$(call inherit-product, device/infinix/Infinix-X693/device.mk)

PRODUCT_DEVICE := Infinix-X693
PRODUCT_NAME := twrp_Infinix-X693
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X693
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x693_h697-user 11 RP1A.200720.011 334840 release-keys"

BUILD_FINGERPRINT := Infinix/X693-GL/Infinix-X693:11/RP1A.200720.011/230524V666:user/release-keys
