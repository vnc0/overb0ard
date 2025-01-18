TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = jetsamctl
jetsamctl_CFLAGS = -g -Oz -Wall -Wextra -Iinclude
jetsamctl_FILES = main.c
jetsamctl_LDFLAGS = -L$(THEOS)/lib -lobjc
CODESIGN_ENTITLEMENT = entitlements.xml
jetsamctl_CODESIGN_FLAGS = -S$(CODESIGN_ENTITLEMENT)

include $(THEOS_MAKE_PATH)/tool.mk
