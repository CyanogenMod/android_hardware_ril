RIL_PATH := $(call my-dir)

ifeq ($(RIL_PATH),$(call project-path-for,ril))
include $(call first-makefiles-under,$(RIL_PATH))
endif
