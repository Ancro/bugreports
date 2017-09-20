//
//  ViewController.m
//  Popover Menu Test
//
//  Created by Lucas Hauswald on 14.06.17.
//  Copyright © 2017 Lucas Hauswald. All rights reserved.
//

#import "ViewController.h"

#import "PopoverViewController.h"
#import "TextView.h"

@implementation ViewController

- (IBAction)showPopoverWithCustomViewInMenu:(NSButton *)sender
{
	PopoverViewController *popoverController = [[PopoverViewController alloc] initWithNibName:NSStringFromClass(PopoverViewController.class) bundle:[NSBundle bundleForClass: PopoverViewController.class]];
	
	NSPopover *popover = [NSPopover new];
	popover.behavior = NSPopoverBehaviorTransient;
	popover.contentViewController = popoverController;
	popover.delegate = self;
	
	[popover showRelativeToRect:sender.bounds ofView:sender preferredEdge:NSRectEdgeMaxY];
	popoverController.textView.useCustomMenu = YES;
	popoverController.textView.string = @"Right-click to get an unusable menu. Try to cut or copy something and the popover will disappear.";
}

- (IBAction)showPopoverWithDefaultMenu:(NSButton *)sender
{
	PopoverViewController *popoverController = [[PopoverViewController alloc] initWithNibName:NSStringFromClass(PopoverViewController.class) bundle:[NSBundle bundleForClass: PopoverViewController.class]];
	
	NSPopover *popover = [NSPopover new];
	popover.behavior = NSPopoverBehaviorTransient;
	popover.contentViewController = popoverController;
	popover.delegate = self;
	
	[popover showRelativeToRect:sender.bounds ofView:sender preferredEdge:NSRectEdgeMaxY];
	popoverController.textView.useCustomMenu = NO;
	popoverController.textView.string = @"Right-click to get a usable menu. Try to cut or copy something and the popover will stay.";
}

@end
