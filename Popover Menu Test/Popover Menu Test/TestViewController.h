//
//  TestViewController.h
//  Popover Menu Test
//
//  Created by Lucas Hauswald on 14.06.17.
//  Copyright © 2017 Lucas Hauswald. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PopoverViewController : NSViewController

+ (instancetype)viewControllerWithCustomViewInMenu:(BOOL)shouldUseCustomView;

@end

