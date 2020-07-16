INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MessageSwap

MessageSwap_FILES = Tweak.xm
MessageSwap_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += messageswappreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
