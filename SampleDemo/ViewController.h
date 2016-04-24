//
//  ViewController.h
//  SampleDemo
//
//  Created by Mac Dang Huy on 10/22/14.
//  Copyright (c) 2014 Mac Dang Huy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "billView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraitHeightView;
@property (weak, nonatomic) IBOutlet billView *testView;

- (IBAction)showTap:(id)sender;

- (IBAction)resizeView:(id)sender;
@end

