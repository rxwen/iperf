LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES := $(LOCAL_PATH) \
	external/openssl/include

LOCAL_SRC_FILES := \
	src/cjson.c \
	src/iperf_api.c \
	src/iperf_error.c \
	src/iperf_auth.c \
	src/iperf_client_api.c \
	src/iperf_locale.c \
	src/iperf_server_api.c \
	src/iperf_tcp.c \
	src/iperf_udp.c \
	src/iperf_sctp.c \
	src/iperf_util.c \
	src/iperf_time.c \
	src/dscp.c \
	src/net.c \
	src/tcp_info.c \
	src/timer.c \
	src/units.c \
	src/main.c \

LOCAL_SHARED_LIBRARIES := libssl libcrypto

LOCAL_MODULE := iperf
include $(BUILD_EXECUTABLE)
