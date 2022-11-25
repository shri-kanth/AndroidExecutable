OUTPUT_BIN_DIR := $(abspath ./bin)
BUILD_DIR := $(abspath ./build)

default: all

.PHONY: all clean

all: build-run-arm build-run-arm64

build-run-arm:
	@echo [+] Building RUN - armeabi-v7a
	@ndk-build -B NDK_PROJECT_PATH=. NDK_APPLICATION_MK=./Application.mk NDK_APP_DST_DIR=$(OUTPUT_BIN_DIR) NDK_APP_OUT=$(BUILD_DIR) APP_BUILD_SCRIPT=./Android.mk APP_ABI=armeabi-v7a
	
build-run-arm64:
	@echo [+] Building RUN - arm64-v8a
	@ndk-build -B NDK_PROJECT_PATH=. NDK_APPLICATION_MK=./Application.mk NDK_APP_DST_DIR=$(OUTPUT_BIN_DIR) NDK_APP_OUT=$(BUILD_DIR) APP_BUILD_SCRIPT=./Android.mk APP_ABI=arm64-v8a

clean:
	@echo Removing build dir: ${BUILD_DIR}
	@rm -rf ${BUILD_DIR}
	@echo Removing bin dir: ${OUTPUT_BIN_DIR}
	@rm -rf ${OUTPUT_BIN_DIR}
