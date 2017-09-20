//
//  ViewController.h
//  Accessibility Focus
//
//  Created by Lucas Hauswald on 25.07.17.
//  Copyright © 2017 Lucas Hauswald. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (nonatomic, strong) IBOutlet NSView *firstView;
@property (nonatomic, strong) IBOutlet NSView *secondView;

@property (nonatomic, strong) IBOutlet NSButton *prevViewButton;
@property (nonatomic, strong) IBOutlet NSButton *nextViewButton;
@property (nonatomic, strong) IBOutlet NSTextField *multilineLabel;

@end

