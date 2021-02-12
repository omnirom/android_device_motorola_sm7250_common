# Copyright (C) 2021 The OmniROM Project
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

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from dynamic_common
-include device/motorola/dynamic_common/BoardConfigDynamicCommon.mk

SM7250_PATH := device/motorola/sm7250_common

TARGET_BOOTLOADER_BOARD_NAME := lito
TARGET_BOARD_PLATFORM := lito
TARGET_BOARD_PLATFORM_GPU := qcom-adreno620

TARGET_KERNEL_VERSION := 4.19

TARGET_SPECIFIC_HEADER_PATH := $(SM7250_PATH)/include

TARGET_SYSTEM_PROP += $(SM7250_PATH)/system.prop

PRODUCT_SOONG_NAMESPACES += $(SM7250_PATH)
