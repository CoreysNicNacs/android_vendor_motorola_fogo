LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

define copy-proprietary-files
    $(foreach file,$(shell cat $(LOCAL_PATH)/proprietary-files.txt), \
        $(eval LOCAL_MODULE := $(file)) \
        $(eval LOCAL_MODULE_CLASS := ETC) \
        $(eval LOCAL_SRC_FILES := proprietary/$(file)) \
        $(eval LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)) \
        $(eval include $(BUILD_PREBUILT)))
endef

$(call copy-proprietary-files)
