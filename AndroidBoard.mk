LOCAL_PATH := $(call my-dir)

#----------------------------------------------------------------------
# Compile (L)ittle (K)ernel bootloader and the nandwrite utility
#----------------------------------------------------------------------
# ifneq ($(strip $(TARGET_NO_BOOTLOADER)),true)

# Compile
# include bootable/bootloader/lk/AndroidBoot.mk

# $(INSTALLED_BOOTLOADER_MODULE): $(TARGET_EMMC_BOOTLOADER) | $(ACP)
#	$(transform-prebuilt-to-target)
# $(BUILT_TARGET_FILES_PACKAGE): $(INSTALLED_BOOTLOADER_MODULE)

# droidcore: $(INSTALLED_BOOTLOADER_MODULE)
# endif

#----------------------------------------------------------------------
# Compile Linux Kernel
#----------------------------------------------------------------------
# ifeq ($(KERNEL_DEFCONFIG),)
#    ifeq ($(TARGET_BUILD_VARIANT),user)
#      KERNEL_DEFCONFIG := msm-perf_defconfig
#    else
#      KERNEL_DEFCONFIG := msm_defconfig
#    endif
# endif

# include kernel/AndroidKernel.mk

# $(INSTALLED_KERNEL_TARGET): $(TARGET_PREBUILT_KERNEL) | $(ACP)
#	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE       := keylayout/gpio-keys.kl
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := keylayout/qpnp_pon.kl
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := keylayout/synaptics_dsx.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := wifi/wpa_supplicant_overlay.conf
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/wifi
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := wifi/p2p_supplicant_overlay.conf
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/wifi
include $(BUILD_PREBUILT)

#----------------------------------------------------------------------
# Radio image
#----------------------------------------------------------------------
# ifeq ($(ADD_RADIO_FILES), true)
# radio_dir := $(LOCAL_PATH)/radio
# RADIO_FILES := $(shell cd $(radio_dir) ; ls)
# $(foreach f, $(RADIO_FILES), \
#	$(call add-radio-file,radio/$(f)))
# endif

#----------------------------------------------------------------------
# extra images
#----------------------------------------------------------------------
#ifeq (, $(wildcard vendor/qcom/build/tasks/generate_extra_images.mk))
#endif

#----------------------------------------------------------------------
# pick up additional files for Tiny Android builds
#----------------------------------------------------------------------
#ifeq ($(BUILD_TINY_ANDROID), true)
#endif
