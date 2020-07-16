#line 1 "Tweak.xm"
#define PLIST_PATH @"/var/mobile/Library/Preferences/com.ziegen.messageswappreferences.plist"

inline bool GetPrefBool (NSString *key)
{
	return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

NSString* GetPrefString (NSString *key)
{
	return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] stringValue];
}



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class _UINavigationBarContentView; @class _UINavigationBarLargeTitleView; 
static void (*_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UINavigationBarContentView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, id); 

#line 14 "Tweak.xm"


	static void _logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	if (GetPrefBool(@"isEnabled"))
	{		
		if (GetPrefBool(@"isCustom"))	{
			_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(self, _cmd, GetPrefString(@"displayText"));
		}
		else {
			_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(self, _cmd, @"MessageSwap");
		}
	}
	else {
			_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(self, _cmd, @"Messages");
		}
}





	static void _logos_method$_ungrouped$_UINavigationBarContentView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	if (GetPrefBool(@"isEnabled"))
	{		
		if (GetPrefBool(@"isCustom"))	{
			_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$(self, _cmd, GetPrefString(@"displayText"));
		}
		else {
			_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$(self, _cmd, @"Intel");
		}
	}
	else {
			_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$(self, _cmd, @"Messages");
		}
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UINavigationBarLargeTitleView = objc_getClass("_UINavigationBarLargeTitleView"); MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarLargeTitleView, @selector(setTitle:), (IMP)&_logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$);Class _logos_class$_ungrouped$_UINavigationBarContentView = objc_getClass("_UINavigationBarContentView"); MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarContentView, @selector(setTitle:), (IMP)&_logos_method$_ungrouped$_UINavigationBarContentView$setTitle$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$);} }
#line 50 "Tweak.xm"
