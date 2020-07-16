#line 1 "Tweak.x"
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
persistentDomainForName:@"com.ziegen.messageswappreferences"];

id displayText = [bundleDefaults valueForKey:@"displayText"];
id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];


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

@class _UINavigationBarLargeTitleView; @class _UINavigationBarContentView; 
static void (*_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UINavigationBarContentView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, id); 

#line 7 "Tweak.x"


static void _logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
		if ([isEnabled isEqual:@0])	{
			_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(self, _cmd, arg1);
		}
		else {
			_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(self, _cmd, displayText);
		}
		}





		static void _logos_method$_ungrouped$_UINavigationBarContentView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
		if ([isEnabled isEqual:@0])	{
			_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$(self, _cmd, arg1);
		}
		else {
			_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$(self, _cmd, displayText);
		}
		}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UINavigationBarLargeTitleView = objc_getClass("_UINavigationBarLargeTitleView"); MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarLargeTitleView, @selector(setTitle:), (IMP)&_logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$);Class _logos_class$_ungrouped$_UINavigationBarContentView = objc_getClass("_UINavigationBarContentView"); MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarContentView, @selector(setTitle:), (IMP)&_logos_method$_ungrouped$_UINavigationBarContentView$setTitle$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarContentView$setTitle$);} }
#line 32 "Tweak.x"
