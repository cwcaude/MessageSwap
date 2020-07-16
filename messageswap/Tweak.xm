#define PLIST_PATH @"/var/mobile/Library/Preferences/com.ziegen.messageswappreferences.plist"

inline bool GetPrefBool (NSString *key)
{
	return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

NSString* GetPrefString (NSString *key)
{
	return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] stringValue];
}


%hook _UINavigationBarLargeTitleView

	-(void)setTitle: (id)arg1 {
	if (GetPrefBool(@"isEnabled"))
	{		
		if (GetPrefBool(@"isCustom"))	{
			%orig(GetPrefString(@"displayText"));
		}
		else {
			%orig(@"Intel");
		}
	}
	else {
			%orig(@"Messages");
		}
}

%end

%hook _UINavigationBarContentView

	-(void)setTitle: (id)arg1 {
	if (GetPrefBool(@"isEnabled"))
	{		
		if (GetPrefBool(@"isCustom"))	{
			%orig(GetPrefString(@"displayText"));
		}
		else {
			%orig(@"Intel");
		}
	}
	else {
			%orig(@"Messages");
		}
}
%end
