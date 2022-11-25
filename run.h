#pragma once

#ifndef __RUN_H__
#define __RUN_H__

#include <sys/types.h>
#include <unistd.h>
#include <android/log.h>

#define LOG_TAG "RUN"
#define LOG_ERROR(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
#define LOG_WARN(...)  __android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__)
#define LOG_DEBUG(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define LOG_INFO(...)  __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOG_FATAL(...) __android_log_print(ANDROID_LOG_FATAL, LOG_TAG, __VA_ARGS__)

#undef LOG
#define LOG LOG_FATAL

#define EXPORT __attribute__((visibility("default")))
#define CONSTRUCTOR __attribute__((constructor))
#define DESTRUCTOR __attribute__((destructor))


#endif  // __RUN_H__
