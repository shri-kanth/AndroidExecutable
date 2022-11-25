make clean
adb shell rm /data/local/tmp/run*
make
adb push bin/run-arm /data/local/tmp/
adb push bin/run-arm64 /data/local/tmp/
