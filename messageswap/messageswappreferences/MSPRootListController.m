#include "MSPRootListController.h"

@implementation MSPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)openWebsite{
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://cwcaude.github.io/"]
	options:@{}
	completionHandler:nil];
}

-(void)openDonation{
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://www.paypal.me/ClayCaudell"]
	options:@{}
	completionHandler:nil];
}

-(void)openGithub{
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://github.com/cwcaude/MessageSwap"]
	options:@{}
	completionHandler:nil];
}

@end
