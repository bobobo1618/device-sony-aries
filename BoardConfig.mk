# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/sony/shinano/BoardConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := D5803

DEVICE_RESOLUTION := 720x1280

# Recovery, ripped from https://github.com/louisrousseau/android_device_motorola_peregrine/blob/android-4.4/BoardConfig.mk
TARGET_RECOVERY_FSTAB := device/sony/shinano/rootdir/fstab.shinano
#TWRP
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := false
#These flags are somewhat deprecated in TWRP 2.5+ but they are still used for a few things.
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

PRODUCT_COPY_FILES += device/sony/aries/twrp.fstab:recovery/root/etc/twrp.fstab
