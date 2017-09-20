//
//  TextView.m
//  Popover Menu Test
//
//  Created by Lucas Hauswald on 14.06.17.
//  Copyright © 2017 Lucas Hauswald. All rights reserved.
//

#import "TextView.h"

#import "CustomMenuView.h"

@implementation TextView

- (NSMenu *)menuForEvent:(NSEvent *)event
{
	NSMenu *menu = [super menuForEvent: event];
	
	if (!self.useCustomMenu)
		return menu;
	
	NSMenuItem *menuItem = [[NSMenuItem alloc] initWithTitle:@"Test" action:nil keyEquivalent:@""];
	menuItem.view = [[CustomMenuView alloc] initWithFrame: NSMakeRect(0, 0, 50, 20)];
	
	BOOL shareMenuFound = NO;
	for (NSMenuItem *item in menu.itemArray) {
		if ([item.title isEqual: @"Share"])
			shareMenuFound = YES;
		
		if (shareMenuFound)
			[menu removeItem: item];
	}
	
	[menu insertItem:menuItem atIndex:menu.numberOfItems];
	
	return menu;
}

@end
