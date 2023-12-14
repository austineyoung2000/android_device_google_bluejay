#
# Copyright 2021 The Android Open-Source Project
# Copyright 2023 RisingOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit risingOS vendor config
$(call inherit-product, vendor/rising/config/rising.mk)

$(call inherit-product, device/google/gs101/aosp_common.mk)
$(call inherit-product, device/google/bluejay/device-bluejay.mk)
$(call inherit-product, device/google/bluejay/device-common.mk)

PRODUCT_NAME := rising_bluejay
PRODUCT_DEVICE := bluejay
PRODUCT_MODEL := Pixel 6a
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

# RisingOS flags
WITH_GMS := true
TARGET_PREBUILT_PIXEL_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_USE_GOOGLE_TELEPHONY := true
RISING_MAINTAINER := EliteDarkKaiser
RISING_CHIPSET := GoogleTensor
RISING_STORAGE := 128GB
RISING_RAM := 8GB
RISING_BATTERY := 4410mAh
RISING_DISPLAY := 2400×1080

PRODUCT_PACKAGES += com.android.vndk.current.on_vendor

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 UP1A.231105.003 11010452 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/UP1A.231105.003/11010452:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
