LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := run-$(TARGET_ARCH)
LOCAL_MODULE_FILENAME := ${LOCAL_MODULE}
LOCAL_SRC_FILES := run.cc
LOCAL_LDFLAGS := -llog
include $(BUILD_EXECUTABLE)