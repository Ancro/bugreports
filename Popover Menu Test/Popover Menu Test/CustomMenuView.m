//
//  CustomMenuView.m
//  Popover Menu Test
//
//  Created by Lucas Hauswald on 14.06.17.
//  Copyright © 2017 Lucas Hauswald. All rights reserved.
//

#import "CustomMenuView.h"

@implementation CustomMenuView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
	[NSColor.redColor setFill];
	[[NSBezierPath bezierPathWithRect: NSMakeRect(dirtyRect.origin.x + 20, dirtyRect.origin.y, dirtyRect.size.width + 20, dirtyRect.size.height)] fill];
}

@end
