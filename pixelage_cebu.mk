#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/cebu/device.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)
-include vendor/pixelage-priv/keys/keys.mk

# Inherit from ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

# Pixelage
PIXELAGE_BUILDTYPE := UNOFFICIAL
PIXELAGE_MAINTAINER := b
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_cebu
PRODUCT_DEVICE := cebu
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9) power
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cebu_retail-user 11 RZCS31.Q2-57-12-14 3d8395 release-keys" \
    BuildFingerprint=motorola/cebu_retail/cebu:11/RZCS31.Q2-57-12-14/3d8395:user/release-keys \
    DeviceProduct=cebu_retail
