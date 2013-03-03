#
# Copyright (C) 2011 CyanogenMod Project
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

radio_library_libs := rild mock-ril reference-cdma-sms reference-ril

LIBRIL := libril
ifeq ($(TARGET_PROVIDES_LIBRIL),true)
    # A 'true' value assumes it is present in the device's dir,
    # so exclude it here entirely to avoid duplicates
    LIBRIL := ""
else ifneq ($(TARGET_PROVIDES_LIBRIL),)
    # Target provides a full path to its libril
    LIBRIL := $(TARGET_PROVIDES_LIBRIL)
endif

radio_library_libs += $(LIBRIL)

include $(call all-named-subdir-makefiles,$(radio_library_libs))
