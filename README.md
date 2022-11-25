# AndroidExecutable
Basic skeleton project to quickly build executables for Android

# Notes

- Make sure `ndk-build` is accessible in the `PATH` environment variable.
    - This is usually found in the path `${HOME}/Android/Sdk/ndk/${NDK_VERSION}/ndk-build`
- Current setup builds for 
    - `Android 10`. (This can be changed by modifying `APP_PLATFORM` in `Application.mk`)
    - `arm & arm64` (Edit the `MakeFile` to add or remove architectures)
- `refersh.sh` is a helper script to build and push binaries to a device connected through `adb`. Refer it for commands to build and clean.
- After running the `make` command a `bin` folder will be created and it will  contain the executable binaries.
- Edit `run.cc` to change the code inside the exeutable.

# References

- https://developer.android.com/ndk/guides/ndk-build

- https://developer.android.com/ndk/guides/android_mk

- https://developer.android.com/ndk/guides/application_mk
 
