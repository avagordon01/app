#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S jdk-openjdk

yay -S flutter

sudo groupadd flutterusers
sudo gpasswd -a $USER flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chmod -R g+w /opt/flutter/

yay -S android-sdk android-sdk-build-tools android-sdk-platform-tools android-platform
yay -S android-sdk-cmdline-tools-latest

sudo groupadd android-sdk
sudo gpasswd -a $USER android-sdk
sudo setfacl -R -m g:android-sdk:rwx /opt/android-sdk
sudo setfacl -d -m g:android-sdk:rwX /opt/android-sdk

source env.sh

flutter doctor --android-licenses

sdkmanager --install "system-images;android-29;default;x86"
