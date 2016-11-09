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

# Inherit from those products. Most specific first.

# Inherit Board Configration from Common Repo
$(call inherit-product, device/zuk/z2-common/BoardConfig.mk)

# Assert Device
TARGET_OTA_ASSERT_DEVICE := z2_row

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/
TARGET_INIT_VENDOR_LIB := libinit_z2_row
TARGET_RECOVERY_DEVICE_MODULES := libinit_z2_row

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_mustang_defconfig
