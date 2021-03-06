LOCAL_PATH := $(call my-dir)

# ------------------------------------------------------------------------------
#                Make the shared library (libqomx_core)
# ------------------------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -Werror \
                   -g -O0 -Wno-compound-token-split-by-macro

LOCAL_C_INCLUDES := frameworks/native/include/media/openmax \
                    $(LOCAL_PATH)/../qexif

LOCAL_INC_FILES := qomx_core.h \
                   QOMX_JpegExtensions.h

LOCAL_SRC_FILES := qomx_core.c

LOCAL_MODULE           := libqomx_core
LOCAL_LICENSE_KINDS    := SPDX-license-identifier-BSD
LOCAL_LICENSE_CONDITIONS := notice
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SHARED_LIBRARIES := libcutils libdl liblog libutils

LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)
