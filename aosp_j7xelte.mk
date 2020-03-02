#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from j7xelte device
$(call inherit-product, device/samsung/j7xelte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j7xelte
PRODUCT_NAME := aosp_j7xelte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G981B
PRODUCT_MANUFACTURER := samsung

TARGET_VENDOR := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

# Build info
BUILD_FINGERPRINT :="samsung/x1sxxx/x1s:10/QP1A.190711.020/G981BXXU1ATCT:user/release-keys"
