LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	bitmath.c \
	bitreader.c \
	cpu.c \
	crc.c \
	fixed.c \
	float.c \
	format.c \
	lpc.c \
	memory.c \
	stream_decoder.c \
	window.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/.. \
	$(LOCAL_PATH)/../include

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DFLAC__NO_MD5 -DFLAC__INTEGER_ONLY_LIBRARY
LOCAL_CFLAGS += -D_REENTRANT -DPIC -DU_COMMON_IMPLEMENTATION -fPIC
LOCAL_CFLAGS += -O3 -funroll-loops -finline-functions

LOCAL_LDLIBS += -lm

LOCAL_ARM_MODE := arm

LOCAL_MODULE := libFLAC

include $(BUILD_SHARED_LIBRARY)
