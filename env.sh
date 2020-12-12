#!/usr/bin/env bash

export JAVA_HOME='/usr/lib/jvm/java-14-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin/:$PATH

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
