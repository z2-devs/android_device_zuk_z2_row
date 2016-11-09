# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from z2_row device
$(call inherit-product, device/zuk/z2-common/z2-common.mk)

# Audio
PRODUCT_COPY_FILES := \
    device/zuk/z2_row/audio/mixer_paths_tasha_z2_row.xml:system/etc/mixer_paths_tasha_z2_row.xml

# Configs
PRODUCT_COPY_FILES := \
    device/zuk/z2_row/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/zuk/z2_row/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/zuk/z2_row/configs/media_profiles.xml:system/etc/media_profiles.xml

# IPC Security Configration
PRODUCT_COPY_FILES := \
    device/zuk/z2_row/configs/sec_config:system/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES := \
    device/zuk/z2_row/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/zuk/z2_row/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \

# Inherit from z2_row vendor
$(call inherit-product, vendor/zuk/z2_row/z2_row-vendor.mk)