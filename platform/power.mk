#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti

PRODUCT_COPY_FILES += \
    vendor/qcom/opensource/power/config/lahaina/powerhint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.xml \
    $(LOCAL_PATH)/power/task_profiles.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/power/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf
