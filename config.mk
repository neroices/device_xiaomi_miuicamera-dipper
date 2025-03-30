#
# SPDX-FileCopyrightText: 2025 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/miuicamera-beryllium/miuicamera-beryllium-vendor.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Config
PRODUCT_COPY_FILES += \
    device/xiaomi/miuicamera-beryllium/config/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    device/xiaomi/miuicamera-beryllium/config/device_features/beryllium.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/beryllium.xml \
    device/xiaomi/miuicamera-beryllium/config/permissions/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    device/xiaomi/miuicamera-beryllium/config/permissions/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.front.xml \
    device/xiaomi/miuicamera-beryllium/config/permissions/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.full.xml \
    device/xiaomi/miuicamera-beryllium/config/permissions/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.raw.xml \
    device/xiaomi/miuicamera-beryllium/config/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    device/xiaomi/miuicamera-beryllium/config/public.libraries-xiaomi.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/public.libraries-xiaomi.txt \

# SysConfig
PRODUCT_COPY_FILES += \
    device/xiaomi/miuicamera-beryllium/config/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \

include device/xiaomi/miuicamera-beryllium/BoardConfigCamera.mk
