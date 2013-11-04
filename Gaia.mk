LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := helloworld
LOCAL_GAIA_SHARED_LIBRARIES := libjingle

LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_APPS)

LOCAL_CERTIFICATE := platform

include $(BUILD_GAIA_PACKAGE)

include $(LOCAL_PATH)/src/Gaia.mk

LOCAL_MODULE_TAGS := optional
# This finds and builds the test pkg as well, so a single make does both.
include $(call all-makefiles-under,$(LOCAL_PATH))
