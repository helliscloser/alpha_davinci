#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Lawnchair
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_GAPPS_ARCH := arm64
USE_PIXEL_CHARGING := true
TARGET_INCLUDE_CARRIER_SETTINGS := true

# AlphaDroid
ALPHA_MAINTAINER := Rumais
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
WITH_GAPPS := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
