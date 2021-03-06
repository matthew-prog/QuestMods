#!/bin/bash

NDKPath=`cat ndkpath.txt`

buildScript="$NDKPath/build/ndk-build"

./$buildScript NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk
mkdir BMBFBuild
cp "./bmbfmod.json" "./libs/arm64-v8a/libmappingextensions.so" "./libs/arm64-v8a/libbeatsaber-hook_1_0_9.so" ./BMBFBuild
cd BMBFBuild
zip "../MappingExtensions.zip" *
cd ..
rm -r BMBFBuild