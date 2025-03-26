#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.xiaomi_mona-multihal \
    libsensorndkbridge \
    libsensorservice \
    libsensorservicehidl \
    sensors.mona

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf
