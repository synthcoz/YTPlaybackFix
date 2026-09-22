TARGET := iphone:clang:latest:12.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTPlaybackFix

YTPlaybackFix_FILES = Refresh.xm YouFixPlaybackIssues.xm Settings.xm
YTPlaybackFix_CFLAGS = -fobjc-arc -Wno-unused-function "-I." "-I.." "-I$(THEOS)/include/YouTubeHeader" "-I../../"

include $(THEOS_MAKE_PATH)/tweak.mk
