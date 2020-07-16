include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = messageswappreferences

messageswappreferences_FILES = MSPRootListController.m
messageswappreferences_INSTALL_PATH = /Library/PreferenceBundles
messageswappreferences_FRAMEWORKS = UIKit
messageswappreferences_PRIVATE_FRAMEWORKS = Preferences
messageswappreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/messageswappreferences.plist$(ECHO_END)
