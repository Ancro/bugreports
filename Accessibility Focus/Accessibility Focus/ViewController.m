//
//  ViewController.m
//  Accessibility Focus
//
//  Created by Lucas Hauswald on 25.07.17.
//  Copyright © 2017 Lucas Hauswald. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewWillAppear
{
	[super viewWillAppear];
	
	for (NSUInteger index = 0; index < 9; index++) {
		dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(index * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
			if (index % 3 == 0) {
				self.prevViewButton.cell.accessibilityFocused = YES;
				NSLog(@"prevViewButton is focused.");
			}
			else if (index % 3 == 1) {
				self.nextViewButton.cell.accessibilityFocused = YES;
				NSLog(@"nextViewButton is focused.");
			}
			else if (index % 3 == 2) {
				self.multilineLabel.cell.accessibilityFocused = YES;
				NSLog(@"multiLineLabel is focused.");
			}
		});
	}
}

- (IBAction)nextView:(id)sender
{
	self.view = self.secondView;
}

- (IBAction)prevView:(id)sender
{
	self.view = self.firstView;
}

@end
